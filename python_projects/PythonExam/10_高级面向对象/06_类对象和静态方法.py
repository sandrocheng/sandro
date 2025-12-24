# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 10:56

class Person:
    name = "defaultName"
    age = 20

    def run(self):
        print("start run")

    #定义该方法为静态方法
    @staticmethod
    def staticRun():
        print("static run")
#即使没有对象，也可以直接使用类名读取类对象的属性(默认值)
print(f"Person.age : {Person.age},Person.name : {Person.name}")

#通过类名调用非静态方法，传递的参数是类对象本身，因此类方法中使用的属性值都是默认值
#通过Person实例调用run方法时，是不用传递自己的，通过Person类调用该方法时，就只能传递类对象本身了
Person.run(Person)

#静态方法的调用
Person.staticRun()