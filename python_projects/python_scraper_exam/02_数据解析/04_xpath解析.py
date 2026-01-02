# @Version : 1.0
# @Author : sandro
# @Time :2026/1/2 11:05
import chardet
import requests
from lxml import etree

from util import CommonVar

if __name__=='__main__':
    etreeObj = etree.parse("../downloads/02_数据解析/03_bs4解析/test.html",
                           parser=etree.HTMLParser())
    print("1) 通过本地html文本加载，并输出所有a标签的内容------------------")
    print(etreeObj.xpath("//a/text()"))

    headers={
        'User-Agent':CommonVar.USER_AGENT,
    }
    page_html = requests.get('https://www.qqtn.com/tx/fengjtx_1.html',headers=headers)
    # 注意requests拉取的html编码可能不是utf-8的，因此需要指定一下当前页面的字符集
    # 否则etreeObj中的数据也会是乱码
    # 通常字符集信息在页面的meta元素中，
    # 比如：<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    page_html.encoding = 'gb2312'
    etreeObj = etree.HTML(page_html.text)
    print("2) 通过下载的html字符串对象创建etree对象，并输出title标签的内容------------------")
    r = etreeObj.xpath("/html/head/title")
    for e in r:
        print(e.text)
    print("3) 获取body中所有div内容------------------")
    r = etreeObj.xpath("/html/body/div")
    print(r)

    print("4) 获取所有div内容------------------")
    r = etreeObj.xpath("//div")
    print(r)

    print("5) 通过属性定位获取标签元素------------------")
    r = etreeObj.xpath("//ul[@class='g-gxlist-imgbox']/li//img")
    print(r)

    print("6) 通过属性+索引定位获取标签元素------------------")
    r = etreeObj.xpath("//ul[@class='g-gxlist-imgbox']/li[1]//img")
    print(r)

    print("7) 获取标签元素的文本------------------")
    r = etreeObj.xpath("//ul[@class='g-gxlist-imgbox']//strong/text()")
    print(r)

    print("8) 获取img的src属性值------------------")
    r = etreeObj.xpath("//ul[@class='g-gxlist-imgbox']//img/@src")
    print(r)

    print("9) 标签的继续查找------------------")
    li_list = etreeObj.xpath("//ul[@class='g-gxlist-imgbox']/li")
    for li in li_list:
        #./代表当前li标签位置
        title = li.xpath(".//strong/text()")
        src = li.xpath(".//img/@src")
        print(title[0],src[0])

    print("10) 多个表达式合并------------------")
    li_list = etreeObj.xpath("//ul[@class='g-gxlist-imgbox']/li | "
                             "//ul[@class='m-tj-toptx']/li |"
                             "//div[@class='g-img-tank g-main-bg m-margin15 tx2020']//li")
    for li in li_list:
        #./代表当前li标签位置
        title = li.xpath(".//img/@alt")
        src = li.xpath(".//img/@src")
        print(title[0],src[0])