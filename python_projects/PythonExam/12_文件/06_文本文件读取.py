# @Version : 1.0
# @Author : sandro
# @Time :2026/1/16 15:28
import os

def readFile(path):

    with open(path, "r", encoding="utf-8") as f:
        while True:
            line = f.readline()
            if line and line.find('abc'):
                if line.find('竞技场') != -1:
                    print(f"{path}------------")
                    print(line)
            else:
                break

def printFiles(path_list:list, dir:str)->None:
    for filePath in path_list:
        child_path = dir + '/' + filePath
        if os.path.isdir(child_path):
            sublist = os.listdir(child_path)
            printFiles(sublist,child_path)
        else:
            readFile(f"{dir}/{filePath}")

path = "C:/Users/程亮/Desktop/Text/CHT"
p_list = os.listdir(path)
print("开始遍历-------------")
printFiles(p_list,path)