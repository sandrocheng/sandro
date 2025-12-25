# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 8:59
import multiprocessing
import os


def func1():
    print(f"func1 working pid is {os.getpid()} ,ppid is {os.getppid()}")

def func2():
    print(f"func2 working pid is {os.getpid()} ,ppid is {os.getppid()}")

if __name__ == '__main__':
    print(f"main process pid is {os.getpid()} ,ppid is {os.getppid()}")
    subProcess_1 = multiprocessing.Process(target=func1)
    subProcess_2 = multiprocessing.Process(target=func2)
    subProcess_1.start()
    subProcess_2.start()