#include <stdio.h>
#include <conio.h>

#ifdef __cplusplus
extern "C" {
#endif

int __stdcall CountPositive(short* array, int size);

#ifdef __cplusplus
}
#endif

int main() {
    short array[] = {3, -6, -1, -10};
    int size = sizeof(array) / sizeof(array[0]);
    int count = CountPositive(array, size);
    printf("Total positive numbers: %d\n", count);
    getch();
    return 0;
}