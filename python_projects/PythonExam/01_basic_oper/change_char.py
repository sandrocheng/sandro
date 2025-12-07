# @Version : 1.0
# @Author : sandro
# @Time :2025/12/1 18:42

# 转义字符演示

#方法中 换行 不需要像java一样使用符号链接，默认有转义支持连接
print("hello "
      "world")

print("tom said \"hello\"")#双引号转义
print("aaaa \nbbbb")#换行

print("123\r4") #\r回车代表回到行首，重新输入，因此123会被抹去
print("abc\t\td")
print("efg\t\tjk")
print("D:\\Program Files\\python\\python3_13\\python.exe")

print("------------")
print("姓名\t年龄\t籍贯\t住址\ntom\t22\t河北\t北京")