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

#define ALIGN(size) (((size) + (ALIGNMENT - 1)) & ~0x7)

#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define SIZE_PTR(p) ((size_t *)(((char *)(p)) - SIZE_T_SIZE))

static char *heap_listp = 0;

static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);


/* 基本常量 */
#define WSIZE 4             /* 单字大小 (bytes) */
#define DSIZE 8             /* 双字大小 (bytes) */
#define CHUNKSIZE (1 << 12) /* 最小的堆大小 (bytes) */
#define OVERHEAD 8          /* header和footer需要的额外大小 (bytes)*/

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* 将block的大小size和是否分配的标志位alloc打包为一个字 */
#define PACK(size, alloc) ((size) | (alloc))

/* 从指针p上读写一个字 */
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

#define PUT_ADDR(p, val) (*(long *)(p) = (long)(val))
#define MIN_BLKSIZE 24

/* 从指针p上获得分配信息 size和alloc标志位 */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* 通过一个block的指针bp, 得到它的头和尾地址 */
#define HDRP(bp) ((char *)(bp)-WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* 通过一个block的指针bp，得到它的上一个和下一个block的地址 */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE(((char *)(bp)-DSIZE)))

/*
 * mm_init - initialize the malloc package.
 */
int mm_init(void) {
  if ((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1) return -1;
  PUT(heap_listp, 0);                           // 对齐填充
  PUT(heap_listp + WSIZE, PACK(OVERHEAD, 1));   //序言块header
  PUT(heap_listp + DSIZE, PACK(OVERHEAD, 1));   //序言块footer
  PUT(heap_listp + WSIZE + DSIZE, PACK(0, 1));  //堆的结尾块
  heap_listp += DSIZE;

  if (extend_heap(CHUNKSIZE / WSIZE) == NULL) return -1;
  return 0;
}

/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
  size_t asize;  // 调整后要分配的块大小
  size_t extendsize; // 如果需要 扩展的堆大小
  char *bp;

  // if (heap_listp == 0) mm_init();

  if (size <= 0) return NULL;

  // if (size <= DSIZE)
  //   asize = 2 * DSIZE;
  // else
  //   asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
  
  asize = ALIGN(size + SIZE_T_SIZE); // 使用宏来扩展size达到对齐目的

  if ((bp = find_fit(asize)) != NULL) {
    place(bp, asize);
    return bp; // malloc success
  }

  //Not fit
  extendsize = MAX(asize, CHUNKSIZE);
  if ((bp = extend_heap(extendsize / WSIZE)) == NULL) return NULL;
  place(bp, asize);
  return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr) {
  if (ptr == 0) return;
  size_t size = GET_SIZE(HDRP(ptr));

  // if (heap_listp == 0) mm_init();

  PUT(HDRP(ptr), PACK(size, 0));
  PUT(FTRP(ptr), PACK(size, 0));
  coalesce(ptr);
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

static void *extend_heap(size_t words) {
  void *bp;
  size_t size;

  // 确保扩展了偶数字的堆空间
  size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
  if ((long)(bp = mem_sbrk(size)) == -1) return NULL;

  // 初始化扩展的堆空间 - 即添加
  PUT(HDRP(bp), PACK(size, 0));          //空闲块的header
  PUT(FTRP(bp), PACK(size, 0));          //空闲快的footer
  PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));  //结尾块的header

  // 合并可能出现的空闲块
  return coalesce(bp);
}

static void *coalesce(void *bp) {
  size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
  size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
  size_t size = GET_SIZE(HDRP(bp));

  if (prev_alloc && next_alloc) {  // case1 前面的块和后面的块都是已分配的
    return bp;
  }

  else if (prev_alloc &&
           !next_alloc) {  // case2 前面的块是已分配的 后面的块是空闲的
    size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    return (bp);
  }

  else if (!prev_alloc &&
           next_alloc) {  // case3 前面的块是空闲的 后面的快是已分配的
    size += GET_SIZE(HDRP(PREV_BLKP(bp)));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
    return (PREV_BLKP(bp));
  }

  else {  // case4 前后都是空闲的
    size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp)));
    PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
    PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
    return (PREV_BLKP(bp));
  }
}

/*
 * place - Place block of asize bytes at start of free block bp
 *         and split if remainder would be at least minimum block size
 */
static void place(void *bp, size_t asize) {
  size_t csize = GET_SIZE(HDRP(bp));

  if ((csize - asize) >= (DSIZE + DSIZE)) {
    PUT(HDRP(bp), PACK(asize, 1));
    PUT(FTRP(bp), PACK(asize, 1));
    bp = NEXT_BLKP(bp);
    PUT(HDRP(bp), PACK(csize - asize, 0));
    PUT(FTRP(bp), PACK(csize - asize, 0));
  } else {
    PUT(HDRP(bp), PACK(csize, 1));
    PUT(FTRP(bp), PACK(csize, 1));
  }
}

/*
 * find_fit - Find a fit for a block with asize bytes
 */
static void *find_fit(size_t asize) {
  void *bp;

  // 首项合适搜索
  for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
    if (!GET_ALLOC(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))) {
      return bp;
    }
  }

  return NULL;
}
