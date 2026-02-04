import csv

with open('weather.csv', "r", encoding="utf-8") as f:
    data = csv.reader(f)
    header = next(data)

    min_temp = float('inf')   # row[3] 최소값
    max_temp = float('-inf')  # row[4] 최대값

    for row in data:
        temp_min = float(row[3])  # 4번째 열 최소값 기준
        temp_max = float(row[4])  # 5번째 열 최대값 기준

        if temp_min < min_temp:
            min_temp = temp_min

        if temp_max > max_temp:
            max_temp = temp_max

print("최저 기온 (row[3]):", min_temp)
print("최고 기온 (row[4]):", max_temp)



with open('weather.csv', "r", encoding="utf-8") as f:
    data = csv.reader(f)
    header = next(data)
    data_list = list(data)  # 모든 행을 리스트로 저장

min_temp = min(float(row[3]) for row in data_list)
max_temp = max(float(row[4]) for row in data_list)

print("최저 기온:", min_temp)
print("최고 기온:", max_temp)
