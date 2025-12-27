# @Version : 1.0
# @Author : sandro
# @Time :2025/12/27 23:16
import threading


#线程不安全的单例模式
class Singleton:
    _instance = None

    def __init__(self, name):
        self.name = name

    #new是在init执行的，它的作用是创建一个空对象
    #通过判空，让对象只会创建一次，但是init会执行多次
    #因此name会被后面的调用覆盖
    def __new__(cls, *args, **kwargs):
        if cls._instance:
            return cls._instance
        #使用object类，创建一个空对象
        cls._instance = object.__new__(cls)
        return cls._instance

#线程安全的单例模式

class ThreadSafeSingleton:
    _instance = None
    __lock = threading.Lock()

    def __init__(self, name):
        self.name = name


    def __new__(cls, *args, **kwargs):
        #写两次，可以提升创建的效率，如果类对象已经创建不需要加锁
        if cls._instance:
            return cls._instance


        with cls.__lock:# 把锁做为类变量来使用
            #只有第一次没有new好对象的时候需要加锁
            if cls._instance:
                return cls._instance
            cls._instance = object.__new__(cls)
            return cls._instance

obj1 = Singleton("obj1")
obj2 = Singleton("obj2")
obj3 = ThreadSafeSingleton("obj3")
obj4 = ThreadSafeSingleton("obj4")

print(f"obj1:{obj1} obj_name:{obj1.name},obj2:{obj2} obj_name:{obj1.name}")
print(f"obj3:{obj3} obj_name:{obj3.name},obj2:{obj4} obj_name:{obj4.name}")