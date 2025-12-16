# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 11:32

def maxValue(a, b):
    if a > b:
        return a
    else:
        return b


print(f"1) {maxValue(10, 100)}")


def printCry():
    print("2) something")


printCry()
print(printCry())  # 即使该方法没有return语句，实际上也返回了一个None值


def cal01(maxnum):
    sum = 0
    for i in range(1, maxnum + 1):
        sum += i
    return sum


print(f"3) {cal01(100)}")


def fun(a):
    return a


# 函数返回的数据类型不受限制
print(f"4) {type(fun(100))},{type(fun('你好'))}")


def fun2(a, b):
    return a + b, a - b


r1, r2 = fun2(2, 1)
# 函数可以一次性返回多个值
print(f"5)r1={r1},r2={r2}")


def student(age, name):
    return f"学生姓名：{name},学生年龄：{age}"


# 函数支持关键字参数，函数调用时，可以通过"形参名=实参值"的形式传递参数
print(f"6) {student(name="luke", age="18")}")


def person(age, name, score=60.0):
    return f"姓名：{name},年龄：{age},成绩：{score}"


# 函数支持默认参数/缺省参数
# 定义函数时，可以给参数提供默认值，调用函数时，指定了实参，则以指定为准，没有指定，则以默认值为准
# 默认参数，需要定义在参数列表后
print(f"7) {person("luke", 18)}")


def getNames(*names):
    print(f"names-> {names},类型是：{type(names)}")
    return names


# 函数支持可变参数/不定长参数
# 应用场景：当调用函数的时候，不确定传入多少个实参的情况
# 传入的多个实参，会被组成一个元组(tuple)，元组可以储存多个数据项，类似数组
print(f"8) {getNames("tom", "lucy", "lily")}")

# 函数的可变参数，还支持多个关键字参数，也就是多个“形参名=实参值”
# 应用场景，当调用函数时，不确定传入多少个关键字参数的情况
# 传入的多个关键字参数，会被组成一个字典(dict)，类似map,可以储存多个 key=value的数据项
print("9)-----------------------------")


def getPerson(**args):
    print(f"person-> {args} , type:{type(args)}")
    for art_name in args:
        print(f"{art_name} : {args[art_name]}")


getPerson(name="luke", age="18", score=60.0, sex="男", email="luke@hotmail.com")

# python调用另一个.py的函数
# 需要使用import xx.py 导入文件
import funTest

print(f"10) {funTest.addTest(10, 2)}")
