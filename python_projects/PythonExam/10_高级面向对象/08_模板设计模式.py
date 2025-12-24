# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 11:32
import random
import time
from abc import ABC, abstractmethod


# 模板案例，有多个类，完成不同的job，要求统计得到各自完成任务的时间

# 模板类，父类
class Person(ABC):
    def startJob(self):
        start_time = time.time()
        self.doJob()
        end_time = time.time()
        print(f"完成任务，共使用了 {end_time - start_time} 秒")

    @abstractmethod
    def doJob(self):
        pass


class Student(Person):
    def doJob(self):
        times = random.randint(1, 10000000)
        while times > 0:
            times -= 1

class Teacher(Person):
    def doJob(self):
        times = random.randint(1, 100000)
        while times > 0:
            times -= 1

student = Student()
teacher = Teacher()
print("学生开始工作")
student.startJob()
print("老师开始工作")
teacher.startJob()