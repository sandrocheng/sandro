# @Version : 1.0
# @Author : sandro
# @Time :2025/12/20 16:10

#Module_B中有执行代码，因此导入的时候，有该模块的执行代码输出
#不管使用哪种导入，模块中的执行代码都会被执行

import Module_B
from Module_C import test
from Module_D import *

import Module_E

from Module_F import *
testF()
# 因为 Module_F 是使用 import * 的方式被导入的 因此testFHello()无法使用