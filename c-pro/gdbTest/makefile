#make -f makefile
#通过自定义变量,自带变量，自动变量 简化文件书写
#通过模式规则，继续简化文件书写
#通过makefile 函数 继续简化文件书写
#增加clean伪目标，提供清理编译文件的接口给外部使用

CC=gcc #重新给自带变量 CC 赋值为gcc
CPPFLAGS=-I./  #重新给自带变量CPPFLAGS 赋值
log_prefix=[log]
target=main #定义main目标变量
src=$(wildcard *.c) #查找当前目录下所有.c文件，返回给src
objects=$(patsubst %.c,%.o,$(src)) #把src中所有.c 替换为.o

#命令可以并列写多个，比如执行完以后，输出以下内部变量，方便调试
$(target):$(objects)
	$(CC) -o $@ $^
	@echo "$(log_prefix)src : $(src) \n$(log_prefix)objects : $(objects)\n"

%.o:%.c
	$(CC) -c $< -o $@ $(CPPFLAGS)

#因为clean目标没有被依赖，而正常执行的时候默认执行第一个目标，就是打包目标，打包目标执行完毕后，就结束流程，clean不会再执行
#因此clean只能再外部用命令手动执行
# make clean ,用于执行默认makefile文件中的clean
# make -f makefile6 clean  ，用户指定某个makefile文件的clean
# rm前面加一个"-",作用是当这个语句失败时，也可以继续执行下一个语句
.PHONY:clean
clean:
	-rm -f $(objects) 
	-rm -f $(target)

#增加一个info伪目标，用于输出内部一些变量	
.PHONY:info
info:
	@echo "$(log_prefix)src : $(src) \n$(log_prefix)objects : $(objects)"
