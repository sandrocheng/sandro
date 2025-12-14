# @Version : 1.0
# @Author : sandro
# @Time :2025/12/13 11:58

# python是一种极简主义的编程语言，他没有引入 ? :这个运算符符，而是使用 if else关键字来实现相同的功能
a = 10
b = 20
max = a if a > b else b
print(f"max = {max}")


c = 30
max = a if a > b else b
max = c if max > c else c
print(f"max = {max}")
