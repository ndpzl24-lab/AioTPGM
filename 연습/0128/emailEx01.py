import re

text = """
문의 이메일:
support@example.com
sales@my-site.co.kr
admin123@company.net
invalid-email@com
"""

# 이메일 패턴
pattern = r"[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+"

matches = re.findall(pattern, text)
print(matches)
