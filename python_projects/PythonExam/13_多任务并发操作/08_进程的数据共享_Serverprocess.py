# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 11:25
import multiprocessing


def func1(_dict, _list):
    _list.append(666)
    _list.append(777)
    _list.append(888)

    _dict[1] = "一"
    _dict[2] = "二"
    _dict[3] = "三"


if __name__ == '__main__':
    with multiprocessing.Manager() as manager:
        d = manager.dict()
        l = manager.list()
        p1 = multiprocessing.Process(target=func1, args=(d, l))
        p1.start()
        p1.join()

        print(f"d = {d}, l = {l}")
