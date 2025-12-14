# @Version : 1.0
# @Author : sandro
# @Time :2025/12/14 20:22

print("---------根据数据集循环 案例1----------")
nums = [1, 2, 3]
print(f"数组nums的所有元素{nums} , 该数据集的类型是：{type(nums)}，地址是：{id(nums)}")
count = 0
for i in nums:
    print(f"第{count}个元素是:{i},该元素的地址是:{id(i)}")
    count+=1

print("---------根据数据集循环 案例2----------")
count = 0
for i in [200,300,400]:
    print(f"第{count}个元素的值是:{i},该元素的地址是:{id(i)}")
    count+=1
print(f"200的驻留地址是：{id(200)}")

print("---------根据range()函数循环 案例3----------")
for num in range(3):
    print(num)

print("---------根据range()函数循环 案例4----------")
for num in range(3,11,2):#从3开始，最大不能>=11，步长是2
    print(num)

print("---------输出range() 返回的数列 案例5----------")
print(f"{list(range(5))}")
print(f"{list(range(3,11,2))}")

print("---------for else 案例6----------")
for num in range(3):
    print(num)
else:
    print("集合中所有的元素都正常遍历到了")