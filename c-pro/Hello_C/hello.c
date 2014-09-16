/*
 * hello.c
 *
 *  Created on: 2013-5-22
 *      Author: sandro
 */

#include "hello.h"

#define PI 3.14159f//定义符号 PI,#define语句中，标识符都为大写, 这种方式PI只是一个
//字符序列，代码中的所有PI在编译前都会被取代

const int LEN = 80;

struct horse {
	short age;
	int height;
	char name[30];
};

struct horseman {
	char name[30];
	short age;
	struct horse _horse;
};

struct family {
	char name[20];
	int age;
	char father[20];
	char mother[20];
};

struct{
	char *filename;
	FILE *pfile;
}file_global_meta = {"/home/sandro/myfile.bin",NULL};

void get_person(int num,Family *pfamily){
	pfamily->ma_name[0]= '\0';
	pfamily->pa_name[0] = '\0';
	pfamily->name[0]='\0';
	pfamily->dob.day = num;
	pfamily->dob.month = num;
	pfamily->dob.year= num;

	char pex[16];
	sprintf(pex,"name_%d",num);
	strcat(pfamily->name,pex);

	if (num % 2 == 0 && num >= 2) {
		pex[0]='\0';
		sprintf(pex, "name_%d", num - 2);
		strcat(pfamily->pa_name, pex);
		pex[0]='\0';
		sprintf(pex, "name_%d", num - 1);
		strcat(pfamily->ma_name, pex);
	}
//	printf("\n name : %s ,pa name : %s ,ma name %s",pfamily->name,pfamily->pa_name,pfamily->ma_name);
}

void saveFile(){
	Family member;
	if(!(file_global_meta.pfile = fopen(file_global_meta.filename,"wb"))){
		printf("unable us wb fopen func with name %s",file_global_meta.filename);
		exit(1);
	}

	for(int i = 0;i<9;i++){
		get_person(i,&member);
		fwrite(&member,sizeof member,1,file_global_meta.pfile);
	}
	fclose(file_global_meta.pfile);
	printf("\nfile save success! start to read file");

	if(!(file_global_meta.pfile = fopen(file_global_meta.filename,"rb"))){
		printf("unable us rb fopen func with name %s",file_global_meta.filename);
		exit(1);
	}
}

void addDate(char *pStr,int year,int month,int day){
	char result[32];
	sprintf(result,"(%d月%d日)",(month+1),(day + 1));
	strcat(pStr,result);
}

void get_parent_birthday(Family *pmember,char *pStr){
	Family relative;
	if(strlen(pmember->pa_name) > 0){
		strcat(pStr,",papa is ");
		strcat(pStr,pmember->pa_name);

		rewind(file_global_meta.pfile);
		while(fread(&relative,sizeof(Family),1,file_global_meta.pfile)){
			if(strcmp(pmember->pa_name,relative.name)==0){
				addDate(pStr,relative.dob.year,relative.dob.month,relative.dob.day);
			}
		}
	}
	if(strlen(pmember->ma_name) > 0){
		strcat(pStr," ,mama is ");
		strcat(pStr, pmember->ma_name);
		rewind(file_global_meta.pfile);
		while(fread(&relative,sizeof(Family),1,file_global_meta.pfile)){
			if(strcmp(pmember->ma_name,relative.name)==0){
				addDate(pStr,relative.dob.year,relative.dob.month,relative.dob.day);
			}
		}
	}
}

void readFile(){
	Family member;
    char *presult = (char *)calloc(256,sizeof(char));
    if(presult == NULL){
    	exit(1);
    }
    fpos_t current;
	while(fread(&member,sizeof member,1,file_global_meta.pfile)){
		presult[0]='\0';
		strcat(presult,"name is ");
		strcat(presult,member.name);
		strcat(presult,", ");
		fgetpos(file_global_meta.pfile,&current);
		get_parent_birthday(&member,presult);
		fsetpos(file_global_meta.pfile,&current);
		printf("\n%s",presult);
	}
	fclose(file_global_meta.pfile);
	free(presult);
	printf("\n\n read over");
}

void file_seek_test(){
	saveFile();
	readFile();
	remove(file_global_meta.filename);
}

void file_byte_test(){
	char *filename = "/home/sandro/myfile.bin";
	FILE *pfile= NULL;
	if(!(pfile = fopen(filename,"wb"))){
		printf("opening %s fils error!", filename);
		exit(1);
	}

	short pdata[] = {2,4,8,16,32,64,128,256,512,1024};
	int pdataLen = sizeof(pdata)/sizeof(short);
	size_t wcount = fwrite(pdata,sizeof(short),pdataLen,pfile);
	fclose(pfile);
	printf("save data success , save %d short data",wcount);

	if(!(pfile = fopen(filename,"rb"))){
		printf("opening %s fils error!", filename);
		exit(1);
	}

	short rdata[pdataLen];
	wcount = fread(rdata,sizeof(short),pdataLen,pfile);
	printf("\nread %d short data : \n",wcount);
	for(int i = 0;i<wcount;i++){
		printf("%d," , rdata[i]);
	}
	fclose(pfile);
	remove(filename);
}

void file_test2() {
	char *phrases[]={"1) abcedddd\n",
			"2) 你妈第三方马赛地方妈的私密发\n",
			"3) 1234123123213",
			" 阿德发（。。。）『---』!@#$%\n"
	};

	char more[LEN];
	FILE *pfile = NULL;
	char *filename = "/home/sandro/myfile.txt";

	if(!(pfile = fopen(filename,"w"))){
		printf("opening %s fils error!", filename);
		exit(1);
	}

	int count = sizeof phrases/sizeof phrases[0];
	for(int i=0;i<count;i++){
		fputs(phrases[i],pfile);
	}
	fclose(pfile);
	printf("\n%s file save success! ",filename);

	if(!(pfile = fopen(filename,"a"))){
		printf("opening %s fils error!", filename);
		exit(1);
	}
	printf("enter new phrase add in %s ,\"\\n\" to quit \n",filename);
	while(true){
		fgets(more,LEN,stdin);
		if(more[0]== '\n'){
			break;
		}
		fputs(more,pfile);
	}
	fclose(pfile);
	printf("enter phase is add into file\n");

	if(!(pfile = fopen(filename,"r"))){
		printf("opening %s fils error!", filename);
		exit(1);
	}
	printf("\n The phrases in file are :\n");
	while(fgets(more,LEN,pfile)){
		printf("%s",more);
	}
	fclose(pfile);
	remove(filename);
	printf("\n%s is removed.",filename);
}

void file_test() {
	char editStr[LEN];
	int inputStrLen = 0;
	int myChar = 0;
	FILE *pfile = NULL;
	char *filename = "/home/sandro/myfile.txt";
	printf("输入不超过80个字符的字符串，保存到文件中\n");
	fgets(editStr, LEN, stdin);

	if (!(pfile = fopen(filename, "w"))) {
		printf("opening %s fils error!", filename);
		exit(1);
	}
	inputStrLen = strlen(editStr);
	for (int i = 0; i < inputStrLen; i++) {
		fputc(editStr[i], pfile);
	}
	fclose(pfile);
	printf("save faile success! save %d char", inputStrLen);

	printf("\nstart reading file %s\n", filename);
	if (!(pfile = fopen(filename, "r"))) {
		printf("\nopening %s fils error!", filename);
		exit(1);
	}
	while (EOF != (myChar = fgetc(pfile))) {
		putchar(myChar);
	}
	putchar('\n');
	fclose(pfile);
	printf("get %s all chars success", filename);
	remove(filename);
	printf("\nremove file %s", filename);
}

void struct_test() {
	printf("size of horse struct is %d", sizeof(struct horse));
	struct horse dobbin = { 24, 17, "dobbin" };
	struct horse trigger = { 22, 19, "trigger" };
	printf("\nage %d height %d name %s", dobbin.age, dobbin.height,
			dobbin.name);

	trigger.age++;
	trigger.height--;
	strcpy(trigger.name, "horse_trigger");
	printf("\nage %d height %d name %s", trigger.age, trigger.height,
			trigger.name);

	struct horse *phorse;
	phorse = &dobbin;
	printf("\nphorse age %d,height %d,name %s", (*phorse).age, phorse->height,
			phorse->name);

	struct horseman foo;
	foo.age = 20;
	strcpy(foo.name, "foo");
	foo._horse.age = 10;
	foo._horse.height = 100;
	strcpy(foo._horse.name, "foo\'s horse");

	struct horseman boo;
	boo.age = 21;
	strcpy(boo.name, "boo");
	boo._horse = foo._horse;
	strcpy(boo._horse.name, "boo\'s horse");

	printf("\nfoo.name %s , foo.age %d ,foo._horse.name %s,foo.horse.age %d",
			foo.name, foo.age, foo._horse.name, foo._horse.age);
	printf("\nboo.name %s , boo.age %d ,boo._horse.name %s,boo.horse.age %d",
			boo.name, boo.age, boo._horse.name, boo._horse.age);

}

void c_date_time_test(){
	clock_t start,end;
	time_t calendar_start = time(NULL);
	printf("calendar_start is %lu",(long)calendar_start);
	double cpu_time;
	start = clock();
	while(true){
		end = clock();
		cpu_time = (double)(end-start)/CLOCKS_PER_SEC;
		if(cpu_time >= 3){
			break;
		}
	}
	printf("\nstart : %lf ,end : %lf ,cpu_time : %lf"
			,(double)start,(double)end,cpu_time);
	time_t calendar_end = time(NULL);
	printf("\ncalendar_end is %lu",(long)calendar_end);
	printf("\ncalendar diffitme %lf",difftime(calendar_end,calendar_start));
	printf("\ndate : %s ", ctime(&calendar_end));

	struct tm *time_data;
	time_data = localtime(&calendar_end);
	const char *days[] = {"周日","周一","周二","周三","周四","周五","周六"};
	const char *months[] = {"一月","二月","三月","四月","五月","六月"
			,"七月","八月","九月","十月","十一月","十二月"};
	printf("%d 年 %s %d 日 ，%s,%d 点 %d 分 %d 秒",
			(time_data->tm_year + 1900),
			months[time_data->tm_mon],
			time_data->tm_mday,
			days[time_data->tm_wday],
			time_data->tm_hour,
			time_data->tm_min,
			time_data->tm_sec);

	struct tm birthday;
	birthday.tm_hour = birthday.tm_min = 0;
	birthday.tm_sec = 0;
	birthday.tm_isdst = -1;

	birthday.tm_mon = 11 - 1;
	birthday.tm_mday = 8;
	birthday.tm_year = 1980 - 1900;

	if(mktime(&birthday) == (time_t) - 1){
		printf("\nOperation failed.");
		return ;
	}
	printf("\nbithday 1980-11-8 is %s",days[birthday.tm_wday]);
}

/**
 * 变元个数可变的函数,用0表示为最后一个值
 */
void funArglistTest(double v1, double v2, ...) {
	va_list parg;
	double sum = v1 + v2;
	double value = 0.0;
	int count = 2;

	va_start(parg, v2);
	while ((double) (value = va_arg(parg, double)) != (double) 0) {
		sum += value;
		count++;
		printf("value : %lf\n", value);
	}
	va_end(parg);
	double result = sum / count;
	printf("\nsum : %lf,count : %d,funArglistTest result : %lf", sum, count,
			result);
}

int sum(int a, int b) {
	return a + b;
}

int bigerNum(int a, int b) {
	return a > b ? a : b;
}

void changePvalue(short *pValue) {
	*pValue = 77;
}

void pointer_test() {
	short value = 999L;
	short *pValue = &value;
	changePvalue(pValue);
	printf("*pValue is %d", *pValue);
	printf("\n&pValue is %p", &pValue);
	printf("\npValue is %p", pValue);
	printf("\n&value is %p", &value);
	printf("\npValue's size : %d", sizeof(pValue));
	printf("\nvalue's size : %d\n", sizeof(value));

	*pValue = 888;
	printf("\nvalue is %d : ", value);
	printf("\n*pValue is %d", *pValue);
	printf("\n&pValue is %p", &pValue);
	printf("\npValue is %p\n", pValue);

	int (*pFun)(int, int);
	pFun = sum;
	printf("\nsum a + b use pFun : %d", pFun(1, 2));
	pFun = bigerNum;
	printf("\nbigerNum 40 and 5 use pFun is %d", pFun(40, 5));
	int (*pFuns[2])(int, int) = {sum,bigerNum };
	for (int i = 0; i < 2; i++) {
		printf("\npFuns[%d] is %d ", i, pFuns[i](1, 2));
	}

	for (int i = 0; i < 2; i++) {
		printf("\nany_func[%d] : %d", i, any_func(pFuns[i], 4, 55));
	}

	char str[] = "char array test";
	char *pstr = str;
	printf("\n pstr is \"%s\" sizeof(str) is %d", pstr, sizeof(str));
}

int any_func(int (*_pfun)(int, int), int x, int y) {
	return _pfun(x, y);
}

void string_test() {
	char destination[] = "This string will be replaced............";
	char source[] = "This string will be copied ";
	if (sizeof(source) <= sizeof(destination)) {
		strcpy(destination, source);
	}
	printf("%s\n", destination);

	char str1[] = "abcdefg higklmn opqrst uvwxyz";
	char str2[] = "0123456789";
	strncpy(str1, str2, strlen(str2));
	printf("%s\n", str1);

	char str3[] = "123456 那我他";
	size_t count = 0;
	count = strlen(str3);
	printf("\"%s\" has %d chars ,size is %d\n", str3, count, sizeof(str3));

	int len = STR_LEN;
	char str4[STR_LEN] = "abcdefg ";
	char str5[STR_LEN] = "hijklmnopqrst";
	if (len >= strlen(str4) + strlen(str5)) {
		printf("%s", strcat(str4, str5));
	}

	char str6[] = "abc";
	char str7[] = "ABC";
	printf("\n\"%s\" and \"%s\" cmp is %d", str7, str6, strcmp(str7, str6));

	char str8[] = "abc123";
	char c = 'c';
	char *pGot_char = NULL;
	pGot_char = strchr(str8, c);
	if (pGot_char != NULL) {
		printf("\n Character found was %C.", *pGot_char);
	} else {
		printf("\n not found %c in %s", c, str8);
	}

	char text1[] = "The words has something 一百";
	char text2[] = "一百";
	char text3[] = "abc";
	char *pFound = NULL;
	pFound = strstr(text1, text2);
	if (pFound == NULL) {
		printf("\n \"%s\" is not in \"%s\"", text2, text1);
	} else {
		printf("\n \"%s\" is in \"%s\"", text2, text1);
	}
	pFound = strstr(text1, text3);
	if (pFound == NULL) {
		printf("\n \"%s\" is not in \"%s\"", text3, text1);
	}
}

void say_hello() {
	printf("HelloWorld! \n");
	printf("If at first you don\'t succeed,try,try,try again!");
	printf("\n\"\tIt is a wise father that knows his own child.\"");
	printf("\n Be careful!!\a");
	printf("\n 10%%");

	int salary = 1000L;
	int month = 1;
	printf("\nMy salary is %d every %d month", salary, month);

	int num = 011; //011为8进制表示 011 的8进制转为10进制数为9
	printf("\n8进制\"011\" 对应10进制为 ：%d", num);

	num = 0x10; //16进制表示法，0x10对应10进制为 16
	printf("\n16进制\"0x10\" 对应10进制为 ：%d", num);

	double doubleNum = 123E30;
	printf("\ndoubleNum is %1f", doubleNum);

	float floatNum = 1E-2f;
	printf("\n科学技术法\"1E-2f\"  ：%f", floatNum);

	/**
	 * %[width][.precision][modifier]f
	 * width值是一个整数，指定输出的总字符数，
	 * precision值也是一个整数，指定小数点后的位数。
	 * 当输出的值类型是double的时候，modifier部分就是L。
	 */
	floatNum = 98222E-4f;
	printf("\n\"98222E-4f\"保留两位小数  ：%.2f", floatNum);

	float pi = PI;
	printf("\n\"#define PI\"的值为 ：%f", pi);

	const float constNum = 1.0f;
	printf("\n常量\"constNum\"的值为 ：%f", constNum);

//	int x = 0;
//	printf("\n输入一个整形数字赋值给\"x\"，然后按回车键 ：");
//	scanf("%d",&x);
//	printf("input x is : %d ",x);

	printf("\nVariables of type char occupy %d bytes", sizeof(char));
	printf("\nVariables of type short occupy %d bytes", sizeof(short));
	printf("\nVariables of type int occupy %d bytes", sizeof(int));
	printf("\nVariables of type long occupy %d bytes", sizeof(long));
	printf("\nVariables of type long long occupy %d bytes", sizeof(long long));
	printf("\nVariables of type float occupy %d bytes", sizeof(float));
	printf("\nVariables of type double occupy %d bytes", sizeof(double));
	printf("\nVariables of type long double occupy %d bytes",
			sizeof(long double));
	printf("\nVariables of type long double occupy %d bytes",
			sizeof(long double));
	printf("\n\"汉字\" occupy %d bytes", sizeof("汉字1"));
	printf("\n Program last compiled at time %s on date %s",__TIME__,__DATE__);
}

