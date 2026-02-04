import pandas as pd

titanic = pd.read_csv('titanic.csv')
print(titanic)
print(titanic.head(10))
print(titanic.loc[10:20])
print(titanic["age"])
print(titanic["age"].mean().round(2))
print(titanic["age"].max())

ages = titanic["age"]
ages.head()
print(ages)

titanic1 = titanic[["age", "sex"]]
print(titanic1)

below_20 = titanic[titanic["age"] < 20]
below_20.head()
print(below_20)

titanic_1_2 = titanic[titanic["pclass"].isin([1,2])]
print(titanic_1_2)

titanic.iloc[20:23, 5:7]
print(titanic.iloc[20:23, 5:7])

sorted_titanic = titanic.sort_values(by="age").head()
print(sorted_titanic)