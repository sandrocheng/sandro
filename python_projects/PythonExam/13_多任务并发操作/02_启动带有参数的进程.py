# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 7:51
import multiprocessing
import time

def func1(times,workers:list):
    for i in range(times):
        time.sleep(0.5)
        print(f"func1 working {i},workers:{workers}")

def func2(times):
    for i in range(times):
        time.sleep(0.5)
        print(f"func2 working {i}")

if __name__ == '__main__':
    subProcess_1 = multiprocessing.Process(target=func1, args=(4, ['tom','joy']))
    subProcess_2 = multiprocessing.Process(target=func2, kwargs={"times":3})
    subProcess_1.start()
    subProcess_2.start()