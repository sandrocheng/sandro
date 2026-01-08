# @Version : 1.0
# @Author : sandro
# @Time :2026/1/6 11:51
import requests

from com.zjz.util import CommonVar
from com.zjz.util.CommonFileSave import saveHtmlFile

url: str = "https://x.com/wangzhian8848"
headers = {
    'User-Agent': CommonVar.USER_AGENT,
}
session = requests.Session()
page_html = session.get(url=url, headers=headers).text
saveHtmlFile(page_html,"html","x","html")