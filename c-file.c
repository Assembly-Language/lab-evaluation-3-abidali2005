
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

int __stdcall countPositives(int arr[], int size);

#ifdef __cplusplus
}
#endif


int main() {
    int arr[] = {1, -3, 5, -7, 9, -11, 13};
    int size = sizeof(arr) / sizeof(arr[0]);

    // Call assembly function
    int result = countPositives(arr, size);

    // Display result
    printf("Total number of positive numbers: %d\n", result);
    
  
    
    return 0;
}
