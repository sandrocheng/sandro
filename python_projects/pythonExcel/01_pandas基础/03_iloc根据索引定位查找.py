# @Version : 1.0
# @Author : sandro
# @Time :2026/1/11 16:49
import pandas as pd

df = pd.read_csv(f'../files/main_page_@wangzhian8848_2026_1_10_23_29_55.csv')
print(f"1）当前csv文件的列名：{df.columns}")


print(f"2) 返回第0，1，2行，第1，2，3，4，5列的数据---")
print(df.iloc[0:3,1:6])

print(f"3) 返回第0，1，2行，第0列的数据---")
print(df.iloc[0:3,0])

print(f"4) 第0列的所有行数据---")
print(df.iloc[:,0])

print(f"5) 取一行，指定连序列的数据---")
print(df.iloc[1,2:6])

print(f"6) 取一行，指定不连序列的数据---")
print(df.iloc[1,[0,2,3,4,5,1]])

print(f"7) 取一行，全部列---")
print(df.iloc[1,:])