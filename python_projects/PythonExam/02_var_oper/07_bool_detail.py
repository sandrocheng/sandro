# @Version : 1.0
# @Author : sandro
# @Time :2025/12/7 15:48
# bool类型案例
import sys

isTrue = False
print(f"c={isTrue},类型是{type(isTrue)},占用{sys.getsizeof(isTrue)}个字节")

a = 100
b = 200
result = a > b
print(f"c={result}")
print(f"1>0 : {1 > 0}")

# 布尔类型可以和其他数据类型进行比较，比如数字，字符串等。在比较时，Python会将True视为1 False视为0
c = False
d = True
print(f"c+10={c + 10}")  # 当bool值和数字运算时，False被当成0
print(f"d+10={d + 10}")  # 当bool值和数字运算时，True被当成1

if c == 0: # 当bool值和数字运算时，False被当成0
    print("c==0")

if 0:
    print("haha") # 0被视为False,因此该语句不能输出

if 1.1:
    print("heihei")  # 非0被视为True,因此该语句不能输出

if "":
    print("呵呵")  # 空串被视为False,因此该语句不能输出

if "呵呵":
    print("hehe")  # 非空字符串True,因此该语句能输出