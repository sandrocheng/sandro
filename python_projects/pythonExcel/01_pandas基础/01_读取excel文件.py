# @Version : 1.0
# @Author : sandro
# @Time :2026/1/11 10:19
from pathlib import Path

import pandas as pd

print(f"当前pandas版本：{pd.__version__}")

df = pd.read_excel(f'../files/test.xlsx')
print("1)----------读取excel文件")
print(df)

df = pd.read_csv(f'../files/main_page_@wangzhian8848_2026_1_10_23_29_55.csv')
print("2)----------读取csv文件")
print(df)

print("3)----------display.max_rows display.max_columns 读取csv文件")
# pd.set_option('display.max_rows', None)
# pd.set_option('display.max_columns', None)
print(df)

print("4)----------df.info()")
print(df.info())

print("5)----------df.shape")
print(df.shape)

print("6)----------df.dtypes")
print(df.dtypes)

print("6)----------df.describe()")
print(df.describe())

print("7)----------df.index")
print(df.index)

print("8)----------df.columns")
print(df.columns)

print("8)----------df.values")
print(df.values)