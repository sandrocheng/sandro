# @Version : 1.0
# @Author : sandro
# @Time :2026/1/1 14:06
import requests
from bs4 import BeautifulSoup

from util import CommonVar


def createBSByFile(_path,_encoding):
    """
    通过文件对象创建BeautifulSoup对象，'lxml'是解析html的工具
    注意html中的字符集要和文件的encoding一致
    比如该文件的<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    已经定义了字符集是gb2321,因此文件也应该以gb2312字符集打开
    :param path: 文件路径
    :param encoding: html中的字符集
    :return:
    """
    fp = open(_path, 'r',encoding=_encoding)
    _soup = BeautifulSoup(fp,'lxml')
    return _soup

def createBSByUrl(_url):
    headers={
        'User-Agent':CommonVar.USER_AGENT,
    }
    response = requests.get(_url,headers=headers)
    #用于‌从响应内容中自动推测实际编码方式‌，它通过内部集成的chardet库分析响应的原始字节数据（content）来实现，
    # 与HTTP响应头的声明无关。‌
    # 主要用于解决中文乱码等问题，当 response.text 出现乱码时，
    # 可将 apparent_encoding 的值赋给 encoding 来覆盖解码方式，
    # 例如 response.encoding = response.apparent_encoding。
    # 但需注意 apparent_encoding 的推测可能因文本内容短小或编码相似而出现误差，
    # 且分析内容会带来额外性能开销，因此在已知编码或处理大量数据时，直接设置 response.encoding 可能更高效。‌
    response.encoding = response.apparent_encoding
    _soup = BeautifulSoup(response.text, 'lxml')
    return _soup
if __name__=='__main__':
    soup = createBSByFile('../downloads/02_数据解析/03_bs4解析/test.html','gb2312')
    print(f"1)soup type : {type(soup)},soup size: {len(soup.text)}")
    # print(soup.prettify())

    soup = createBSByUrl('https://www.qqtn.com/tx/fengjtx_1.html')
    print(f"2)soup type : {type(soup)},soup size: {len(soup.text)}")
    # print(soup.prettify())
    print("3)获取第一次出现的a标签内容----------")
    print(soup.a)
    print("4)获取第一次出现的div标签内容----------")
    print(soup.find('div'))
    print("5)根据属性定位获取第一个匹配ul标签的内容----------------")
    print(soup.find('ul', attrs={'class':'g-gxlist-imgbox'}))
    print("6)根据id获取标签内容-------------")
    print(soup.find(attrs={'id':'tsp_change'}))
    print("7)获取全部li标签内容-------------")
    print(soup.find_all('li'))
    print("8)使用标签选择器获取a标签内容-------------")
    print(soup.select('a'))
    print("9)使用id选择器获取a标签内容-------------")
    print(soup.select('#keyword'))
    print("10)使用类选择器获取标签内容-------------")
    print(soup.select('.g-gxlist-imgbox'))
    print("11)使用后代选择器获取图片内容-------------")
    print(soup.select('ul.g-gxlist-imgbox > li> a > img'))
    print("12)返回class是g-gxlist-imgbox标签下的所有img标签内容-------------")

    print(soup.select('.g-gxlist-imgbox img'))
    print("13)返回g-gxlist-imgbox对应标签的所有文本内容-------------")
    img_list = soup.select('.g-gxlist-imgbox')
    print(img_list[0].text)

    print("14)返回a标签的文本内容-------------")
    string_list = soup.select('.g-gxlist-imgbox a strong')
    print(img_list[0].string)

    print("15)返回a标签的地址-------------")
    print(soup.find('a')['href'])

    print("16)返回https://www.qqtn.com/tx/fengjtx_1.html中的图片地址-------------")

    li_list = soup.select('.g-gxlist-imgbox > li')
    for li in li_list:
        img = li.find('img')
        title = li.find('strong').string
        print(f'title:{title} url:{img['src']}')

