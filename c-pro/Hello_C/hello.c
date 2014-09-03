/*
 * hello.c
 *
 *  Created on: 2013-5-22
 *      Author: sandro
 */

#include "hello.h"

#define PI 3.14159f//定义符号 PI,#define语句中，标识符都为大写, 这种方式PI只是一个
					//字符序列，代码中的所有PI在编译前都会被取代
#define STR_LEN 50

void funArglistTest(){

}

int sum(int a,int b){
	return a+b;
}

int bigerNum(int a, int b){
	return a>b?a:b;
}

void pointer_test(){
	short value = 999L;
	short *pValue = &value;
	printf("*pValue is %d",*pValue);
	printf("\n&pValue is %p",&pValue);
	printf("\npValue is %p",pValue);
	printf("\n&value is %p",&value);
	printf("\npValue's size : %d",sizeof(pValue));
	printf("\nvalue's size : %d\n",sizeof(value));

	*pValue= 888;
	printf("\nvalue is %d : " ,value);
	printf("\n*pValue is %d",*pValue);
	printf("\n&pValue is %p",&pValue);
	printf("\npValue is %p\n",pValue);

	int (*pFun) (int,int);
	pFun = sum;
	printf("\nsum a + b use pFun : %d" , pFun(1,2));
	pFun = bigerNum;
	printf("\nbigerNum 40 and 5 use pFun is %d" , pFun(40,5));
	int (*pFuns[2])(int,int) = {sum,bigerNum};
	for(int i=0;i<2;i++){
		printf("\npFuns[%d] is %d ",i,pFuns[i](1,2));
	}

	for(int i=0;i<2;i++){
		printf("\nany_func[%d] : %d",i,any_func(pFuns[i],4,55));
	}
}

int any_func(int(*_pfun)(int,int),int x,int y){
	return _pfun(x,y);
}

void string_test(){

	char destination[] = "This string will be replaced............";
	char source[] = "This string will be copied ";
	if(sizeof(source) <= sizeof(destination)){
		strcpy(destination,source);
	}
	printf("%s\n",destination);

	char str1[] = "abcdefg higklmn opqrst uvwxyz";
	char str2[] = "0123456789";
	strncpy(str1,str2,strlen(str2));
	printf("%s\n",str1);

	char str3[] = "123456 那我他";
	size_t count = 0;
	count = strlen(str3);
	printf("\"%s\" has %d chars ,size is %d\n",str3,count,sizeof(str3));

	int len = STR_LEN;
	char str4[STR_LEN] = "abcdefg ";
	char str5[STR_LEN] = "hijklmnopqrst";
	if(len >= strlen(str4) + strlen(str5)){
		printf("%s",strcat(str4,str5));
	}

	char str6[] = "abc";
	char str7[] = "ABC";
	printf("\n\"%s\" and \"%s\" cmp is %d",str7,str6,strcmp(str7,str6));

	char str8[] = "abc123";
	char c='c';
	char *pGot_char = NULL;
	pGot_char = strchr(str8,c);
	if(pGot_char != NULL){
		printf("\n Character found was %C.",*pGot_char);
	}else{
		printf("\n not found %c in %s",c , str8);
	}

	char text1[] = "The words has something 一百";
	char text2[] = "一百";
	char text3[] = "abc";
	char *pFound = NULL;
	pFound = strstr(text1,text2);
	if(pFound == NULL){
		printf("\n \"%s\" is not in \"%s\"",text2,text1);
	}else{
		printf("\n \"%s\" is in \"%s\"",text2,text1);
	}
	pFound = strstr(text1,text3);
	if(pFound == NULL){
		printf("\n \"%s\" is not in \"%s\"",text3,text1);
	}
}

void say_hello()
{
	printf("HelloWorld! \n");
	printf("If at first you don\'t succeed,try,try,try again!");
	printf("\n\"\tIt is a wise father that knows his own child.\"");
	printf("\n Be careful!!\a");
	printf("\n 10%%");

	int salary = 1000L;
	int month = 1;
	printf("\nMy salary is %d every %d month",salary,month);

	int num = 011;//011为8进制表示 011 的8进制转为10进制数为9
	printf ("\n8进制\"011\" 对应10进制为 ：%d",num);

	num = 0x10;//16进制表示法，0x10对应10进制为 16
	printf ("\n16进制\"0x10\" 对应10进制为 ：%d",num);

	double doubleNum = 123E30;
	printf("\ndoubleNum is %1f" , doubleNum);

	float floatNum = 1E-2f;
	printf ("\n科学技术法\"1E-2f\"  ：%f",floatNum);

	/**
	 * %[width][.precision][modifier]f
	 * width值是一个整数，指定输出的总字符数，
	 * precision值也是一个整数，指定小数点后的位数。
	 * 当输出的值类型是double的时候，modifier部分就是L。
	 */
	floatNum = 98222E-4f;
	printf ("\n\"98222E-4f\"保留两位小数  ：%.2f",floatNum);

	float pi = PI;
	printf("\n\"#define PI\"的值为 ：%f" ,pi);

	const float constNum = 1.0f;
	printf("\n常量\"constNum\"的值为 ：%f" ,constNum);


//	int x = 0;
//	printf("\n输入一个整形数字赋值给\"x\"，然后按回车键 ：");
//	scanf("%d",&x);
//	printf("input x is : %d ",x);

	printf("\nVariables of type char occupy %d bytes",sizeof(char));
	printf("\nVariables of type short occupy %d bytes",sizeof(short));
	printf("\nVariables of type int occupy %d bytes",sizeof(int));
	printf("\nVariables of type long occupy %d bytes",sizeof(long));
	printf("\nVariables of type long long occupy %d bytes",sizeof(long long));
	printf("\nVariables of type float occupy %d bytes",sizeof(float));
	printf("\nVariables of type double occupy %d bytes",sizeof(double));
	printf("\nVariables of type long double occupy %d bytes",sizeof(long double));
	printf("\nVariables of type long double occupy %d bytes",sizeof(long double));
	printf("\n\"汉字\" occupy %d bytes",sizeof("汉字"));

}

