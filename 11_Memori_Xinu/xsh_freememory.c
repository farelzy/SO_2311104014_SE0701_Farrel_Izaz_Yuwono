/* xsh_freememory.c - xsh_freememory */

#include <xinu.h>
#include <stdio.h>
#include <string.h>

shellcmd xsh_freememory(int nargs, char *args[]) {
    struct memblk *block;
    uint32 total_free = 0;

    if (nargs == 2 && strncmp(args[1], "--help", 7) == 0) {
        printf("Use: %s\n\n", args[0]);
        printf("Description:\n");
        printf("\tDisplays free memory blocks and total free space\n");
        printf("Options:\n");
        printf("\t--help\t display this help and exit\n");
        return OK;
    }

    if (nargs > 1) {
        fprintf(stderr, "%s: too many arguments\n", args[0]);
        return SYSERR;
    }

    printf("Free List:\n");
    printf("Block address   Length (dec)   Length (hex)\n");
    printf("-------------   ------------   ------------\n");

    for (block = memlist.mnext; block != NULL; block = block->mnext) {
        printf("  0x%08x      %10d     0x%08x\n", (uint32)block, block->mlength, block->mlength);
        total_free += block->mlength;
    }

    printf("Total FreeSpace  %d\n", total_free);

    return OK;
}
