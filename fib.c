#include <stdio.h>
#include <stdlib.h>

/*
 * 打印斐波那契数列的前 n 项（默认 20 项）。
 * 用法: ./fib [n]
 */
int main(int argc, char **argv)
{
    int n = 20;
    int i;
    unsigned long long a = 0;
    unsigned long long b = 1;

    if (argc > 1)
        n = atoi(argv[1]);
    if (n < 0)
        n = 0;

    for (i = 0; i < n; i++) {
        unsigned long long next = a + b;
        printf("%llu%s", a, (i + 1 < n) ? " " : "");
        a = b;
        b = next;
    }
    printf("\n");

    return 0;
}