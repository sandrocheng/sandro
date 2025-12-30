# @Version : 1.0
# @Author : sandro
# @Time :2025/12/29 10:12

import re
text = """
员工工资列表，要求从工资表中提取每个人的工资
lucy,1万/月
tom,1.8万/月
luke,1.9万/月
joy,2.0万/每月
tony,2.1万/月
pony,2.2万/月
lily,2.3万/每月
"""
p = re.compile(r'([\d.]+)万/每{0,1}月')
for salary in p.findall(text):
    print(salary)
