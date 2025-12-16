# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 17:47

#全局变量
n1 = 100

def f1():
    #局部变量
    n2 = 200
    #全局变量在函数体内可以访问，局部变量只能在声明的函数中使用
    print(f"n1: {n1}, n2: {n2}")
f1()

def f2():
    global n1# 强制指定n1这个局部变量是全局变量
    global n2 # n2没有在全局定义过，因此即使使用global关键字，在全局中也无法使用
    n1 = 200
    n2 = 600
    print(f"n2: {n2}")
f2()
print(f"n1: {n1}")