class Person:
    def __init__(self, name, socNumber):
        self.name = name
        self.socNumber = socNumber


class Student(Person):
    UNDERGRADUATE = 0
    POSTGRADUATE = 1

    def __init__(self, name, socNumber, studentType):
        super().__init__(name, socNumber)
        self.studentType = studentType
        self.gpa = 0
        self.classes = []

    def enrollCourse(self, course):
        self.classes.append(course)

    def __str__(self):
        return (
            f"\n이름={self.name}"
            f"\n주민번호={self.socNumber}"
            f"\n수강과목={self.classes}"
            f"\n평점={self.gpa}"
        )


class Teacher(Person):
    def __init__(self, name, socNumber):
        super().__init__(name, socNumber)
        self.courses = []
        self.salary = 3000000

    def assignTeaching(self, course):
        self.courses.append(course)

    def __str__(self):
        return (
            f"\n이름={self.name}"
            f"\n주민번호={self.socNumber}"
            f"\n강의과목={self.courses}"
            f"\n월급={self.salary}"
        )


s1 = Student("홍길동", "1234-5678", Student.UNDERGRADUATE)
s1.enrollCourse("파이썬프로그래밍")
s1.enrollCourse("자료구조")
print(s1)

s2 = Teacher("김철수", "1234-56789")
s2.assignTeaching("파이썬")
print(s2)
