# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 11:14
import random



def f1():
    num1 = random.randint(1, 100)
    if num1 % 2 == 0:
        return f"得到的是偶数：{num1}"
    else:
        return f"得到的是奇数：{num1}"

print(f1())