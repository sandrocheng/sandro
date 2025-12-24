# @Version : 1.0
# @Author : sandro
# @Time :2025/12/23 8:23

class Person:
    name: str = None
    number: int = 100

    def __init__(self, name: str):
        self.name = name

    def work(self):
        pass

    def get_number(self):
        return self.number + 1

class Student(Person):
    number: int = 1000

    def work(self):
        print(f"学生：{self.name}的工作是上学")


class Teacher(Person):

    def work(self):
        print(f"老师：{self.name}的工作是上课")


#在python面向对象中，子类对象可以传递给父类类型的参数
def person_work(person: Person):
    print(f"person type: {type(person)}")
    person.work()

teacher = Teacher('李老师')
student = Student('小明')
person_work(teacher)
person_work(student)

_tuple = (teacher,student)
print(f"teacher 是否是 Teacher类对象：{isinstance(teacher, Teacher)}")
print(f"student 是否是 Person类对象：{isinstance(student, Person)}")

num = 9.9
print(f"num 是否是str/int/list对象：{isinstance(num,(str,int,list))}")

#student.get_number()虽然调用的是父类Person的方法
#但是student和Person都有number这个变量
#在父类Person中通过self.number读取的数据实际上是Student的number，因为此时self是子类的self
#因此返回的是1001
print(f"{student.get_number()}")
