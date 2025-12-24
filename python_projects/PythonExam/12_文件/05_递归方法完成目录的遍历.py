# @Version : 1.0
# @Author : sandro
# @Time :2025/12/24 20:01
import os

def printFiles(path_list:list, dir:str)->None:
    for filePath in path_list:
        child_path = dir + '/' + filePath
        if os.path.isdir(child_path):
            sublist = os.listdir(child_path)
            printFiles(sublist,child_path)
        else:
            print(f"{dir}/{filePath}")

path = "../"
absPath = os.path.abspath(path)
print(absPath)
p_list = os.listdir(absPath)
print(p_list)
print("开始遍历-------------")
printFiles(p_list,absPath)