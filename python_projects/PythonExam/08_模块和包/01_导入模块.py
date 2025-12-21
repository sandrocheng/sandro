# @Version : 1.0
# @Author : sandro
# @Time :2025/12/20 15:37

#导入自己的模块
import Module_A,Module_B
import math
import random

#导入模块的指定功能
from Module_C import test

from Module_D import *

print("-------开始----------")
Module_A.test()
Module_B.test()

print(f"1) {math.pi}")
print(f"2) {random.randrange(1,3)}")
print(f"3) {random.choice(('一','二','三'))}")
test()
testD()