class Person:
    def __init__(self, name, phone, addr, age):
        self.name = name
        self.phone = phone
        self.addr = addr
        self.age = age
    def __str__(self):
        return f"<{self.name}, {self.phone}, {self.addr}, {self.age}>"
        
p1 = Person("홍길동", "57121-232312", "우산국", 500)
p2 = Person("박길동", "32121-232312", "정산국", 501)
p3 = Person("강길동", "65421-232312", "최산국", 502)
personList = [p1, p2, p3]
for i in personList:
    print(i)
    
def keyName(person):
    return person.name

print(sorted(personList, key=lambda p: p.name))