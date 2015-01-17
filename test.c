#include <stdio.h>
#include <stdlib.h>
#include "http.h"

void test_http_get(void);

void test_http_get(void)
{
    char url[] = "http://ftp.debian.org/debian/README";
    char *buf;
    int ret;
    ret = http_get(url, &buf);        // Downloads page
    if (ret == -1)
        printf("http_get error\n");
    else
        printf("Get %s\n--- content ---\n%s\n", url, buf);

    free(buf);
}

int main(int argc, char *argv[])
{
    test_http_get();
    return 0;
}
