mylist = [1, 2, 3, 4, 5]
print(mylist[0])
print(mylist[-1])

for i in range(5):
    print(i)
    
for i in range(10):
    print(i)
    
    
#1부터 100까지의 합을 구하는 프로그램 작성
sum = 0

for i in range(101):
    sum += i # sum = sum + i 와 동일
    
print(sum)    

#화면에 1부터 100까지의 수 중 짝수들의 합과 홉수들의 합을 출력하세요.
evenSum = 0
oddSum = 0

for i in range(1,101):
    if i % 2 == 0:
        evenSum += i
    else:
        oddSum += i
        
print("짝수들의 합 : ", evenSum)
print("홀수들의 합 : ", oddSum)        





yes = 0
no = 0

for i in range(1,101):
    if i % 3 == 0:
        yes += 1
    else:
        no += 1

print("3의 배수 개수:", yes)
print("3의 배수가 아닌 수 개수:", no)

yesSum = 0
noSum = 0

for i in range(1,101):
    if i % 3 == 0:
        yesSum += i
    else:
        noSum += i

print("3의 배수 개수의 합:", yesSum)
print("3의 배수가 아닌 수 개수의 합:", noSum)


sum = 0
count = 0

for i in range(1,101):
    if i % 3 == 0:
        count += 1
        sum += i

print(f"1부터 100까지의 수 중에 3의 배수는 {count}개 있습니다")
print(f"1부터 100가지의 수 중에 3의 배수들의 합은 {sum} 입니다.")


#3000을 넘기면 반복문을 종료하는 프로그램 작성
sum = 0

for i in range(1,101):
    sum += i
    if sum > 3000:
        break
    
print("합계:", sum)
    