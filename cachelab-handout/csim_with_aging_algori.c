// #include <ctype.h>
// #include <getopt.h>
// #include <stdio.h>
// #include <stdlib.h>
// #include <unistd.h>
// #include "cachelab.h"

// #define TIME_STAMP_INIT (0x1 << (sizeof(unsigned int) * 8 - 1))

// typedef struct {
//   int valid;
//   int tag;
//   unsigned int time_stamp;
// } cache_line;

// typedef struct {
//   char type;
//   long unsigned address;
//   int size;
// } trace_line;

// typedef struct {
//   int d_flag;
//   int v_flag;
//   int h_flag;
//   int s;
//   int E;
//   int b;
//   char *t;
// } args_list;

// typedef struct {
//   unsigned int num_hits;
//   unsigned int num_misses;
//   unsigned int num_evictions;
// } info_count;

// cache_line ***init_cache(args_list *);
// void free_cache(cache_line ***, args_list *);
// void preprocess(cache_line ***, args_list *);
// void simulate(cache_line ***, trace_line *, args_list *, info_count *);
// void print_usage();

// int main(int argc, char **argv) {
//   args_list args;

//   char c;
//   while ((c = getopt(argc, argv, "dhvs:E:b:t:")) != -1) {
//     switch (c) {
//       case 'h':
//         printf("---HELP---\n");
//         print_usage();
//         return 0;
//       case 'd':
//         args.d_flag = 1;
//         break;
//       case 'v':
//         args.v_flag = 1;
//         break;
//       case 's':
//         args.s = *optarg - 48;
//         break;
//       case 'E':
//         args.E = *optarg - 48;
//         break;
//       case 'b':
//         args.b = *optarg - 48;
//         break;
//       case 't':
//         args.t = optarg;
//         break;
//     }
//   }
//   if (args.s <= 0 || args.E <= 0 || args.b <= 0 || args.t == NULL) {
//     printf("%s: Missing required command line argument\n", argv[0]);
//     print_usage();
//     abort();
//   }
//   if (args.d_flag) {
//     printf("\n===============================\n");
//     printf("--- main ---\n");
//     printf("We got argument: -s %d -E %d -b %d -t %s \n", args.s, args.E,
//            args.b, args.t);
//     printf("S=2^%d \tis the number of sets\n", args.s);
//     printf("E=%d \tis the number of line per set\n", args.E);
//     printf("B=2^%d \tis the block size\n", args.b);
//     printf("%s \tis the valgrind trace file\n", args.t);
//     printf("===============================\n");
//   }

//   cache_line ***cache = init_cache(&args);

//   preprocess(cache, &args);
//   free_cache(cache, &args);
//   cache = NULL;

//   return 0;
// }

// cache_line ***init_cache(args_list *args) {
//   int S = 1 << (args->s);
//   if (args->d_flag) {
//     printf("\n===============================\n");
//     printf("--- init_cache --- \n");
//     printf("We got Set Numbers: %d\n", S);
//     printf("Each Set have %d line\n", args->E);
//     printf("So, we init an array: cache[%d][%d]\n", S, args->E);
//     printf("===============================\n");
//   }
//   cache_line ***cache = (cache_line ***)malloc(S * sizeof(cache_line **));
//   for (int i = 0; i < S; i++) {
//     cache_line **set = (cache_line **)malloc((args->E) * sizeof(cache_line *));
//     for (int i = 0; i < (args->E); i++) {
//       cache_line *line = (cache_line *)malloc(sizeof(cache_line));
//       line->tag = 0;
//       line->valid = 0;
//       line->time_stamp = 0;
//       set[i] = line;
//     }
//     cache[i] = set;
//   }
//   return cache;
// }

// void free_cache(cache_line ***cache, args_list *args) {
//   int S = 1 << (args->s);
//   for (int i = 0; i < S; i++) {
//     for (int j = 0; j < args->E; j++) {
//       free(cache[i][j]);
//       cache[i][j] = NULL;
//     }
//     free(cache[i]);
//     cache[i] = NULL;
//   }
//   free(cache);
// }

// void preprocess(cache_line ***cache, args_list *args) {
//   FILE *fp = NULL;
//   fp = fopen(args->t, "r");
//   if (fp == NULL) {
//     printf("[ !!! Open File Failure !!! ]\n");
//     exit(1);
//   }
//   trace_line t_line = {0, 0, 0};
//   info_count info = {0, 0, 0};
//   while (fscanf(fp, " %c %lx,%d", &t_line.type, &t_line.address,
//                 &t_line.size) != EOF) {
//     if (args->d_flag) {
//       printf("\n===============================\n");
//       printf("--- preprocess --- \n");
//       printf("We read a line from input file, and got:\n");
//       printf("type: %c, address: %lx, size: %d\n", t_line.type, t_line.address,
//              t_line.size);
//       printf("-------------------------------\n");
//     }

//     if (t_line.type == 'L' || t_line.type == 'S')
//       simulate(cache, &t_line, args, &info);
//     else if (t_line.type == 'M') {
//       trace_line t_line_L = {'L', t_line.address, t_line.size};
//       trace_line t_line_S = {'S', t_line.address, t_line.size};
//       simulate(cache, &t_line_L, args, &info);
//       simulate(cache, &t_line_S, args, &info);
//     } else if (t_line.type == 'I') {
//       continue;
//     } else {
//       printf("[MISMATCHING] type: %c, address: %lx, size: %d\n", t_line.type,
//              t_line.address, t_line.size);
//     }
//     t_line.address = -1;
//     t_line.size = -1;
//     t_line.type = -1;
//   }
  
//   if (args->v_flag) {
//     printf("hits:%d, misses:%d, evictions:%d\n", info.num_hits, info.num_misses,
//            info.num_evictions);
//   }
//   if (args->d_flag) {
//     printf("--- printSummary ---\n");
//     printf("hit:\t%d\n", info.num_hits);
//     printf("miss:\t%d\n", info.num_misses);
//     printf("evict:\t%d\n", info.num_evictions);
//     printf("===============================\n");
//   }
//   fclose(fp);

//   printSummary(info.num_hits,info.num_misses,info.num_evictions);
// }

// void simulate(cache_line ***cache, trace_line *t_line, args_list *args,
//               info_count *info) {
//   long unsigned address = t_line->address;
//   // int tag_size = (sizeof(int *) * 8 - (args->b + args->s));

//   unsigned int tag = address >> (args->s + args->b);
//   unsigned int set_index = (address >> args->b) & ~(-1lu << args->s);
//   unsigned int block_offset = address & ~(-1lu << args->b);

//   if (args->d_flag) {
//     printf("--- simulate ---\n");
//     printf("We got Tag: %x, Set Index: %x, Block Offset: %x\n", tag, set_index,
//            block_offset);
//   }

//   // 每次访问都要老化所有line的time_stamp
//   int S = 1 << (args->s);
//   for (int i = 0; i < S; i++) {
//     for (int j = 0; j < args->E; j++) {
//       cache[i][j]->time_stamp >>= 1;
//     }
//   }

//   cache_line **set =
//       cache[set_index];  //当address确定后 以后的操作都对这一确定的set进行
//   int hit_flag = 0;
//   int eviction_flag = 1;

//   for (int i = 0; i < args->E; i++) {
//     // 在set中寻找有没有可以hit的line 改变相应计数器 改变hit_flag
//     if ((set[i]->tag == tag) && (set[i]->valid == 1)) {
//       hit_flag = 1;       // hit
//       eviction_flag = 0;  // 不需要eviction

//       // hit代表访问成功 需要将MSB置为1
//       set[i]->time_stamp &= TIME_STAMP_INIT;

//       (info->num_hits)++;
//       break;
//     }
//   }

//   if (!hit_flag) {  // 没有hit则尝试放入cache
//     info->num_misses++;
//     for (int i = 0; i < args->E; i++) {
//       // 尝试将block放入line中
//       if (set[i]->valid == 0) {
//         set[i]->valid = 1;
//         set[i]->tag = tag;
//         set[i]->time_stamp = TIME_STAMP_INIT;
//         eviction_flag = 0;  // 不再需要eviction
//         break;
//       }
//     }

//     if (eviction_flag) {
//       //没有成功放入则进行line eviction
//       (info->num_evictions)++;
//       unsigned int min_line_time = -1u;
//       int min_line_index = -1;
//       for (int i = 0; i < args->E; i++) {
//         if ((set[i]->time_stamp) < (min_line_time)) {
//           min_line_time = set[i]->time_stamp;
//           min_line_index = i;
//         }
//       }
//       set[min_line_index]->valid = 1;
//       set[min_line_index]->time_stamp = TIME_STAMP_INIT;
//       set[min_line_index]->tag = tag;
//     }
//   }

//   if (args->d_flag) {
//     if (hit_flag)
//       printf("[HIT] ");
//     else
//       printf("[MISS] ");
//     if (eviction_flag) printf(" [Evication]");
//     printf("\n===============================\n");
//   }

//   if (args->v_flag) {
//     printf("%c %lx,%d ", t_line->type, t_line->address, t_line->size);
//     if (hit_flag)
//       printf("hit");
//     else
//       printf("miss");
//     if (eviction_flag) printf(" eviction");
//     printf("\n");
//   }
// }

// void print_usage() {
//   printf(
//       "Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n"
//       "Options:\n"
//       "  -h         Print this help message.\n"
//       "  -v         Optional verbose flag.\n"
//       "  -s <num>   Number of set index bits.\n"
//       "  -E <num>   Number of lines per set.\n"
//       "  -b <num>   Number of block offset bits.\n"
//       "  -t <file>  Trace file.\n"
//       "\n"
//       "Examples:\n"
//       "  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n"
//       "  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
// }