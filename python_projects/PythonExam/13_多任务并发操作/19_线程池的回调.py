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
    return random.randint(1,100)

#方法中要定义个参数，该参数封装了返回值
def done(result):
    #result.result()就是函数的返回值
    print(f"result:{result.result()}")

pool = ThreadPoolExecutor(max_workers=3)
for i in range(10):
    future = pool.submit(task,i,random.random())
    future.add_done_callback(done)#设置回调函数方法名

