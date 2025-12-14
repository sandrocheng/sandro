# @Version : 1.0
# @Author : sandro
# @Time :2025/12/13 13:16

#从控制台接受用户的信息 姓名，年龄，薪水
name = input("请输入姓名：")
age = input("请输入年龄：")
score = float(input("请输如成绩："))

#从input返回的数据都是字符串类型的
print(f"name={name}-{type(name)},age={age}-{type(age)},score={score}-{type(score)}")