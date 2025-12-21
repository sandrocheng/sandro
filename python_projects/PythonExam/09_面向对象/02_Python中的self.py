# @Version : 1.0
# @Author : sandro
# @Time :2025/12/21 16:46

class Dog:
    name = None
    age = None

    #通过 @staticmethod注解 声明静态方法
    @staticmethod
    def fun1():
        print("static method")

    def print(self):
        print(f"{self.name} is {self.age} years old")

Dog.fun1()

