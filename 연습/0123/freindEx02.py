# 친구 리스트
friends = []

# 메뉴 출력 함수
def print_menu():
    print("--------------------")
    print("1. 친구 리스트 출력")
    print("2. 친구 추가")
    print("3. 친구 삭제")
    print("4. 이름 변경")
    print("9. 종료")

# 친구 리스트 출력
def show_friends():
    if friends:
        print("친구 목록:", friends)
    else:
        print("친구가 없습니다.")

# 친구 추가
def add_friend():
    name = input("추가할 이름을 입력하세요: ")
    friends.append(name)
    print(f"{name}님이 추가되었습니다.")

# 친구 삭제
def delete_friend():
    name = input("삭제할 이름을 입력하세요: ")
    if name in friends:
        friends.remove(name)
        print(f"{name}님이 삭제되었습니다.")
    else:
        print("이름이 발견되지 않았습니다.")

# 이름 변경
def rename_friend():
    old_name = input("변경할 이름을 입력하세요: ")
    if old_name in friends:
        new_name = input("새 이름을 입력하세요: ")
        index = friends.index(old_name)
        friends[index] = new_name
        print(f"{old_name} → {new_name} 변경 완료")
    else:
        print("이름이 발견되지 않았습니다.")

# 메인 반복문
def main():
    while True:
        print_menu()
        try:
            menu = int(input("메뉴를 선택하세요: "))
        except ValueError:
            print("숫자를 입력해주세요!")
            continue

        if menu == 1:
            show_friends()
        elif menu == 2:
            add_friend()
        elif menu == 3:
            delete_friend()
        elif menu == 4:
            rename_friend()
        elif menu == 9:
            print("프로그램을 종료합니다.")
            break
        else:
            print("잘못된 메뉴입니다.")

# 실행
main()