# @Version : 1.0
# @Author : sandro
# @Time :2025/12/14 22:31
import random

print("-----------案例一-----------")
count = 1
while True:
    # 返回一个随机数 范围是[1,100]
    num = random.randint(1, 100)
    if num == 97:
        break
    count += 1
print(f"count={count}")

print("-----------案例2-----------")

count = 0
while count < 50:
    num = random.randint(1, 100)
    count += 1
    if num == 97:
        break

else:
    print("循环10次 ，没能找到97")

print("end")