# @Version : 1.0
# @Author : sandro
# @Time :2025/12/16 14:15

tuple_a = (1,2,2,2,3,4,5)
print(f"1) 元素3出现的位置 {tuple_a.index(3)}")
print(f"2) 元素2出现次数 {tuple_a.count(2)}")
print(f"3) tuple_a的长度 {len(tuple_a)}")
print(f"4) tuple_a中的最大值 {max(tuple_a)}")
print(f"5) tuple_a中的最小值 {min(tuple_a)}")

tuple_a = tuple(range(1,11))
print(f"6) {tuple_a}")
print(f"7) 判断100是否在元组中：{100 in tuple_a}")

