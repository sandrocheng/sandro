# @Version : 1.0
# @Author : sandro
# @Time :2026/1/11 16:49
import pandas as pd

df = pd.read_csv(f'../files/main_page_@wangzhian8848_2026_1_10_23_29_55.csv')
print(f"1）当前csv文件的列名：{df.columns}")
print(f"2）各列类型：{df.dtypes}")

print("3) 转发次数>10的数据")
print(df['转发次数'] > 10)

print("4) 转发次数>=50的全部数据")
print(df[df['转发次数'] >= 50])