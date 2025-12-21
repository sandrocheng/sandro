# @Version : 1.0
# @Author : sandro
# @Time :2025/12/21 22:16

class Person:
    #私有属性
    __age = None
    __name = None

    def __init__(self, name, age):
        self.__name = name
        self.__age = age

    def toString(self):
        return self.__getInfo()

    #私有方法
    def __getInfo(self):
        return f"name: {self.__name}, age: {self.__age}"

    def getName(self):
        return self.__name
    def getAge(self):
        return self.__age
    def setAge(self, age):
        self.__age = age
    def setName(self, name):
        self.__name = name

person = Person("John", 18)
print(f"1) person is {person.toString()}")

person.__age = 20
print(f"2) person is {person.toString()}")