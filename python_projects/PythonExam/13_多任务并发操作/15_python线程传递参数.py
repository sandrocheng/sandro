# @Version : 1.0
# @Author : sandro
# @Time :2025/12/27 15:33
import threading
import time


def fun1(times):
    for i in range(times):
        time.sleep(0.1)
        print(f"fun1 : {i}")

def fun2(times):
    for i in range(times):
        time.sleep(0.1)
        print(f"fun2 : {i}")

class Mythread(threading.Thread):
    def run(self):
        #通过_args参数元组获取数据
        #_args是在Thread构造函数中动态定义的属性
        for i in range(self._args[0]):
            time.sleep(0.5)
            print(f"fun3 : {i}")

if __name__ == '__main__':
    t1 = threading.Thread(target=fun1,name="t1",args=(3,))
    t2 = threading.Thread(target=fun2,kwargs={"times":2})
    t3 = Mythread(args=(3,))
    t1.start()
    t2.start()
    t3.start()
