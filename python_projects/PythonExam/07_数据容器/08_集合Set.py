# @Version : 1.0
# @Author : sandro
# @Time :2025/12/17 22:46

basket ={'pear','apple','orange','apple'}
print(f"1 basket: {basket} ，type: {type(basket)}")

empty_set = set()
empty_dict = {} # {} 定义的是空字典而不是空集合
print(f"2) empty_set={empty_set}， empty_set type: {type(empty_set)} ")
print(f"3) empty_dict={empty_dict} ,empty_dict type: {type(empty_dict)}")

basket ={'pear','apple','orange'}
print(f"4) basket: {basket} ，size: {len(basket)}")
print(f"5) 'pear' in basket : {'pear' in basket}")
basket.add("banana")
print(f"6) add元素，basket: {basket} ，size: {len(basket)}")

basket.remove('orange')
print(f"7) remove元素，basket: {basket} ，size: {len(basket)}")

pop_element = basket.pop()
print(f"8) pop出一个元素: {pop_element} ，basket: {basket}")

basket.clear()
print(f"9) basket.clear: {basket} ，size: {len(basket)}")

basket ={'pear','apple','orange'}
bowl = {'pear','banana'}
print(f"10) 集合的合集：{basket.union(bowl)}")
print(f"11) 集合的交集：{basket.intersection(bowl)}")
print(f"12) 集合的差集：{basket.difference(bowl)}")

# 集合生成式
set_a = {ele * 3 for ele in range(1,5)}
print(f"13) 集合生成式：{set_a}")

set_a = {'''"''' + ele+'''"''' for ele in basket}
print(f"13) 集合生成式：{set_a}")