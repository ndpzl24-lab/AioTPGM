def greet(name, msg="별일없죠?"): #parameter
    print("안녕 ", name + ', ' + msg)


greet("영희")


sub(z=1, y=2, x=3)      #keyword argument 방식
sub(1, 2, 3)          #positional argument 방식

def varfunc(*args):
        print(args)
    pass  
        
def add(*numbers) :
    sum = 0
    for i in numbers:
        sum = sum + i
    return sum

print(f"sum = {add(10)}, {add(10, 20)}, {add(10, 20, 30)}")
print(add(10, 20, 30))        