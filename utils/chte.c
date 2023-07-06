#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc < 2)
      return 1;
    char c, ramp = argv[1][0];
    while ((c = getchar()) != ramp) {
      // enhance your calm
    }
    while ((c = getchar()) != EOF)
      putchar(c);
    return 0;
}
