# @Version : 1.0
# @Author : sandro
# @Time :2025/12/21 13:00

#class是类的关键字，Cat是类名 后面接:
class Cat:
    #属性值可以设置为None，代表空置，但是不能不写
    #None 是 NoneType类型的唯一实例
    age = None
    name = None
    color = None

    def getInfo(self):
        return f"age: {self.age}, name: {self.name}, color: {self.color}"

#类实例的创建
cat1 = Cat()
cat1.age = 3
cat1.color = "red"
cat1.name = "咪咪"


print(f"1)cat1的 类型 {type(cat1)}")
print(f"2)cat1.age: {cat1.age} ,cat1.color: {cat1.color},cat1.name: {cat1.name}")

#对象赋值，是地址拷贝，因此两个对象指向了同一个内存空间
cat2 = cat1
print(f"3)cat1的地址: {id(cat1)} , cat2的地址: {id(cat2)}")

#False 数值0 None 空字符串 空列表 空字典 空元组 空集合 都有布尔值，且为Flase
#可以使用bool(对象)来获取
print(f"4) 空字典的布尔值 : {bool(dict())}")
print(f"5) 空字符串的布尔值 : {bool("")}")

print(f"6) {cat1.getInfo()}")

def func():
    return "hello"
cat1.tempFun = func
print(f"7) 给cat1对象关联方法 ：{cat1.tempFun()} ，tempFun的类型是：{type(cat1.tempFun)}")

print(f"8) cat1的成员方法类型 ：{type(cat1.getInfo)}")
