leapYear = int(input("년도 입력하세요:"))

if leapYear % 4 == 0 and leapYear % 100 != 0 or leapYear % 400 == 0: # :조건을 마무리 짖는 기호

    print(f"{leapYear}년은 윤년입니다.")
else:
    print(f"{leapYear}년은 평년입니다.")
    
    
    
    