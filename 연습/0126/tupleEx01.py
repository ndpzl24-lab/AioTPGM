def mulReturn():
    return 1,2

x,y = mulReturn()
print(f"x = {x}, y = {y}")
print(mulReturn())


x=("1+2",)
print(x)