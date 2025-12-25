# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 11:25
import multiprocessing
import time


def func1(_queue):
    for i in range(4):
        _queue.put(i)

def func2(_pipe):
    time.sleep(1)
    _pipe.send([1,2,3,4])
    data = _pipe.recv()
    print(f"子进程收到主进程的数据：data = {data}")

if __name__ == '__main__':
    queue = multiprocessing.Queue()
    p1 = multiprocessing.Process(target=func1, args=(queue,))
    p1.start()
    p1.join()

    print("---获取queue的数据")
    while True:
        if queue.empty():
            break
        item = queue.get(block=False)
        print(f"{item}, ",end="")
    print("")

    print("---使用管道在父子进程之间交换数据")
    #管道创建后会返回两个管道，分别用于主进程的数据收发，和子进程的数据收发
    p_pipe,c_pipe = multiprocessing.Pipe()
    p2 = multiprocessing.Process(target=func2, args=(c_pipe,))
    p2.start()

    info = p_pipe.recv()
    print(f"主进程收到子进程的消息 {info} ")
    p_pipe.send(666)
