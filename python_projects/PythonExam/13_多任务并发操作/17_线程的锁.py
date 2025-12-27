# @Version : 1.0
# @Author : sandro
# @Time :2025/12/27 22:07
import random
import threading
import time

lock = threading.RLock()
number = 0

def fun1(times):
    global number
    for i in range(times):
        lock.acquire()
        temp = number + 1
        time.sleep(random.random())
        number = temp
        print(f"fun1 {i} : {number}")
        lock.release()

def fun2(times):
    global number
    for i in range(times):
        with lock:
            temp = number + 1
            time.sleep(random.random())
            number = temp
            print(f"fun2 {i} : {number}")


if __name__ == '__main__':
    t1 = threading.Thread(target=fun1,name="t1",args=(10,))
    t2 = threading.Thread(target=fun2,kwargs={"times":10})
    t1.start()
    t2.start()

    t1.join()
    t2.join()
    print(number)