while True:
    try:
        numerator = int(input("분자 입력 : "))
        denominator = int(input("분모 입력 : "))

        quotient = numerator // denominator
        remainder = numerator % denominator

        print(f'{numerator}/{denominator} = {numerator/denominator}')
        print(f'몫 = {quotient}, 나머지 = {remainder}')
        break

    except ValueError:
        print("❌ 숫자만 입력하세요. 다시 입력하세요.")

    except ZeroDivisionError:
        print("❌ 분모는 0이 될 수 없습니다. 다시 입력하세요.")

    except Exception as e:
        print("❌ 알 수 없는 오류 발생:", e)