#定义可执行文件的依赖关系字符串 方便复用
objects=hello.o main.o
#定义可执行文件的名称
target=helloProgram
#定义makefile中的 CFLAGS环境变量，表示为使用 c99标准编译
CFLAGS="-std=c99"

#定义可执行文件的依赖关系
mainC:$(objects)
	#命令行，命令行前用“tab”键缩进
	cc -o $(target) $(objects) 
#定义main.o的依赖关系
main.o:main.c hello.h

#定义clean功能，清除编译过程中产生的文件 使用make clean命令
clean:
	rm $(objects) $(target) 
