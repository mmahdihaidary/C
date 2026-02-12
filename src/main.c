#include <stdio.h>
#include "../lib/hello.h"
#include "../lib/math/math.h"


int main(){
    printf("Hello World! Mahdi \n");
    sayhello();

    int sum = sumNum(2, 3);
    printf("%d", sum);
    return 0;
} 