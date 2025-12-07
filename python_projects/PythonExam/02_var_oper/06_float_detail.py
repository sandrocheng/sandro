# @Version : 1.0
# @Author : sandro
# @Time :2025/12/7 15:21

from decimal import Decimal

"""
python浮点数用来表示小数

"""
import sys

n1 = 5.12
n2 = .512
print(f"n1={n1},类型是{type(n1)},占用{sys.getsizeof(n1)}个字节")
print(f"n2={n2},类型是{type(n2)},占用{sys.getsizeof(n2)}个字节")

# 科学计数法 e不区分大小写，e后面的数组可以是正整数和负整数
# 正整数 “+”可以省略
n3 = 5.12e2  # 科学计数法，代表 5.12 * 10的2次方
n4 = 5.12e-2  # 科学计数法，代表 5.12 / 10的2次方
print(f"n3={n3},类型是{type(n3)},占用{sys.getsizeof(n3)}个字节")
print(f"n4={n4},类型是{type(n4)},占用{sys.getsizeof(n4)}个字节")

# 浮点数有大小限制，边界值为
print(f"浮点数最大值 {sys.float_info.max}")
print(f"浮点数最大值 {sys.float_info.min}")

# 浮点类型计算后，存在精度的损失，可以使用Decimal类进行精确计算
b = 8.1 / 3
print(f"b={b}")  # b=2.6999999999999997

c = Decimal("8.1") / Decimal("3")
print(f"c={c},类型是{type(c)},占用{sys.getsizeof(c)}个字节") # 2.7
