# @Version : 1.0
# @Author : sandro
# @Time :2026/1/5 11:25

import requests
from lxml import etree

from util import CommonVar, CommonFileSave


if __name__ == '__main__':
    url = "https://www.guwendao.net/user/login.aspx"
    username = "foxone1980118@sina.com"
    headers = {
        'User-Agent': CommonVar.USER_AGENT,
    }

    login_page = requests.get(url, headers=headers).text

    tree = etree.HTML(login_page)
    code_image_src = "https://www.guwendao.net/" + tree.xpath("//*[@id='imgCode']/@src")[0]
    viewState = tree.xpath("//input[@id='__VIEWSTATE']/@value")[0]
    print(f"code_image_src: {code_image_src} ,viewState: {viewState}")
    image_data = requests.get(code_image_src, headers=headers).content
    CommonFileSave.saveBytesFile(image_data, "03_模拟登录/01_模拟登录古诗文网", "code", "jpg")
    print("验证码文件已保存到：/downloads/03_模拟登录/01_模拟登录古诗文网/code.jpg中")

    code = input("请输登录验证码：")
    password = input("请输登录邮箱密码：")

    while(True):
        result =input(f"密码：{password},验证码：{code} 确认请输入y,其他重新输入:")
        if result == "y":
            break
        else:
            code = input("请输登录验证码：")
            password = input("请输登录邮箱密码：")

    data={
        "__VIEWSTATE":viewState,
        "__VIEWSTATEGENERATOR":"C93BE1AE",
        "from":"",
        "email":"foxone1980118@sina.com",
        "pwd":password,
        "code":code
    }
    loginRes = requests.post(url, headers=headers,data=data)
    print(f"status_code : {loginRes.status_code}")
    login_page = loginRes.text
    CommonFileSave.saveHtmlFile(login_page,"03_模拟登录/01_模拟登录古诗文网"
                                , "login", "html")

