# @Version : 1.0
# @Author : sandro
# @Time :2025/12/27 15:33
import threading
import time


def fun1():
    for i in range(20):
        time.sleep(0.5)
        print(f"fun1 : {i}")

def fun2():
    for i in range(20):
        time.sleep(0.5)
        print(f"fun2 : {i}")

if __name__ == '__main__':
    t1 = threading.Thread(target=fun1,name="t1")
    t2 = threading.Thread(target=fun2)
    t1.start()
    t2.start()

    #启动多个线程，如果想多个线程都执行完毕以后再继续执行，可以都start以后，再逐个join
    t1.join()

    #t1虽然被join了，但是主线程还可以继续执行t2的join，因此t1和t2可以同时被执行
    #并不会等到t1执行完毕以后，再执行t2
    t2.join()

    print("end")#这句话就只能等到t1和t2都执行执行完毕以后才能输出了
