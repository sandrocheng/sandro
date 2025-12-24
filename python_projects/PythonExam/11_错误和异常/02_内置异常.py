# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 13:39

# 常见异常案例
# 1 IndexError:当序列抽取超出范围时将被引发，也就是索引错误
word = 'hello world'
try:
    print(word[100])
except Exception as e:
    print(f"1) word[100] {type(e)} : {e}")

list_1 = [1, 2, 3]
try:
    print(list_1[100])
except Exception as e:
    print(f"2) list_1[100] {type(e)} : {e}")

# 2 KeyError:当在现有键集合中找不到指定的映射(字典)键时，引发
dict_1 = {1: '一', 2: '二', 3: '三'}
try:
    print(dict_1[100])
except Exception as e:
    print(f"3) dict_1[100] {type(e)} : {e}")

# 3 NameError:当某个局部或全局名称未找到时将被引发，比如使用了一个没有定义的变量名
try:
    print(dict_2[100])
except Exception as e:
    print(f"4) dict_2[100]  {type(e)}  : {e}")

# 4 TypeError:当一个操作或函数使用了类型不适当的对象时将被引发
try:
    print(word + 1)
except Exception as e:
    print(f"5) word + 1  {type(e)}  : {e}")

# 5 ValueError:当操作或函数接收到具有正确类型但值不适合的参数时，将被引发
try:
    print(int('hello'))
except Exception as e:
    print(f"6) {type(e)}  : {e}")

# 6 ZeroDivisionError:当除法获取余运算的第二个参数为0时，会被引发
try:
    print(1 / 0)
except Exception as e:
    print(f"7) {type(e)} : {e}")

# 7 FileNotFoundError:打开文件/目录时，文件/目录没有找到时会被引发
try:
    f = open('test.txt')
except Exception as e:
    print(f"8) {type(e)} : {e}")

# 8 AttributeError:当属性引用或者赋值失败时将被引发
class A:
    def hi(self):
        pass
a = A()
try:
    print(a.name)
except Exception as e:
    print(f"9) {type(e)} : {e}")