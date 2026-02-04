# def addsub(x,y):
#     return x+y, x-y

# print(addsub(1, 2))
# print(addsub(4, 3))
# print(addsub(6, 4))


def varfunc(*args):
        print(args)
        

def add(*numbers) :
    sum = 0
    for i in numbers:
        sum = sum + i
    return sum
print(f"sum = {add(10)}, {add(10, 20)}, {add(10, 20, 30)}")
print(add(10, 20, 30))
