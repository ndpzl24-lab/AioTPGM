# # 단계가 추가될수록 *의 개수가 1, 2, 3, ..., n단계까지 출력하는 프로그램 작성

# n = int(input("단 입력 : "))
# for step in range(1, n + 1):
#     print("*" * step)
    
    
# # 단계가 추가될수록 *의 개수가 1, 2, 3, ..., n단계까지 반대모양으로 출력하는 프로그램 작성
# n = int(input("단 입력 : "))
# for step in range(1, n + 1):
#     print(" " * (n - step) + "*" * step)
    
    
# #마름모꼴 모양 출력하기
# n = int(input("단 입력 : "))
        
# for step in range(1, n + 1):
#     print(" " * (n - step) + "*" * (2 * step - 1))

# for step in range(n - 1, 0, -1):
#     print(" " * (n - step) + "*" * (2 * step - 1))


# for step in range(1, 10):
#     for space in range(9 - step):
#         print(" ", end="")
#     for star in range(2 * step - 1):
#         print("*", end="")
#     print()


#직각삼각형 만들기

# for step in range(1, 6 + 1):
#     print("*" * step)
    
    
# for y in range(1, 6) :
#     for x in range(y) :
#         print("*", end="" )
#     print("")    
    
#자율주행 자동차 프로그램 작성
# speed = int(input("현재 속도 입력 : "))
# if speed > 100 :
#     print("과속입니다. 속도를 줄이세요.")
# else :
#     print("정상 속도입니다.")


#사물 인식 프로그램 작성
object = input("사물 입력 : ")
if object == "사람" or object == "자동차" or object == "자전거" :
    print(f"{object}이(가) 인식되었습니다.")
else :
    print("사물이 인식되지 않았습니다.")
        