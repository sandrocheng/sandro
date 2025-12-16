# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 15:11

def test(n):
    if n > 2:
        test(n - 1)
    print(f"n = {n}")

print("-----------递归调用案例1------------")
test(4)

print("-----------递归调用案例2 计算阶乘------------")

def factorial(n):
    """
    在函数内部增加注释
    :param n: 计算阶乘的初始值
    :return: 阶乘结果
    """
    if n == 1:
        return 1
    else:
        return n * factorial(n - 1)
print(factorial(4))

print("-----------递归调用案例3 计算斐波那契数列------------")
def fbn(n):
    """
    计算斐波那契数
    :param n: 第n个值
    :return:
    """
    if  n <=2:
        return 1
    else:
        return fbn(n - 1) + fbn(n - 2)
for i in range(10):
    print(fbn(i+1))