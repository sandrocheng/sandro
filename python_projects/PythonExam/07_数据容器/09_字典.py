# @Version : 1.0
# @Author : sandro
# @Time :2025/12/18 23:20

dict_a = {1:"一",2:"二",3:"三",4:"四",5:"五"}
print(f"1) dist_a len : {len(dict_a)},dist_a: {dict_a},type:{type(dict_a)}")
print(f"2) dist_a[1] = {dict_a[1]}")

print("3) 遍历字典方式1---------")
#通过for循环遍历字典的key,在通过key获取value
for key in dict_a:
    print(f"key = {key},value = {dict_a[key]}")

print("4) 遍历字典方式2---------")
for value in dict_a.values():
    print(f"value = {value}")

print("5) 遍历字典方式3---------")
for k,v in dict_a.items():
    print(f"key = {k} , value = {v}")


dict_a[3] = "叁"
print(f"6) dict_a : {dict_a}")

dict_a[6] = "陆"
print(f"7) dict_a : {dict_a}")

del dict_a[6]
print(f"8) dict_a : {dict_a}")

value = dict_a.pop(5)
print(f"9) value:{value} ,dict_a : {dict_a}")

value = dict_a.pop(100,"defaultVaule")
print(f"10) value:{value} ,dict_a : {dict_a}")

keys = dict_a.keys()
print(f"11) keys : {keys} ,keys type:{type(keys)}")

print(f"12) key in dict_a : {1 in dict_a} ")

dict_a.clear()
print(f"13) dict_a clear : {dict_a}")

books = ["红楼梦","三国演义","水浒","西游记"]
authors = ["曹雪芹","罗贯中","吴承恩","施耐庵"]
dict_a = {key:"《" + value + "》" for key,value in zip(books,authors)}
print(f"14) dict_a : {dict_a}")

