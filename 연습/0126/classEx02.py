#클래스 예제

class Rectangle:
    def __init__(self, base, height):
        self.base = base
        self.height = height
    def setBase(self, base):
        self.base = base
        
rect1 = Rectangle(30, 30)
rect1.base = 10
rect1.setBase(10)
print(rect1.base)
print(rect1.setBase())
            