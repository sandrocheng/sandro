# @Version : 1.0
# @Author : sandro
# @Time :2025/12/7 12:34
"""
几种格式化输出的方式
"""

age = 18
score = 7.5
gender='男'
name="jack"

# 使用 % 占位符格式化输出
# 这种输出方式比较自由，可以随意指定输出的格式，但是需要注意类型和占位符需要匹配
# %s,输出字符串
# %d,输出整数  ，%03d 表示至少输出3位整数，不足添0
# %f,输出浮点数 ，%.2f，输出时只保留两位小数，不足会添0
# %% ，输出百分号
print("使用占位符 输出个人信息：%s %03d %s %.2f ，占比 30%%" % (name,age,gender,score))

"""
使用format函数输出
这种输出方式，不需要关心变量类型，所有变量都当成字符串拼接后输出
format()函数还有更复杂的使用方式，这里只是基本的使用方式
"""
print("使用format函数 输出个人信息：{} {} {} {}".format(name,age,gender,score))

"""
f-strings输出
注意：使用f-string输出，需要在字符串前增加一个 f
f-string也有跟复杂的使用方式用于各种场景，这里只是基本方式
"""
print(f"使用f-strings 输出个人信息：{name} {age} {gender} {score}")
info = f"使用f-strings变量 输出个人信息：{name} {age} {gender} {score}"
print(info)
