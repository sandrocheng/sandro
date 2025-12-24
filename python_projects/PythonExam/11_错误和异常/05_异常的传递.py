# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 15:30

def f3():
    print("---f3 start----")
    print(10/0)
    print("---f3 end----")

def f2():
    print("---f2 start----")
    f3()
    print("---f2 end----")

def f1():
    print("---f1 start----")
    try:
        f2()
    except Exception as e:
        print(f"f1 exception : {e}")
    print("---f1 end----")

f1()