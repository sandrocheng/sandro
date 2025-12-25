# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 15:55
import multiprocessing
import os
from concurrent.futures import ProcessPoolExecutor


def fun(d,_lock):
    for i in range(10000):
        with _lock:
            d['num'] += 1
    print(f"{os.getpid()} 任务完成")

if __name__ == '__main__':
    pool = ProcessPoolExecutor(max_workers=4)
    lock = multiprocessing.Manager().RLock()
    with multiprocessing.Manager() as manager:
        d = manager.dict()
        d['num'] = 0
        for i in range(10):
            pool.submit(fun, d,lock)
        pool.shutdown(True)
        print(f"所有任务完成，结果是{d['num']}")