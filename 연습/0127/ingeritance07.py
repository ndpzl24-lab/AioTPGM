class Person:
    def __init__(self,name, socNumber):
        self.name = name
        self.socNumber = socNumber

class Student(Person):
    def __init__(self, name, socNumber, studentType):
        super().__init__(name, socNumber)
        self.studentTpye = studentType
        self.gpa = 0
        self.courses =[]
    def enrollCourse(self, course):
        self.courses.append(course)
    def __str__(self):
        return f"이름:{self.name}\n주민번호:{self.socNumber}\n강의목록:{self.courses}\n평점:{self.gpa}"        


class Teacher(Person):
    def __init__(self, name,socNumber):
        super().__init__(name, socNumber)
        self.courses = []
        self.salary = 30000000
    def assginCourses(self, course):
        self.courses.append(course)
    def __str__(self):
        return f"{self.name}, {self.socNumber}, {self.salary}\n{self.courses}"    
        
        
        
        
s1 = Student("홍길동", "16161-64644", "UNDERGADUATE")
s1.enrollCourse("자료구조")
s1.enrollCourse("코딩테스트")
print(s1)
t1 = Teacher("홍길동", "11515-15151")
t1.assginCourses("자료구조1")
t1.assginCourses("코딩테스트2")
print(t1)