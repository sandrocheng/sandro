# @Version : 1.0
# @Author : sandro
# @Time :2026/1/6 20:48
"""
分析个人主页，找出每个帖子的地址，摘要，发帖时间，回复数量，转发数量，点在数量，阅读数量
"""

from lxml import etree

from com import getHtmlPath

if __name__ == "__main__":
    etreeObj = etree.parse(getHtmlPath()+"/2026-1-6-1553.html",
                           parser=etree.HTMLParser())

    post_list = etreeObj.xpath('//span/text()')
    print(f"获取帖子长度：{len(post_list)}" )
    for post in post_list:
        print(post)
