# @Version : 1.0
# @Author : sandro
# @Time :2025/12/1 19:19

# python 变量定义

"""
python 不需要指定变量类型，直接指定变量名称，其类型是值的类型，1默认是整形
可以通过type(变量)来查看该变量的类型

print方法可以使用多个参数，print方法会把这写参数整合为一个输出字符串，字符串默认在两个变量之间增加一个空格
"""
a = 1
print("a = ", a, ",a的类型是", type(a))

a = 1.11
print("a*2 = ", a * 2, ",a的类型是", type(a))

a = "hello"
print("a = ", a, ",a的类型是", type(a))
