import os

fileName = input("파일이름 : ")
keyWord = input("문자열 : ")

if not os.path.isfile(fileName):
    print(f"-----------------\n{fileName} 파일이 없습니다.")
else:
    found = False
    with open(fileName, "r", encoding="utf-8") as f:
        for line in f:
            if keyWord in line:
                print(f"-----------------\n{fileName} : {line.strip()}")
                found = True

    if not found:
        print(f"-----------------\n{fileName} : 해당 문자열 없음")
