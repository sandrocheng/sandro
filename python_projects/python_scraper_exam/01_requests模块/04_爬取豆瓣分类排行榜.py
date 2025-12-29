# @Version : 1.0
# @Author : sandro
# @Time :2025/12/28 17:14
import json

import requests
from util import CommonFileSave, CommonVar

url = 'https://movie.douban.com/j/chart/top_list'

param = {
    'type':'24',
    'interval_id':'100:90',
    'action':'',
    'start':'0',#从第几部开始取
    'limit':'20'#每次取多少
}

headers = {
    "User-Agent":CommonVar.USER_AGENT
}

response = requests.get(url, params=param, headers=headers)
#从返回的数据可以看到，是一个json列表数据
#因此可以直接转换成 python的list数据
list_data = response.json()
CommonFileSave.saveJsonFile(list_data,"01_requests模块",'豆瓣喜剧排行榜')
