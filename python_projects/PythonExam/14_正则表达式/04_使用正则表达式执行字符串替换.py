# @Version : 1.0
# @Author : sandro
# @Time :2025/12/30 9:41

import re

text = """
https://www.xxx.com/vidio/v12345/
https://www.xxx.com/vidio/v11111/
https://www.xxx.com/vidio/v22222/
https://www.xxx.com/vidio/v33333/
https://www.xxx.com/vidio/v44444/
"""

#替换函数，参数是Match对象
def func(match):
    #match的group(0) 返回的是整个匹配上的字符串
    src = match.group(0)

    # match的group(1) 返回的是当前正则表达式提取的第一个group分组的内容
    number = int(match.group(1)) + 6

    dest = f'/v{number}/'
    print(f'{src} -> {dest}')

    return dest

newText = re.sub(r'/v(\d+)/', func, text)
print(newText)
