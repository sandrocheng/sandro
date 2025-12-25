# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 13:26
import multiprocessing
import os


def fun1(_lock,_value):
    for i in range(100000):
        _lock.acquire()
        _value.value +=1
        _lock.release()

    print(f"{os.getpid()} 完成计算：{_value.value}")

if __name__ == '__main__':
    lock = multiprocessing.RLock()
    value = multiprocessing.Value('i', 0)
    for i in range(5):
        p = multiprocessing.Process(target=fun1, args=(lock, value))
        p.start()

