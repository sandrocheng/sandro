# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 16:27
import os

# 以mode=w的方式打开文件，当文件不存在时，系统会自动创建该文件
# 注意，如果系统没有该路径，比如文件的父目录不存在，会报错
f1 = open("../Files/test.txt", "w", encoding="utf-8")
f1.close()
print(f"1)文件创建成功，类型：{type(f1)}")

# 以读的方式打开文件
f2 = open("../Files/read.txt", "r", encoding="utf-8")
print(f"2)读取整个文件内容--------")
content = f2.read()
f2.close()
print(content)

print(f"3)设置读取的最大值，读取整个文件内容 --------")
f3 = open("../Files/read.txt", "r", encoding="utf-8")
# 这里设定最多只读取7个字符
content = f3.read(7)
f3.close()
print(content)

print(f"4)使用readline逐行读取 --------")
f4 = open("../Files/read.txt", "r", encoding="utf-8")
# 注意每一行的"\n"换行符也会读取出来
print(f"第一行数据：{f4.readline()}")
print(f"第二行数据：{f4.readline()}")
f4.close()

print(f"5)使用readline循环读取 --------")
f5 = open("../Files/read.txt", "r", encoding="utf-8")
while True:
    line = f5.readline()
    # 读到空串表示读取完毕，退出循环
    if not line:
        break
    print(line, end="")  # 在输出的时候可以指定end="" 让print输出以后不换行

print("")
f5.close()

print(f"6)使用readlines以列表的形式循环读取 --------")
f6 = open("../Files/read.txt", "r", encoding="utf-8")
listLines = f6.readlines()
print(f"listLines : {listLines} , listLines type: {type(listLines)}")
for line in listLines:
    print(line, end="")
print("")
f6.close()

print(f"7)for line in f 方式循环读取 --------")
# 这种操作能高效利用内存，快速
f7 = open("../Files/read.txt", "r", encoding="utf-8")
for line in f7:
    print(line, end="")
f7.close()
print("")

print(f"8)覆盖写入文件 --------")
# w,写入，并先截断文件,也就是清空文件内容
f8 = open("../Files/write.txt", "w", encoding="utf-8")
for i in range(3):
    count = f8.write(f"第{str(i + 1)}行\n")
    f8.flush()#立刻刷新缓冲区，把数据写入到文件中取
    print(f"写入{count}个字符")
f8.close()

print(f"9)追加写入文件 --------")
#a模式打开文件，是在原来的基础上追加
f9 = open("../Files/write.txt", "a", encoding="utf-8")
count = f9.write("再追加一行\n")
f9.close()
print(f"追加了{count}个字符")

print(f"10)删除文件 --------")
f10 = open("../Files/temp.txt", "w", encoding="utf-8")
f10.close()
if os.path.exists("../Files/temp.txt"):
    print("temp文件创建成功")

try:
    os.remove("../Files/temp.txt")
    print("temp文件删除成功")
    os.remove("../Files/temp1.txt")
    print("temp1文件删除成功")
except FileNotFoundError as e:
    print(f"文件删除失败：{e}")

print(f"11)with子句打开文件 --------")
with open("../Files/read.txt", "r", encoding="utf-8") as f:
    for line in f:
        print(line, end="")
    print("")
print(f"文件流是否已经关闭: {f.closed}")