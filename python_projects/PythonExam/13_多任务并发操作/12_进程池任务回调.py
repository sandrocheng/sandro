# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 15:08
import multiprocessing
import os
import random
import time
from concurrent.futures import ProcessPoolExecutor


#注意，因为要回调给主进程，doTask应该有return,没有return，返回的是None
def doTask(_id):
    print(f"{os.getpid()}进程开始执行{_id}号任务")
    time.sleep(random.random() + 0.1)
    return random.randint(1,100)

#任务结束时的回调方法，_result中封装了返回值
def taskDone(_result):
    print(f"任务完成，结果是：{_result.result()} {multiprocessing.current_process().name}")

if __name__ == '__main__':
    pool = ProcessPoolExecutor(max_workers=4)
    for i in range(10):
        p = pool.submit(doTask, i)
        p.add_done_callback(taskDone)#注意：回调函数是在主进程中调用的
    pool.shutdown(True)

