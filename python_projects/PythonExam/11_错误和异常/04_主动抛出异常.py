# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 14:15

def handle_data(_list):
    if not isinstance(_list, list):
        raise TypeError(f'需要一个list 参数是：{type(_list)}')

    print("list处理完毕")

try:
    handle_data([1, 2, 3])
    handle_data(1)
except Exception as e:
    print(f"有异常：{type(e)},异常信息：{e}")