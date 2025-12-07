# @Version : 1.0
# @Author : sandro
# @Time :2025/12/7 14:40

"""
python中的整数
python的整形是变长的，字节数随着数字的增大而增大，每次增量是4个字节
"""
import sys

value = 10**88 # **代表10的88次方，如果是10**8888 会提示Exceeds the limit (4300 digits)错误
print(value)

n1 = 1
n2 = 2 ** 15
n3 = 2 ** 128
# 在python中可以通过sys.getsizeof(object)返回对象的大小（字节）
# 通过案例可以发现数字默认是28个字节
print(f"n1的值 {n1} , 值的大小是{sys.getsizeof(n1)}个字节")
print(f"n1的值 {n2} , 值的大小是{sys.getsizeof(n2)}个字节")
print(f"n1的值 {n3} , 值的大小是{sys.getsizeof(n3)}个字节")


print(f"十六进制 0x16 的值是：{0x16}")
print(f"十进制 16 的值是：{16}")
print(f"八进制 0o16 的值是：{0o16}")
print(f"二进制 0b1000 的值是：{0b1000}")

