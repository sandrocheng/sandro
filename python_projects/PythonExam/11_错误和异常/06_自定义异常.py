# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 15:55

class AgeError(Exception):
    __age = None

    def __init__(self, age):
        self.__age = age

    def __str__(self):
        return f"年龄的范围应该在0~120之间，当前年龄是{self.__age},"


class Person:
    __name = None
    __age = None

    def __init__(self, name, age):
        self.name = name
        if (age is None) or (age < 0 or age > 120):
            raise AgeError(age)
        self.age = age


try:
    p = Person("tom",121)
except AgeError as e:
    print(e)
