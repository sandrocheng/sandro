# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 19:25

srcPath = "../Files/read.txt"
dstPath = "../Files/read_bak.txt"

#以二进制读模式打开源文件，一次性读取并拷贝
with open(srcPath, "rb") as f_src:
    data = f_src.read()
    # 以二进制写模式打目标文件
    with open(dstPath, "wb") as f_dct:
        f_dct.write(data)
print("拷贝完成")

#以二进制读模式打开源文件，分多次读取并拷贝
with open(srcPath, "rb") as f_src:
    with open(dstPath, "wb") as f_dst:
        for data in f_src:
            f_dst.write(data)
print("分批拷贝完成")