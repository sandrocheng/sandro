# @Version : 1.0
# @Author : sandro
# @Time :2025/12/28 16:20
import requests
from util import CommonFileSave, CommonVar

#定义需要查询的文字
query_word = '数学'

post_url = 'https://fanyi.pdf365.cn/api/wordTranslateResult'
post_data = {
    "plateform": "web",
    "orginL"   : "zh-CN",
    "targetL"  : "en",
    "text"     : query_word,
    "timestamp ":1766912344000,
    "sign"      : "b16e94f1b7c9b8718431f3bb24f713e7",
    "userId"    :""
}

headers = {
    "User-Agent":CommonVar.USER_AGENT
}
response = requests.post(post_url, data=post_data,headers=headers)

CommonFileSave.saveHtmlFile(response.text, "01_requests模块"
                            , "post结果", "json")
