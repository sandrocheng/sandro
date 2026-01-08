# @Version : 1.0
# @Author : sandro
# @Time :2026/1/5 18:26

import requests
from lxml import etree

from util import CommonVar

def getIp(_proxies):
    """
    :param _proxies: requests的代理参数
    :return:
    """
    #通过https://www.ip131.com/ 抓取当前ip地址
    url: str = "https://www.ip131.com/"
    headers={
        'User-Agent':CommonVar.USER_AGENT,
    }
    page_html = requests.get(url=url, headers=headers,proxies=_proxies).text
    etree_obj = etree.HTML(page_html)

    ip = etree_obj.xpath("//*[@id='ip_addr']")[0].text
    address = etree_obj.xpath("//div[@id='ip_pos']/text()")[0]

    if _proxies is None:
        print(f"真实 ip: {ip} , address: {address}")
    else :
        print(f"代理 ip: {ip} , address: {address}")
if __name__ == "__main__":
    getIp(None)

    # username="O26010523023329319423"
    # password = "pwd=" + "y4kDTZ1L" + "&pid=" + "-1" + "&cid=" + "-1" + "&uid=" + ""
    # host="flow.hailiangip.com"
    # httpPort="14223"
    # proxyUrl = "http://" + username + ":" + password + "@" + host + ":" + httpPort
    # _proxies={
    #     "https":proxyUrl,
    #     "http": proxyUrl
    # }
    # getIp(_proxies)

    username="V_Am_dE0VNDJsCg6RD-zone-custom-region-hk-session-152c6jnxp-sessTime-120"
    password = "ae6voaSQ1L"
    host="4a89ef32e9f08d03.arq.na.ipidea.online"
    httpPort="2333"
    proxyUrl = "http://" + username + ":" + password + "@" + host + ":" + httpPort
    _proxies={
        "https":proxyUrl,
        "http": proxyUrl
    }
    getIp(_proxies)

