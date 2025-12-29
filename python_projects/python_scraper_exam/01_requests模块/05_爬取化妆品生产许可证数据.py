# @Version : 1.0
# @Author : sandro
# @Time :2025/12/28 18:02
import requests

from util import CommonVar,CommonFileSave

url = "https://www.nmpa.gov.cn/datasearch/search-result.html"
headers = {
    "User-Agent":CommonVar.USER_AGENT
}

response = requests.get(url, headers=headers)
CommonFileSave.saveHtmlFile(response.text,"01_requests模块"
                            , "爬取化妆品生产许可证数据", "html")
