#include <stdio.h>
#include "hello.h"
#include "math/math.h"


int main(){
    printf("Hello World! Mahdi \n");
    sayhello();

    int sum = sumNum(2, 3);
    printf("%d", sum);
    return 0;
} 