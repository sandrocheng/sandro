# @Version : 1.0
# @Author : sandro
# @Time :2025/12/13 13:37

# 默认情况下所有进制变量/字面量的值以十进制的形式展示
num =0b1000
print(f"二进制 0b1000的值 ： {num}")

num =0o1000
print(f"八进制 0o1000的值 ： {num}")

print(f"十六进制 0xff的值 ：{0xff}")

# bin(x),将整数转换位2进制字符串
print(f"9 的2进制结果是：{bin(9)},{type(bin(9))}")
print(f"0xff 的2进制结果是：{bin(0xff)}")

#oct(x),将整数转换为八进制字符串
print(f"9 的八进制结果是：{oct(9)}")
print(f"0b1111 的八进制结果是：{oct(0b1111)}")
print(f"0xff 的八进制结果是：{oct(0xff)}")

#hex(x),将整数转换为十六进制字符串
print(f"237 的十六进制结果是：{hex(237)}")
print(f"0o77 的十六进制结果是：{hex(0o77)}")