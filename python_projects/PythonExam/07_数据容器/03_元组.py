# @Version : 1.0
# @Author : sandro
# @Time :2025/12/16 11:50

tuple_a = (1,2,3,4,5)
print(f"1）tuple_a: {tuple_a},type:{type(tuple_a)},address: {id(tuple_a)}")
print(f"2）第三个元素：{tuple_a[2]}")

print(f"3）使用while循环读取元组的数据----------")
count = 0
while count < len(tuple_a):
    print(tuple_a[count])
    count+=1

print(f"4）使用for循环读取元组的数据----------")
for ele in tuple_a:
    print(ele)

tuple_a = ()
print(f"5) tuple_a: {tuple_a},size:{len(tuple_a)}")
tuple_a = tuple()
print(f"6) tuple_a: {tuple_a},size:{len(tuple_a)}")

tuple_a = ((1,2,3),(4,5,6),(7,8,9))
print(f"7) tuple_a[11][]: {tuple_a[1][1]}")

#定义只有一个元素的元组，需要带上,号，否则就不是元组类型
tuple_a = (1) #不加逗号，类型是值的类型
print(f"8）tuple_a: {tuple_a},type:{type(tuple_a)},address: {id(tuple_a)}")
tuple_a = (1,)
print(f"9）tuple_a: {tuple_a},type:{type(tuple_a)},address: {id(tuple_a)}")