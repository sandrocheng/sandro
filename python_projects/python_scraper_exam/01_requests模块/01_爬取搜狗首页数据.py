# @Version : 1.0
# @Author : sandro
# @Time :2025/12/28 15:11

import requests

if __name__ == "__main__":
    url = "https://www.sogou.com/"
    response = requests.get(url=url)
    #response.text返回的是字符串形式的响应数据
    print(f"{response.text}")

