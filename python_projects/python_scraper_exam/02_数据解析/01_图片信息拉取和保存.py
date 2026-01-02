# @Version : 1.0
# @Author : sandro
# @Time :2025/12/29 9:37

import re

import requests
from util import CommonFileSave

url = "https://pic.qqans.com/up/2023-11/20231116841532481.jpg"
#content返回的是二进制数据
image_data=requests.get(url=url).content
CommonFileSave.saveBytesFile(image_data,"02_数据解析/01_图片信息拉取和保存","test","jpg")