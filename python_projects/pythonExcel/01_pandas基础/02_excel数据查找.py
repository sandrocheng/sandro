# @Version : 1.0
# @Author : sandro
# @Time :2026/1/11 13:54
import pandas as pd

df = pd.read_csv(f'../files/main_page_@wangzhian8848_2026_1_10_23_29_55.csv')
print("1) 按列名查找---------")
print(df['帖子主页'])

print("2) 按多个列名查找---------")
print(df[['帖子主页','当前帖子内容']])

print("3) df.head()---------")
print(df.head(n=10))

print("4) df.sample()---------")
print(df.sample(n=4))

print("5) df[0:5]---------")
print(df[0:5])

print("6) loc获取一行数据---------")
print(df.loc[0,:])

print("7) loc获取多行，指定连续列数据---------")
print(df.loc[0:2,'帖子主页':'当前帖子内容'])

print("8) loc获取一列数据---------")
print(df.loc[0:2,'帖子主页'])

print("9) loc获取一列所有数据---------")
print(df.loc[:,'帖子主页'])

print("10) loc获取一行，指定不连续列---------")
print(df.loc[2,['帖子主页','当前帖子内容']])