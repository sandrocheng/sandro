# @Version : 1.0
# @Author : sandro
# @Time :2025/12/13 10:53

a = 10
b = 20
# and 运算符,x and y, 如果 x 为 False ,x and y 返回false ，否则返回y的值
# 在python中非零代表True
print(a and b)

# x or y, 如果x为True，返回x的值，否则返回y的值，
print(a or b)

print(not (a and b))

print(not "") #空串视为0
print(not "a") #有字符的字符串视为1
