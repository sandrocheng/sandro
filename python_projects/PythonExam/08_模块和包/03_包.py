# @Version : 1.0
# @Author : sandro
# @Time :2025/12/21 8:33

import my_package_01.model_1
from my_package_01 import model_2

from my_package_01.model_3 import test3

import my_package_01.my_package_02.model_4
from my_package_01.my_package_02.model_5 import cal2

my_package_01.model_1.test1()
model_2.test2()
test3()
print(f"1) {my_package_01.my_package_02.model_4.cal(1,2)}")
print(f"2) {cal2(2,2)}")