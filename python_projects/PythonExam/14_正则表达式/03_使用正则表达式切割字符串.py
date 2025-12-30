# @Version : 1.0
# @Author : sandro
# @Time :2025/12/30 9:41

import re

text="关羽；  张飞， 赵云，马超， 黄忠 李逵"

#[；，\s]表示使用；，非空白空格任意一种均可，并且该符号周围还可以有不定数量的空格
namelist=re.split(r'[；，\s]\s*',text)
print(namelist)