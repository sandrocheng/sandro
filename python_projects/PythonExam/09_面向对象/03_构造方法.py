# @Version : 1.0
# @Author : sandro
# @Time :2025/12/21 18:24

class Person:

    #python支持动态生成属性，因此属性可以不用定义，在构造函数中使用self定义也可以
    # name = None
    # age = None

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def getInfo(self):
        return f"{self.name} is {self.age} years old"

person = Person("John", 18)
print(f"1) {person.getInfo()}")

person = Person("tom",None)
print(f"2) {person.getInfo()}")