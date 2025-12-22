# @Version : 1.0
# @Author : sandro
# @Time :2025/12/22 8:46

class Person:
    name = None
    __age = None

    def __init__(self, name, age):
        self.name = name
        self.__age = age

    def get_info(self):
        return f"name: {self.name}, age: {self.__age}"

    def get_age(self):
        return self.__age

class Student(Person):
    __score = None
    def __init__(self, name, age, score):
        super().__init__(name, age)
        #Person.__init__(self,name, age) 调用父类成员的另一种方式
        self.__score = score

    def get_info(self):
        return f"name: {self.name}, age: {super().get_age()}, score: {self.__score}"

stu1 = Student("tom",18,99)
print(f"1) stu1 info is {stu1.get_info()}")
print(f"2) stu1.age is {stu1.get_age()}")