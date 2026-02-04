import pandas as pd

dataS= ['Kim', 'Park', 'Lee', 'Choi']
ser = pd.Series(dataS)

print(ser)


dataA = {'Name':['Kim', 'Park', 'Lee', 'Choi'],
        'Age':[20, 23, 21, 26]}
df = pd.DataFrame(dataA, index=["학번 1", "학번 2", "학번 3", "학번 4"])
print(df)

df.to_excel('dataFrame.xlsx', sheet_name='studInfo', index=False)