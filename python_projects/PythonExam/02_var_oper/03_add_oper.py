# @Version : 1.0
# @Author : sandro
# @Time :2025/12/7 13:16
"""
python中 “+”的使用
	特点：
		1）当左右两边都是数值类型时，做加法运算
		2）当左右两边都是字符串时，做拼接运算
	注意：
	    python里，不允许一个字符串 + 一个数组
"""

name = "jack"
score = 90

print(score + 100)  # 190
print(name + " hi")  # jack hi
print("100" + "100")  # 100100
print(34.5 + 100)  # 134.5

# TypeError: can only concatenate str (not "int") to str
print(name + score)  # 会报错 python里，不允许一个字符串 + 一个数组
