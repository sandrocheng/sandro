# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 19:02
import os
import time

f_stat = os.stat("../Files/write.txt")
print(f"文件大小：{f_stat.st_size} 字节")
print(f"最近的访问时间：{time.ctime(f_stat.st_atime)} ")
print(f"最近的修改时间：{time.ctime(f_stat.st_mtime)}")
print(f"文件创建时间：{time.ctime(f_stat.st_ctime)}")
