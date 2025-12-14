# @Version : 1.0
# @Author : sandro
# @Time :2025/12/14 21:14

print("---------while循环 案例1-----------")
count = 0
while count < 3 :
    print(count)
    count += 1

print("---------while + else 案例2-----------")
count = 0
while count < 3 :
    print(count)
    count += 1
else:
    print("循环正常结束")

print("---------while + else 案例3-----------")
count = 0
while count < 3 :
    if count == 2:
        print("循环中断")
        break

    print(count)
    count += 1

else:
    print("循环正常结束")