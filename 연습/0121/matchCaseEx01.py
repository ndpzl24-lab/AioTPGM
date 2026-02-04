score = int(input("점수 입력:"))

match score//10:
    case 10:
        print("A학점 입니다.")
    case 9:
        print("A학점 입니다.")
    case 8:
        print("B학점 입니다.")
    case 7:
        print("C학점 입니다.")
    case 6:
        print("D학점 입니다.")
    case _:   # 그외 모든 경우   
        print("F학점 입니다.")
    