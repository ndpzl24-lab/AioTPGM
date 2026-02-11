#include <stdio.h>

int main() {
    int i;
    int n = 4; // 출력 개수 예시 (대한민국 3번 + 만세 1번) 2세트
    
    for (i = 1; i <= n; i++) {
        if (i % 4 != 0) {  // 4번째마다 "만세"
            printf("대한민국\n");
        } else {
            printf("만세\n");
        }
    }
    
    return 0;
}
