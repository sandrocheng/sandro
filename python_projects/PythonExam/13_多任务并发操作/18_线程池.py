# @Version : 1.0
# @Author : sandro
# @Time :2025/12/27 22:47
import random
import threading
import time
from concurrent.futures import ThreadPoolExecutor

def task(task_id,_work_time):
    print(f"{threading.current_thread().name} 开始执行{task_id}")
    time.sleep(_work_time)
    print(f"{threading.current_thread().name} 工作完成")

pool = ThreadPoolExecutor(max_workers=3)
for i in range(10):
    pool.submit(task,i,random.random())

pool.shutdown(wait=True)#阻塞主线程
print("end")