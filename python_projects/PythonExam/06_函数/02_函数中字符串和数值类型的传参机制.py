# @Version : 1.0
# @Author : sandro
# @Time :2025/12/15 14:42

def fun(num):
    print(f"num: {num} ,参数num的地址是：{id(num)}")
    num+=1
    print(f"运算后 num: {num} ,参数num的地址是：{id(num)}")

print("-------数值类型的传参机制---------");
a=10
print(f"fun调用前 a: {a} ,a的地址是：{id(a)}")
fun(a)
print(f"fun调用后 a: {a} ,a的地址是：{id(a)}")


def funStr(string):
    print(f"string: {string} ,参数string的地址是：{id(string)}")
    string += "."
    print(f"运算后 string: {string} ,参数string的地址是：{id(string)}")

print("-------字符串类型的传参机制---------");
string = "hello"
print(f"fun调用前 string: {string} ,string的地址是：{id(string)}")
funStr(string)
print(f"fun调用后 string: {string} ,string的地址是：{id(string)}")
