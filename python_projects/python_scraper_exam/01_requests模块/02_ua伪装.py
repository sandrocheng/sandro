# @Version : 1.0
# @Author : sandro
# @Time :2025/12/28 15:22

import requests
from util import CommonFileSave, CommonVar

#经过简单的使用，不难发现搜索结果页面的url是
# https://www.sogou.com/web?query=[搜索词条]

if __name__ == "__main__":
    url: str = "https://www.sogou.com/web"
    #将query和对应值封装到一个字典中去
    #该字典就可以作为request.get方法的参数
    #requests 会遍历字典并根据url发送请求了
    param ={'query':'乌克兰'}

    #UA伪装：将对应的User-Agent封装到一个字典中
    headers={
        'User-Agent':CommonVar.USER_AGENT,
    }

    #指定url,url参数，http的headers
    response = requests.get(url=url, params=param,headers=headers)

    CommonFileSave.saveHtmlFile(response.text,"01_requests模块"
                                ,f"搜狗搜索{param['query']}的页面","html")


