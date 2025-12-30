# @Version : 1.0
# @Author : sandro
# @Time :2025/12/16 14:54

text="jack tom mary sandro nono tom"
print(f"1）text 共有 {len(text)} 个字符")

#全部替换,返回的是副本，原字符串不会改变
text_new = text.replace("tom","汤姆")
print(f"2）text_new ：{text_new} 原text:{text}")

#指定count后，最多只会替换count次
text_new = text_new.replace("汤姆","tom",1)
print(f"3）text_new：{text_new} ")

#按照空格分割
name_list = text.split(" ")
print(f"4）name_list : {name_list} , name_list type : {type(name_list)}")

#按照空格分割,最多分割两次
name_list = text.split(" ",2)
print(f"5）name_list : {name_list}")

print(f"6）text中 'tom' 共出现了 {text.count('tom')} 次")
print(f"6）text中 'tom' 第一次出现的位置是： {text.index('tom')} ")

#strip默认是去除前后的空格
text = "      abc      "
print(f"7）text.strip后是：{text.strip()} 原text是：{text}")

text = "-----abc-----"
#如果前后不是空格，也可以通过指定某个字符进行去除
print(f"8）text.strip后是：{text.strip("-")} 原text是：{text}")

text = "132abc111"
#strip指定的字符串会逐个判断，123说名两头，只要有1 或 2 或 3都会去掉
print(f"8）text.strip后是：{text.strip("123")} 原text是：{text}")

text = "aBc"
print(f"9）text.lower：{text.lower()} 原text是：{text}")
print(f"10）text.upper：{text.upper()} 原text是：{text}")

text = "abc"
text2 = "ABC"
print(f"10）abc > ABC ：{text > text2}")

print(f"11）'程'的unicode编码码值是 ：{ord('程')}")
print(f"12）码值是31243的字符是 ：{chr(31243)}")
print(f"13）abc 改为首字母大写 ：{text.capitalize()}")
print(f"13）abc.isalpha() ：{'abc'.isalpha() }")
print(f"13）abc-.isalpha() ：{'abc-'.isalpha() }")

print(f"14）文本的换行分割")
text = """abc
def
ghi
sdfaf
a123
你好
"""
lines = text.splitlines()
for line in lines:
    print(line)

text = '-abc----abc----abc'
print(f"15）abc首次出现的位置：{text.find('abc')}")

print(f"16) 截取text中 1 ~ 4位置的子字符串：{text[1:4]}")