gx = 100


def myfunc():
        global gx # 전역 변수 gx를 사용한다. 
        gx = 200
        print(gx)
        
        
myfunc()
print(gx)