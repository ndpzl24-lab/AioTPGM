import re

pattern = r"^01[016789]-\d{3,4}-\d{4}$"


phones = [
    "010-1234-1234",
    "011-234-1242",
    "019-9999-9999",
    "01012341234",
    "02-123-4567"
]

for p in phones:
    if re.match(pattern, p):
        print(p, "→ 올바른 번호")
    else:
        print(p, "→ 올바르지 않는 번호")    