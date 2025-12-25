# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 14:30
import os
import random
import time
from concurrent.futures import ProcessPoolExecutor

def fun(_id):
    print(f"{os.getpid()} 开始工作 任务id:{_id}")
    time.sleep(random.random() + 0.1)
    print(f"{os.getpid()} 空闲")

if __name__ == '__main__':
    with ProcessPoolExecutor(2) as pool:
        for i in range(5):
            pool.submit(fun,i)#第一个参数是函数名，后面按照顺序填入函数的实参
        #等待进程池中所有进程都执行完毕，再继续执行
        pool.shutdown(True)

    print(f"全部进程执行完毕")

