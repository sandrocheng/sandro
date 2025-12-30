# @Version : 1.0
# @Author : sandro
# @Time :2025/12/29 10:37

import re

text = """
你好
hello
你好
world
email
"""

p = re.compile('你好')
r_list = re.findall(p, text)
print(f"1）普通字符的检索结果: {r_list}")

text = """
叶子是绿色
苹果是红色
香蕉是黄色
hello
world
"""
p = re.compile(r'.色')
r_list = re.findall(p, text)
print(f"2）文本中的颜色有: {r_list}")

text="""
苹果，是绿色的
橙子，是橙色的
香蕉，是黄色的
乌鸦，是黑色的
猴子，
"""
p = re.compile(r'，.*')
r_list = re.findall(p, text)
print(f"3）文本中逗号后面的字符: {r_list}")

text="""
86-12341234
+86-2222222
8612341234
852-12341234
6666686
"""
p = re.compile(r'86-*')
r_list = re.findall(p, text)
print(f"4）匹配86-或者86: {r_list}")

text="""
苹果，是绿色的
橙子，是橙色的
香蕉，是黄色的
乌鸦，是黑色的
猴子，
"""
p = re.compile(r'，.+')
r_list = re.findall(p, text)
print(f"5）文本中逗号后面的字符: {r_list}")

text="""
www.sina.com/a9-/xxxx
www.qq.com/f9-/xxxx
www.163.com/b7/xx
www.google.com/c8-/x
www.baidu.com/e9-/xxxxx
"""
#-?代表 - 可有可无 但是最多有一个
p = re.compile(r'/[a-z]\d-?/')
r_list = re.findall(p, text)
print(f"6）提取域名后面的功能名: {r_list}")


text="""
86-123123,86--123123,86-6--123123,86---6--123123
"""
p = re.compile(r'86-{2,3}')
r_list = re.findall(p, text)
print(f"7）匹配86-- 或者 86---: {r_list}")

text="""
-abac
--ab
-ccc
--
"""
p = re.compile(r'-{2}.')
r_list = re.findall(p, text)
print(f"8）提取--以及后面是任意字符的字符串: {r_list}")

text="<html><head><title>title</title></head></html>"
p = re.compile(r'<.*>')
r_list = re.findall(p, text)
print(f"9）贪婪模式提取: {r_list}")

p = re.compile(r'<.*?>')
r_list = re.findall(p, text)
print(f"10）非贪婪模式提取: {r_list}")

text="""
abc.123
12.abc
13333
6.9999
"""
p = re.compile(r'.*\.')
r_list = re.findall(p, text)
print(f"11）使用\转义 提取 .以及前面的字符串: {r_list}")

text="""
13599999999aaa
13699999999aaa
44499999999
abcddddd
1230000
"""
p = re.compile(r'\d{11}')
r_list = re.findall(p, text)
print(f"12）使用\\d 提取 11位数字的字符串: {r_list}")

text="""
asd
sd__
中文
你好
"""
#\w表示字符或者下划线 +代表至少有一个字符，re.ASCII表示支持ASCII码的字符，其他字符比如中文不支持
p = re.compile(r'\w+',re.ASCII)
r_list = re.findall(p, text)
print(f"13）使用\\w ASCII 提取 英文及下划线的字符: {r_list}")

text="""
a.b
a+b
a*b
a?b
ab
"""
#在方括号中 . + ? * 都只代表普通字符，不需要转义
p = re.compile(r'[a-z][.+?*]')
r_list = re.findall(p, text)
print(f"14）提取任意消息字母开头，包含. + * ？的字符串: {r_list}")

text="""
a.b
a1b
a2b
abb
ab
"""
p = re.compile(r'a[^\d]')
r_list = re.findall(p, text)
print(f"15）提取a开头，第二个字符不是数字的字符串: {r_list}")

text="""
a.b
a1b
a2b
abb
ab
"""
#在方括号中 ^代表不是方括号里的任意元素
p = re.compile(r'a[^.1]')
r_list = re.findall(p, text)
print(f"16）提取a开头，第二个字符不是.或者1的字符: {r_list}")

text="""001-苹果-60,
002-香蕉-70,
003-西瓜-80,
"""
#默认情况下是单行模式，这样^符号只能匹配到第一个元素是数字的字符串
p = re.compile(r'^\d+')
r_list = re.findall(p, text)
print(f"17）单行模式提取水果编号: {r_list}")

text="""
001-苹果-60,
002-香蕉-70,
003-西瓜-80,
"""
#re.MULTILINE代表多行模式，这样每行都可以匹配到头部的字符串了
p = re.compile(r'^\d+',re.MULTILINE)
r_list = re.findall(p, text)
print(f"18）多行模式提取水果编号: {r_list}")

text="""
001-苹果-60
002-香蕉-70
003-西瓜-80
"""
p = re.compile(r'\d+$',re.MULTILINE)
r_list = re.findall(p, text)
print(f"19）多行模式提取水果编号: {r_list}")

text="""
苹果，是绿色的
橙子，是橙色的
香蕉，是黄色的
乌鸦，是黑色的
猴子，
"""
p = re.compile(r'^(.*)，',re.MULTILINE)
r_list = re.findall(p, text)
print(f"20）提取“，”号之前的字符串: {r_list}")

p = re.compile(r'^(.*)(，)',re.MULTILINE)
r_list = re.findall(p, text)
print(f"21）使用两组括号提取“，”号之前的字符串: {r_list}")

text="""
张三，手机号码13599999999
李四，手机号码13699999999
王五，手机号码13766666666
"""
#提取人名和手机号
#根据特征分成2组，第一组是人名，第二组是结尾11位的数字，中间是 ，+任意长度的字符串
#这样就可以把人名和手机号单独提取出来了
#这种写法的思路是写一个正则表达式能够匹配全部字符串，在把需要的部分用括号括起来分组
#最后获取分组的数据即可
p = re.compile(r'^(.+)，.+(\d{11}$)',re.MULTILINE)
r_list = re.findall(p, text)
print(f"22）使用两组括号提取“，”号之前的字符串: {r_list}")