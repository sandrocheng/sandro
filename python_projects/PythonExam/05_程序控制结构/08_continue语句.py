# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 10:56
import random

count = 0
times = 0
max_loop = 100
while count < 100:
    num = random.randint(1, 100)
    count += 1
    if num % 2 == 0:
        continue
    times += 1
print(f"{max_loop} 循环中出现奇数的次数：{times}")
