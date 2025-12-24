# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 11:11

from abc import ABC, abstractmethod

class Person(ABC):
    __name = None

    def __init__(self, name):
        self.__name = name

    def get_name(self):
        return self.__name

    #定义抽象方法，注意方法体需要pass来占个位，保证解释器能正常执行
    @abstractmethod
    def start_work(self):
        pass

class Student(Person):
    #在IDE中，如果没有实现抽象方法，会有提示，在类上 more_action中，选择实现抽象方法即可
    def start_work(self):
        print(f"Student {self.get_name()} start studying")

    def __init__(self, name):
        super().__init__(name)

class Teacher(Person):
    def start_work(self):
        print(f"Teacher {self.get_name()} start classing")

    def __init__(self, name):
        super().__init__(name)

student = Student("tom")
teacher = Teacher("luch")
student.start_work()
teacher.start_work()