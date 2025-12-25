# @Version : 1.0
# @Author : sandro
# @Time :2025/12/25 11:25
import multiprocessing


def func1(value_1, value_2,value_3,arr):
    value_1.value = 888
    #注意:指定一下编码格式是为了得到一个bytes对象
    value_2.value = 'c'.encode('utf-8')
    value_3.value = "程"
    arr[0]=100

if __name__ == '__main__':
    value_1 = multiprocessing.Value('i', 10)
    value_2 = multiprocessing.Value('c')
    value_3 = multiprocessing.Value('u')

    arr = multiprocessing.Array('i', [1,2,3,4])

    p_1=multiprocessing.Process(target=func1, args=(value_1, value_2, value_3,arr))
    p_1.start()
    p_1.join()

    print(f"value_1 = {value_1.value}, value_2 = {value_2.value}, value_3 = {value_3.value}")
    print(f"arr = {arr[:]}")