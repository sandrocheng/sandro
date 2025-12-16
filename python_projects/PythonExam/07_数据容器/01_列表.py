# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 19:13
from traceback import print_tb

list1 = [1, 2, 3, 4, 5]
print(f"1) 输出列表的所有元素：{list1}")
print(f"2) list1 的类型是: {type(list1)}")

print(f"3) list1的第一个元素是：{list1[0]} ，第二个元素是：{list1[1]}")
# len函数是python的内置函数它可以获取集合的长度
print(f"4) list1的长度是 : {len(list1)}")

print("5)----------使用while循环遍历列表----------")
count = 0
while count < len(list1):
    print(f"i:{count},值：{list1[count]}")
    count += 1

print("6)----------使用for循环遍历列表----------")
for item in list1:
    print(item)

list2 = []
list3 = list()
print(f"7) list2 size: {len(list2)} , list3 size: {len(list3)}")

list2 = [1, "一", 1.2, True, [1, 2, "三"]]
print(f"8) list2 size: {len(list2)} , list2 ：{list2}")
print(f"9) list2[-3] si {list2[-3]}")

list2.append("新值")
print(f"10) append {list2}")
list2[-1] = "更新"
print(f"11) 更新后：{list2}")
del list2[-1]
print(f"12) 删除列表尾部元素 {list2}")

print("13) 列表是可变序列案例1---------")
list3 = list(range(5))  # 使用range函数生成一个数字序列
print(f"list3:{list3} , 地址是：{id(list3)}，id(list3[1]):{id(list3[1])}")
# 列表的元素可以修改，修改后列表变量指向的地址不变，只是数据变化了，实际上是元素的地址变化了
list3[1] = 100
print(f"list3:{list3} , 地址是：{id(list3)}，id(list3[1]):{id(list3[1])}")

print("14) 列表是可变序列案例2---------")
list1 = list(range(5))
list3 = list1  # 列表的赋值，实际上赋值的是地址，因此这两个变量都指向同一个列表空间的内存地址
list3[0] = 200  # 修改list3某个元素的值
print(f"list1:{list1}")  # 此时list1的数据也变化了

print("15) 列表在函数中传参 ---------")
list1 = list(range(5))
def changelist(list_arg):
    list_arg[1] = 100
    print(f"list_arg:{list_arg} ，地址：{id(list_arg)}")

changelist(list1)
print(f"list1:{list1}，地址：{id(list1)}")

