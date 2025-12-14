# @Version : 1.0
# @Author : sandro
# @Time :2025/12/8 14:21
# 字符串 的使用注意事项
import sys

str1 = 'tom说 "hello"'  # 可以在单引号里 直接使用双引号，不需要转义
str2 = " tom说 'hello'"  # 反过来也可以
print(str1, str2)  # tom说 "hello" tom说 'hello'

print(type(str1))

print(str1 + str2)  # 通过 + 号可以连接多个字符串

# python中不支持单字符类型，单字符在Python中也是作为一个字符串使用
str3 = 'a'
print(type(str3), sys.getsizeof(str3))  # <class 'str'> 42

# 使用三个单引号 ，如：'''内容''' ,或三个双引号，如"""内容"""，可以使字符串原样输出
# 一般在输出格式比较复杂的内容比较有用，比如输出一段代码
str4 = '''
    if a:
        print("a:",a)
'''
print(str4)

# 在字符串前面加'r'，可以使整个字符串不会被转义
str5 = r'\n是换行的意思'
print(str5)

# Python仅保存一份相同且不可变字符串，不同的值被存放在字符串的驻留池中，Python的驻留机制对相同的字符串只保留一份拷贝
# 后续创建相同字符串时，不会开辟空间，而是把该字符串的地址赋给新创建的变量

# 驻留机制的几种情况,pycharm对驻留空间进行了优化，不适用于以下几种情况
# 以下几种情况只使用于原生python
# 2.1 字符串是由26个英文字母大小写，0~9，_组成
# 2.2 字符串长度为0或1时
# 2.3 字符串在编译时期驻留，而非运行时
# 2.4 -5~256的整数数字
str6 = 'Hello'
str7 = 'Hello'
str8 = 'Hello'

#id(object)函数返回对象的内存地址
print(f"str6的地址是 {id(str6)}")#2231742076208
print(f"str7的地址是 {id(str7)}")#2231742076208
print(f"str8的地址是 {id(str8)}")#2231742076208