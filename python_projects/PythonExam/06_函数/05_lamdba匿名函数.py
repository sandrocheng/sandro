# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 17:47

def f1(fun,num1,num2):
    """
    该函数可以接受一个普通函数/匿名函数，通过匿名函数计算，返回两个数的最大值
    :param fun:
    :param num1:
    :param num2:
    :return:
    """
    print(f"fun类型：{type(fun)}")
    return fun(num1,num2)

#lamdba是匿名函数的关键字
#代表该函数有两个形参，a 和 b1
#:后面代表函数体，
# 12 13是f1的后两个实参
#匿名函数不需要return，运算结果就是返回值
r = f1(lambda a,b:a if a>b else b,
       12,13)
print(r)
