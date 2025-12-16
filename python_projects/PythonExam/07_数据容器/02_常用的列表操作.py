# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 19:13
from traceback import print_tb

list1 = list(range(3))

print(f"1) list1 size: {len(list1)} , max = {max(list1)} , min = {min(list1)},地址：{id(list1)}")

list1.append(100)
list1.append(1)
list1.append(1)
print(f"2）list1 : {list1}")
print(f"3）值是1的元素的个数 : {list1.count(1)}")

list1.extend(list(range(100,301,50)))
print(f"4) list1 : {list1},地址：{id(list1)}")
print(f"5) list1中第一个值是100的元素的索引 : {list1.index(100)}")

list1.reverse()
print(f"6) 列表反转后：{list1}")

list1.insert(1,22)
print(f"7) 在index=1的位置添加新的数据：{list1}")

list1.sort()
print(f"8) 列表的默认排序(正向)：{list1}")

list1.sort(reverse=True)
print(f"9) 列表的反向排序：{list1}")

#列表生成式，将list中的每个元素乘2得到新的列表
list2 = [ele * 2 for ele in list1]
print(f"10) list2: {list2}")

#字符串在python中也可以当作一个类似字符列表的可迭代对象
list3 = [ele + ele for ele in "反复abc"]
print(f"11) list3: {list3}")

#range函数返回的也是一个可迭代对象
list4 = [ele * ele for ele in range(1,11)]
print(f"12) list4: {list4}")