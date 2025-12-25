# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 20:34
import multiprocessing
import threading
import time

def func1():
    for i in range(3):
        time.sleep(0.5)
        print(f"func1 working {i} - processName:{multiprocessing.current_process().name}")

def func2():
    for i in range(3):
        time.sleep(0.5)
        print(f"func2 working {i} - processName:{multiprocessing.current_process().name}")

#多进程下，必须要判断__name__是否是主程序，子程序是__mp_main__，否则会陷入死循环
if __name__ == '__main__':
    print(f"主进程 processName:{multiprocessing.current_process().name}")

    print(f"当前进程中的线程：{threading.enumerate()}")
    print(f"cpu个数：{multiprocessing.cpu_count()}")

    sub_process_1 = multiprocessing.Process(target=func1)
    sub_process_1.name='子进程1'
    sub_process_1.start()

    sub_process_2 = multiprocessing.Process(target=func2)
    sub_process_2.name = '子进程2'
    sub_process_2.start()
else:
    print(__name__)

