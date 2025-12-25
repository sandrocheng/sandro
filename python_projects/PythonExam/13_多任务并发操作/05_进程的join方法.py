# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 10:51
import multiprocessing
import time


def func1():
    for i in range(5):
        print(f"func1 子进程开始工作 {i}")
        time.sleep(0.5)
    print("func1 子进程结束")

if __name__ == '__main__':
    subProcess_1 = multiprocessing.Process(target=func1)
    subProcess_1.start()
    #主进程会在join的地方停住，直到子进程完成以后再继续
    subProcess_1.join()
    print("主进程结束")