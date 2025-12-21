# @Version : 1.0
# @Author : sandro
# @Time :2025/12/20 15:38

def testE():
    print(f'ModuleD test，{__name__}')

#通过判断__name__来确认当前的执行代码是否是在导入时刻，如果是导入时刻则不执行
if __name__ != '__main__':
    testE()
    