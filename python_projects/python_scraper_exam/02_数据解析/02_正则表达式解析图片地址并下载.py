# @Version : 1.0
# @Author : sandro
# @Time :2026/1/1 12:57
import requests
import re

from util import CommonVar, CommonFileSave

url = "https://www.qqtn.com/tx/fengjtx_1.html"
headers = {
    'User-Agent': CommonVar.USER_AGENT
}
html_text = requests.get(url=url,headers=headers).text

p = re.compile(r'<li><a href=.*<img src="(.*)" alt=')
imgs = re.findall(p, html_text)
print(f"共抓取{len(imgs)}张图片地址")
for imgurl in imgs:
    print(f"{imgurl} 开始下载")
    p = re.compile(r'(.*)/(\d.*)\.jpg$')
    name = re.findall(p,imgurl)[0][1]
    image_data = requests.get(url=imgurl,headers=headers).content
    print(f"{name}下载成功")
    CommonFileSave.saveBytesFile(image_data,
                                 "02_数据解析/02_正则表达式解析图片地址并下载",
                                 name,
                                 "jpg")



