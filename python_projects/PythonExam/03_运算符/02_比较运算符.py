# @Version : 1.0
# @Author : sandro
# @Time :2025/12/12 21:03

a="hello"
b="hello"

#注意，这里并不是因为a和b的值相等才返回true
#而是因为字符串相同所以放到了字符串的驻留池中，a和b都指向了这个驻留池的地址，因此才返回true
print(a is b)

a="hello"
b=a+"ss"
c=a+"SS"
c=c.lower()

#c 和 b的赋值是在运行时期执行的，值不会放到驻留池中，因此即使值相等，c和b也不会指向同一个地址
print(f"c={c} b={b}  c is b = {c is b}")