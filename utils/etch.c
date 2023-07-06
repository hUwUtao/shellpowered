#include <stdio.h>

int main(int argc, char *argv[]) {
    char c;
    if (argc < 2)
        return 1;
    char pit = argv[1][0];
    while ((c = getchar()) != EOF) {
      putchar(c);
      if (c == pit)
        break;
    }
    return 0;
}

