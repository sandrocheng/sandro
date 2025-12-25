# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 9:29
import multiprocessing
import os
import time


def func1():
    for i in range(20):
        print(f"func1 子进程开始工作 {i}")
        time.sleep(1)
    print("func1 子进程结束")

if __name__ == '__main__':
    subProcess_1 = multiprocessing.Process(target=func1)
    #设置守护进程，当主进程的代码执行完以后，子进程即使正在运行，也会被销毁
    subProcess_1.daemon = True
    subProcess_1.start()

    time.sleep(3)
    print("主进程结束")