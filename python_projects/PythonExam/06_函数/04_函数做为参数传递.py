# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 15:11

def get_max_value(num1, num2):
    """
    获取两个数的最大值
    :param num1: 第一个数
    :param num2: 第二个数
    :return: 最大的数
    """
    max_value = num1 if num1 > num2 else num2
    return max_value

def f1(fun,num1,num2):
    """
    调用fun函数，返回num1 和 num2的最大值
    :param fun: 表示接受一个函数
    :param num1:接受函数的参数1
    :param num2:接受函数的参数2
    :return:
    """
    return fun(num1,num2)

def f2(fun,num1,num2):
    return fun(num1,num2),num1 + num2

max_value = f1(get_max_value,10, 20)
print(f"max_value: {max_value} ")

max_value,sum_result = f2(get_max_value, 1, 3)
print(f"max_value: {max_value} ,sum_result: {sum_result}")