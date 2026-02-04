# 엑셀 파일에 있는 내용을 읽어서 화면에 출력하는 파이썬 코드를 작성해줘
import pandas as pd

# pip install openpyxl
print(pd.read_excel("around.xlsx"))

# around.xlsx 파일의 5행을 출력하는 문장을 추가하세요
df = pd.read_excel("around.xlsx")
row = df.iloc[4]
print(f"-------------\n{row}")
