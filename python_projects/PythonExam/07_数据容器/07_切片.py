# @Version : 1.0
# @Author : sandro
# @Time :2025/12/17 14:50

text = "hello_world"
print(f"1)截取字符串text的前5个字符：{text[0:5:1]}")

list_a = list(range(10))
print(f"2)从第二个元素开始截取list 5个元素：{list_a[1:6:1]}")

tuple_a = (1,2,3,4,5,6,7,8,9)
print(f"3)从第3个元素开始每隔一个截取元组：{tuple_a[3:len(tuple_a):2]}")

text = "hello_world"
print(f"7)从字符串text的第6个位置开始截取到最后：{text[6::]}")
print(f"8)从字符串text的最后位置往前截取5个字符：{text[-1:-6:-1]}")