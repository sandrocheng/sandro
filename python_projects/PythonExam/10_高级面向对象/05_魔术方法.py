# @Version : 1.0
# @Author : sandro
# @Time :2025/12/23 10:03


class Person:
    name = None
    age = None

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):
        return f'name: {self.name}, age:{self.age}'

    def __eq__(self, other):
        if isinstance(other, Person):
            return self.name == other.name and self.age == other.age
        return False

    def __ne__(self, other):
        return not self.__eq__(other)


per1 = Person("tom", 20)
print(per1)
per2 = Person("tom", 20)
print(f"per1 == per2: {per1 == per2}")
print(f"per1 != per2: {per1 != per2}")
