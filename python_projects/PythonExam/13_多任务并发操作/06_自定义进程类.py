# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 11:04
import multiprocessing


class MySubProcess(multiprocessing.Process):
    def run(self):
        #通过_args获取参数
        print(f"进程开始执行:{self._args}")

if __name__ == '__main__':
    myProcess = MySubProcess(args=('xxx',))
    myProcess.start()