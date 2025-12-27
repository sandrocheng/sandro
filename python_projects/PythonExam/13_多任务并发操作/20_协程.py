# @Version : 1.0
# @Author : sandro
# @Time :2025/12/27 23:38

from greenlet import greenlet

def func1():
    print("1") #第2步 输出1
    gr2.switch() #第3步 执行func2
    print("2")#第6步 输出2
    gr2.switch()#第7步 执行func2,从上一次执行的位置继续执行

def func2():
    print("3") #第4步 输出3
    gr1.switch()#第5步 执行func1,从上一次执行的位置继续执行
    print("4")#第8步 输出4

gr1 = greenlet(func1)
gr2 = greenlet(func2)
gr1.switch() #第1步 执行 fun1函数