# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 14:15


num_1 = 10
num_2 = 0
print("1) 最简单的捕获方式，可以捕获Exception的所有子异常------------")
try:
    x = num_1 / num_2
except :
    print("出现异常了！")
print("程序继续执行")

print("2) 通过Exception捕获较大范围(Exception的所有子异常)可能性的异常，------------")
try:
    x = num_1 / num_2
except Exception as e:
    print(f"出现异常了！ 异常类型{type(e)},异常信息：{e}")
print("程序继续执行")

print("3) 获取具体异常信息的捕获方式------------")
try:
    x = num_1 / num_2
except ZeroDivisionError as e:
    print(f"出现异常了！ 异常类型{type(e)},异常信息：{e}")
print("程序继续执行")

print("4) 当没有捕获到异常的时候 在else中的字句会被执行------------")
num_2 = 2
try:
    x = num_1 / num_2
except ZeroDivisionError as e:
    print(f"出现异常了！ 异常类型{type(e)},异常信息：{e}")
else:
    print("try代码块成功执行")
print("程序继续执行")

print("5) 不管程序有没有异常 finally中的字句都会执行------------")
num_2 = 0
try:
    x = num_1 / num_2
except ZeroDivisionError as e:
    print(f"出现异常了！ 异常类型{type(e)},异常信息：{e}")
else:
    print("try代码块成功执行")
finally:
    print("finally 子句")
print("程序继续执行")

print("6) 多个异常的捕获------------")
num_2 = 0
try:
    x = num_1 / num_2
    print(int('hello'))
except ZeroDivisionError as e:
    print(f"ZeroDivisionError 异常,异常信息：{e}")
except ValueError as e:
    print(f"ValueError 异常,异常信息：{e}")
except Exception as e:
    print(f"Exception 异常,异常信息：{e}")
print("程序继续执行")

print("7) 使用一个except子句多个异常的捕获------------")
try:
    x = num_1 / num_2
    print(int('hello'))
except (ValueError,ZeroDivisionError) as e:
    print(f"异常发生，异常类型{type(e)},异常信息：{e}")
print("程序继续执行")