# @Version : 1.0
# @Author : sandro
# @Time :2025/12/27 15:33
import threading
import time


def fun1(times):
    for i in range(times):
        time.sleep(1)
        print(f"fun1 : {i} , thread : {threading.current_thread()}")


def fun2(times):
    for i in range(times):
        time.sleep(1)
        print(f"fun2 : {i} , thread : {threading.current_thread()}")


if __name__ == '__main__':
    t1 = threading.Thread(target=fun1, name="t1", args=(3,))
    t2 = threading.Thread(target=fun2, kwargs={"times": 3})
    t1.start()
    t2.start()
