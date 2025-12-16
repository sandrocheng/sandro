# @Version : 1.0
# @Author : sandro
# @Time :2025/12/16 14:24

#ord()函数返回单个字符对应的Unicode编码值，如果参数是多个字符的字符串，会报异常
print(f'1)"韩"对应的unicode码值是：{ord("韩")}')
print('''2)字符串面值有三种写法
		单引号，'Hello world'
		双引号，"Hello world"
		三重单/双引号，使用三重引号的字符串可以跨域多行，其中所有的空白字符都将包含在字符串的字面值当中
''')
text = "你好，world"
print(f"3) text的第2个字符是：{text[1]} ,它的类型是：{type(text[1])}")
print(f"4) text的长度是：{len(text)} ")
print(f"5) 使用for循环遍历字符串的每个字符------------ ")
for letter in text:
    print(letter)
