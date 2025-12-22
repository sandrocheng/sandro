# @Version : 1.0
# @Author : sandro
# @Time :2025/12/22 21:51
from typing import Union


def fun1(a: str):
    for char in a:
        print(char)


fun1('abc')

num: int = 10
list1: list = []
list2: list[int] = [1, 2, 3]
dict1: dict[int, str] = {1: "一", 2: "二"}
print(num)

num2 = 98.1  # type:float
dict2 = {1: "一"}  # type:dict[int,str]


def sumNums(num_1: int, num_2: int) -> int:
    return num_1 + num_2


# 该方法没有返回值
def printInfo(text: str) -> None:
    print(text)


num = sumNums(1, 1)
print(sumNums(2, 3), num)
printInfo("test")

b: Union[int, float, str] = 'abc'
print(b)
b = 1
print(b)
list3:list[Union[str,bool]]=['a','b','c',True]
print(list3)
print(list3)

def cal(num_1: Union[int,float],
        num_2: Union[int,float]) -> Union[int,float]:
    return num_1 + num_2

print(cal(1.1, 2))
