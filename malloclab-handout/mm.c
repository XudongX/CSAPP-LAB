/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 *
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"
#include "mm.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "Xudong's team",
    /* First member's full name */
    "Xudong Sun",
    /* First member's email address */
    "xudong714@gmail.com",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT - 1)) & ~0x7)

#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define WSIZE 4
#define DSIZE 8
#define CHUNKSIZE (1 << 12)

#define MAX(x, y) ((x) > (y) ? (x) : (y))

#define PACK(size, alloc) ((size) | (alloc))

#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

#define HDRP(bp) ((char *)(bp)-WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

#define PREV_LINKNODE_RP(bp) ((char *)(bp))
#define NEXT_LINKNODE_RP(bp) ((char *)(bp) + WSIZE)

#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE(((char *)(bp)-DSIZE)))

static void *extend_heap(size_t dwords);
static void *coalesce(void *bp);
static void *find_fit(size_t size);
static void place(void *bp, size_t asize);
void insert_to_Emptylist(char *p);
void fix_linklist(char *p);
static void printfreelist();
static void printblock(void *bp);
static void checkblock(void *bp);

static char *heap_listp = NULL;
static char *root = NULL;  // 显示空闲链表的根节点

/*
 * mm_init - initialize the malloc package.
 * The return value should be -1 if there was a problem in performing the
 * initialization, 0 otherwise
 */
int mm_init(void) {
  if ((heap_listp = mem_sbrk(6 * WSIZE)) == (void *)-1) return -1;

  PUT(heap_listp, 0);                             // 堆头padding
  PUT(heap_listp + (1 * WSIZE), 0);
  PUT(heap_listp + (2 * WSIZE), 0);
  PUT(heap_listp + (3 * WSIZE), PACK(DSIZE, 1));
  PUT(heap_listp + (4 * WSIZE), PACK(DSIZE, 1));
  PUT(heap_listp + (5 * WSIZE), PACK(0, 1));      // 结尾块header
  root = heap_listp + (1 * WSIZE);

  heap_listp += (4 * WSIZE);

  if ((extend_heap(2 * DSIZE / WSIZE)) == NULL)
    return -1;  // 扩大了初始堆大小 增加了1分...

  return 0;
}

static void *extend_heap(size_t dwords) {
  char *bp;
  size_t size;

  size = (dwords % 2) ? (dwords + 1) * DSIZE : dwords * DSIZE;

  if ((bp = mem_sbrk(size)) == (void *)-1) return NULL;

  PUT(HDRP(bp), PACK(size, 0));
  PUT(FTRP(bp), PACK(size, 0));

  // 初始化前后空闲块指针
  PUT(NEXT_LINKNODE_RP(bp), 0);
  PUT(PREV_LINKNODE_RP(bp), 0);

  PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

  return coalesce(bp);
}

/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
  size_t asize;
  size_t extendsize;
  char *bp;
  if (size == 0) return NULL;

  if (size <= DSIZE) {
    // 调整size对齐
    asize = 2 * (DSIZE);
  } else {
    asize = (DSIZE) * ((size + (DSIZE) + (DSIZE - 1)) / (DSIZE));
  }

  if ((bp = find_fit(asize)) != NULL) {
    place(bp, asize);
    return bp;
  }

  // 扩展堆
  extendsize = MAX(asize, CHUNKSIZE);
  if ((bp = extend_heap(extendsize / DSIZE)) == NULL) {
    return NULL;
  }
  place(bp, asize);

  return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *bp) {
  if (bp == 0) return;

  size_t size = GET_SIZE(HDRP(bp));

  PUT(HDRP(bp), PACK(size, 0));
  PUT(FTRP(bp), PACK(size, 0));
  // 清空前后空闲块指针
  PUT(NEXT_LINKNODE_RP(bp), 0);
  PUT(PREV_LINKNODE_RP(bp), 0);
  coalesce(bp);  // 合并
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size) {
  size_t oldsize;
  void *newptr;

  // size==0 是free的语义 返回NULL
  if (size == 0) {
    mm_free(ptr);
    return NULL;
  }

  // ptr == null 是malloc语义
  if (ptr == NULL) {
    return mm_malloc(size);
  }

  // 重新分配空间
  newptr = mm_malloc(size);
  if (!newptr) {
    return 0;
  }
  // 复制数据
  oldsize = GET_SIZE(HDRP(ptr));
  if (size < oldsize) oldsize = size;
  memcpy(newptr, ptr, oldsize);
  // free旧块
  mm_free(ptr);

  return newptr;
}

static void *coalesce(void *bp) {
  size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
  size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
  size_t size = GET_SIZE(HDRP(bp));

  if (prev_alloc && next_alloc) {
    // case1 前面的块和后面的块都是已分配的
  } else if (prev_alloc && !next_alloc) {
    // case2 前面的块是已分配的 后面的块是空闲的
    size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
    fix_linklist(NEXT_BLKP(bp));  //从空闲列表中移除
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
  } else if (!prev_alloc && next_alloc) {
    // case3 前面的块是空闲的 后面的快是已分配的
    size += GET_SIZE(HDRP(PREV_BLKP(bp)));
    fix_linklist(PREV_BLKP(bp));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
    bp = PREV_BLKP(bp);
  } else {
    // case4 前后都是空闲的
    size += GET_SIZE(FTRP(NEXT_BLKP(bp))) + GET_SIZE(HDRP(PREV_BLKP(bp)));
    fix_linklist(PREV_BLKP(bp));
    fix_linklist(NEXT_BLKP(bp));
    PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
    PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
    bp = PREV_BLKP(bp);
  }

  insert_to_Emptylist(bp);  // 新的合并块加入空闲链表
  return bp;
}

inline void insert_to_Emptylist(char *p) {
  // linklist LIFO
  char *nextp = GET(root);
  if (nextp != NULL) PUT(PREV_LINKNODE_RP(nextp), p);

  PUT(NEXT_LINKNODE_RP(p), nextp);
  //    PUT(PREV_LINKNODE_RP(p),root);
  PUT(root, p);
}

inline void fix_linklist(char *p) {
  // 从空闲列表中移除p指向的空闲block
  char *prevp = GET(PREV_LINKNODE_RP(p));
  char *nextp = GET(NEXT_LINKNODE_RP(p));
  if (prevp == NULL) {
    if (nextp != NULL) PUT(PREV_LINKNODE_RP(nextp), 0);
    PUT(root, nextp);
  } else {
    if (nextp != NULL) PUT(PREV_LINKNODE_RP(nextp), prevp);
    PUT(NEXT_LINKNODE_RP(prevp), nextp);
  }
  PUT(NEXT_LINKNODE_RP(p), 0);
  PUT(PREV_LINKNODE_RP(p), 0);
}
static void *find_fit(size_t size) {
  //首项合适算法
  char *tmpP = (char *)GET(root);
  while (tmpP != NULL) {
    if (GET_SIZE(HDRP(tmpP)) >= size) return tmpP;
    tmpP = (char *)GET(NEXT_LINKNODE_RP(tmpP));
  }
  return NULL;
}

static void place(void *bp, size_t asize) {
  size_t csize = GET_SIZE(HDRP(bp));
  fix_linklist(bp);  // 从空闲链表中移除当前块
  if ((csize - asize) >= (2 * DSIZE)) {
    PUT(HDRP(bp), PACK(asize, 1));
    PUT(FTRP(bp), PACK(asize, 1));
    bp = NEXT_BLKP(bp);

    PUT(HDRP(bp), PACK(csize - asize, 0));
    PUT(FTRP(bp), PACK(csize - asize, 0));
    PUT(NEXT_LINKNODE_RP(bp), 0);
    PUT(PREV_LINKNODE_RP(bp), 0);
    coalesce(bp);
  } else {
    PUT(HDRP(bp), PACK(csize, 1));
    PUT(FTRP(bp), PACK(csize, 1));
  }
}

static void printblock(void *bp) {
  size_t hsize, halloc, fsize, falloc;
  long next, prev;

  hsize = GET_SIZE(HDRP(bp));
  halloc = GET_ALLOC(HDRP(bp));
  fsize = GET_SIZE(FTRP(bp));
  falloc = GET_ALLOC(FTRP(bp));

  if (hsize == 0) {
    printf("%p: EOL\n", bp);
    return;
  }

  if (!halloc || bp == heap_listp) {
    next = *PREV_LINKNODE_RP(bp);
    prev = *PREV_LINKNODE_RP(bp);
    printf(">> %p: header: [%d:%c] next: %lx prev: %lx footer: [%d:%c] <<\n", bp,
           (int)hsize, (halloc ? 'a' : 'f'), next, prev, (int)fsize,
           (falloc ? 'a' : 'f'));
  } else {
    printf(">> %p: header: [%d:%c] footer: [%d:%c]\n <<", bp, (int)hsize,
           (halloc ? 'a' : 'f'), (int)fsize, (falloc ? 'a' : 'f'));
  }
}

static void printfreelist() {
  printf("\n=====\nFree list: ");
  char *bp = heap_listp;
  for (bp = heap_listp; bp != NULL; bp = (char *)*NEXT_LINKNODE_RP(bp)) {
    printf(" %lx -> ", (long)bp);
  }
  printf("END\n=====\n\n");
}

static void checkblock(void *bp) {
  if ((size_t)bp % 8) printf("Error: %p is not doubleword aligned\n", bp);
  if (GET(HDRP(bp)) != GET(FTRP(bp)))
    printf("Error: header does not match footer\n");
}
