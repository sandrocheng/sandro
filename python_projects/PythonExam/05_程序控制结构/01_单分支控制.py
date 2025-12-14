# @Version : 1.0
# @Author : sandro
# @Time :2025/12/13 21:25


"""
1）当条件表达式为True时，就会执行代码块；如果为False，就不执行
2）python缩进很重要，是用于界定代码块的，相当于java的{}
3）最短的缩进对较长的缩进有包含关系，缩进前后没有要求，但是每个代码块应具有相同的缩进长度（TAB键或者相同个数的空格）
"""
num = int(input("请输入一个整数"))

if num > 10:
    print("num > 10")
    print("if end1")
    num = int(input("请再输入一个整数"))
    if num == 4:
        print("num==4")
        print("if end2")

print("finish")
