# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 18:45
import os

path = "../Files/temp/aa"
path2 = "../Files/temp/bb"
if os.path.exists(path):
    if os.path.isdir(path):
        print(f"{os.path.abspath(path)}目录已经存在")
    else:
        print(f"{os.path.abspath(path)} 不是目录")
else:
    os.makedirs(path)
    os.makedirs(path2)
    print(f"{path}和 {path2}目录创建成功")

if os.path.exists(path2):
    os.removedirs(path2)
    print(f"{os.path.abspath(path2)} 删除成功")