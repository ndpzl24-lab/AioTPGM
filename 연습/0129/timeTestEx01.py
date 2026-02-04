from datetime import datetime

# 현재 시간 출력
now = datetime.now()
print(now)

# 더 보기 좋은 형식으로 출력
print(now.strftime("%Y-%m-%d %H:%M"))

# 더 보기 좋은 형식으로 출력
print(now.strftime("%Y년%m월%d일 %H시%M분%S초"))

time1 = now.strftime("%Y년%m월%d일 %H시%M분%S초")
print(time1)