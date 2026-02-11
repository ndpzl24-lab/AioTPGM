#include <iostream>
using namespace std;

int main() {
    int repeat = 1;           // 구구단 반복 횟수
    int times = 3;            // 3번 반복

    while (repeat <= times) {     // 3번 반복
        cout << "=== " << repeat << "번째 구구단 ===\n\n";

        int i = 1;                // 단 초기화
        while (i <= 9) {          // 1단~9단 반복
            printf("---- %d단 ----\n", i);
            int j = 1;            // 곱 초기화
            while (j <= 9) {      // 1~9까지 곱하기
                cout << i << " x " << j << " = " << i * j << endl;
                j++;              // j 증가
            }
            cout << endl;         // 단 끝에 줄바꿈
            i++;                  // i 증가
        }

        repeat++;                 // 반복 횟수 증가
    }

    return 0;
}
