# @Version : 1.0
# @Author : sandro
# @Time :2025/12/20 15:38

#指定当该文件被使用import *的方式导入时，只有testF这个方法可以导入
__all__ = ['testF']
def testF():
    print(f'ModuleD test，{__name__}')

def testFHello():
    print(f'ModuleD test Hello，{__name__}')


    