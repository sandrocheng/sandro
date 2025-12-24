# @Version : 1.0
# @Author : sandro
# @Time :2025/12/12 19:43

"""
数据类型转换
"""
# python 变量的类型是根据变量使用的上下文在运行时决定的
var1 = 10
print(type(var1))
var1 = 1.1
print(type(var1))
var1 = 'hello'
print(type(var1))

# 在运算的时候，数据类型会向高精度转换
var2 = 10
var3 = 1.2
var4 = var2 + var3
print(f"var4={var4} var4的类型是：{type(var4)}")
var2 = var2 + 1.1
print(f"var2={var2} var2的类型是：{type(var2)}")

# 显示类型转换
var1 = 10
j = float(var1)
print(f"j={j},j的类型是：{type(j)}")
var1 = "10.1"
j = float(var1)
print(f"j={j},j的类型是：{type(j)}")
var1 = "10"
j = int(var1)  # python中值是浮点数的字符串不能强制转换成整型
print(f"j={j},j的类型是：{type(j)}")
va1 = 10.1
j = int(var1)
print(f"j={j},j的类型是：{type(j)}")  # float转换成int时，小数部分会被抹去
var1 = 10
j = str(var1)
print(f"j={j},j的类型是：{type(j)}")
