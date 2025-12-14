# @Version : 1.0
# @Author : sandro
# @Time :2025/12/13 14:16

# 位运算需要先把二进制数据转换成补码，运算结果也是补码，最后在转换为原码
num = 2
print(f"1）{num} 的按位取反{~num}")
num = -2
print(f"2）{num} 的按位取反{~num}")

a = 0b10
b = 0b11
print(f"3) {bin(a)} & {bin(b)} = {bin(a & b)}")

a = 0b10
b = -0b11
print(f"4) {bin(a)} ^ {bin(b)} = {bin(a ^ b)}")

a = 0b10
b = 0b11
print(f"5) {bin(a)} | {bin(b)} = {bin(a | b)}")

a = -3
print(f"6) {a} << 1 = {bin(a << 1)}")

a = -5
print(f"7) {a} >> 1 = {bin(a >> 1)}")

a = 5
print(f"8) {a} >> 1 = {bin(a >> 1)}")
