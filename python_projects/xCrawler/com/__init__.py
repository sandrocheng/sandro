# @Version : 1.0
# @Author : sandro
# @Time :2026/1/6 11:51
import os
from pathlib import Path


def getProjectRootPath():
    root_path = Path.cwd()
    while True:
        if root_path.name == "com":
            return str(root_path.parent.absolute())
        else:
            root_path = root_path.parent

def getDownloadPath():
    return getProjectRootPath() + "/download/"

def getHtmlPath():
    return getDownloadPath() + "/html/"