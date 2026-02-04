## 피보나치 수열 재귀함수 예제

def fibonacci(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2)


number = fibonacci(10)
print(number)