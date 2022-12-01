
#include "native-lib.h"

#define TAG "nativeLibTAG"
//#define NO_LOG 1
#ifdef NO_LOG
#define LOGI(...)
#define LOGD(...)
#define LOGW(...)
#define LOGE(...)
#else
#define LOGI(...)   __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGD(...)   __android_log_print(ANDROID_LOG_DEBUG, TAG, __VA_ARGS__)
#define LOGW(...)   __android_log_print(ANDROID_LOG_WARN, TAG, __VA_ARGS__)
#define LOGE(...)   __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)
#endif

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_stringToJni(JNIEnv* env, jobject thiz,jstring str){
    LOGD("----------stringToJni start-------------");


    //法一 : 使用 GetStringLength 和 GetStringUTFRegion把jvm中的字符串拷贝到c中，这种方法不需要销毁
    jsize strlen = env->GetStringLength(str);
    char wordBuff[strlen];
    env->GetStringUTFRegion(str,0,strlen,wordBuff);
    if(wordBuff == NULL){
        LOGD("GetStringUtfChars error");
    }else{
        LOGD("get java str by GetStringUTFRegion ：%s",wordBuff);
    }

    //方法二 :该字符串由Unicode的str转换生成新的UTF-8编码字符串，该新的字符串在javaVM中，由word指向该内存
    const char *word = env->GetStringUTFChars(str,JNI_FALSE);
    if(word == NULL){
        LOGD("GetStringUtfChars error");
    }else{
        //释放word指向的字符串，释放后word指向的字符串为NULL。但是word保存的地址不变
        LOGD("get java str by GetStringUTFChars ：%s",word);
        env->ReleaseStringUTFChars(str,word);
    }
    LOGD("----------stringToJni end---------------");

}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_javaArrToJni(
        JNIEnv* env,
        jobject thiz,
        jintArray intArr,
        jobjectArray strArr){
    LOGD("----------javaArrToJni start-------------");
    jint* intArray = env->GetIntArrayElements(intArr,JNI_FALSE);
    jsize arrlen = env->GetArrayLength(intArr);
    LOGD("intArr len is %d",(int)arrlen);
    std::string str = "";
    for(int i = 0;i<(int)arrlen;i++){
        str.append(std::to_string((int)intArray[i]));
        str.append(",");
    }
    LOGD("%s",str.c_str());

    arrlen= env->GetArrayLength(strArr);
    LOGD("strArr len is %d",(int)arrlen);

    str.clear();
    for(int i = 0;i<(int)arrlen;i++){
        jstring tempStr = (jstring)env->GetObjectArrayElement(strArr,i);

        jsize strlen = env->GetStringLength(tempStr);
        char wordBuff[strlen];
        env->GetStringUTFRegion(tempStr,0,strlen,wordBuff);
        str.append(wordBuff);
        str.append(",");
    }
    LOGD("%s",str.c_str());
    LOGD("----------javaArrToJni end---------------");

}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_basicJavaTypeToJni(
        JNIEnv* env,
        jobject thiz,
        jboolean argBoolean,
        jbyte argByte,
        jchar argChar,
        jshort argShort,
        jint argInt,
        jlong argLong,
        jfloat argFloat,
        jdouble argDouble) {
    LOGD("----------basicJavaTypeToJni start-------------");
    unsigned char dataBool = argBoolean;
    char dataByte = argByte;
    unsigned short dataChar = argChar;
    short dataShort = argShort;
    int dataInt = argInt;
    long dataLong = argLong;
    float dataFloat = argFloat;
    double dataDouble = argDouble;
    LOGD("argBoolean ：%d",dataBool);//false->0,true->1
    LOGD("argByte : %d",dataByte);
    LOGD("argChar : %c , argChar value : %d",dataChar,dataChar);
    LOGD("argShort : %d",dataShort);
    LOGD("argInt : %d",dataInt);
    LOGD("argLong : %ld",dataLong);
    LOGD("argFloat : %f",dataFloat);
    LOGD("argDouble : %lf",dataDouble);
    LOGD("----------basicJavaTypeToJni end-------------");
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_sandro_nativelib_NativeAgent_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++!" ;
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jbyte JNICALL
Java_com_sandro_nativelib_NativeAgent_byteFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    char dataByte = 120;
    return dataByte;
}

extern "C" JNIEXPORT jshort JNICALL
Java_com_sandro_nativelib_NativeAgent_shortFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    short dataShort = 10240;
    return dataShort;
}

extern "C" JNIEXPORT jint JNICALL
Java_com_sandro_nativelib_NativeAgent_intFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    int dataInt = 204800;
    return dataInt;
}

extern "C" JNIEXPORT jlong JNICALL
Java_com_sandro_nativelib_NativeAgent_longFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    long dataLong = 4096000;
    return dataLong;
}

extern "C" JNIEXPORT jfloat JNICALL
Java_com_sandro_nativelib_NativeAgent_floatFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    float dataFloat = 1024.1024f;
    return dataFloat;
}

extern "C" JNIEXPORT jdouble JNICALL
Java_com_sandro_nativelib_NativeAgent_doubleFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    double dataDouble = 2048.20482;
    return dataDouble;
}

extern "C" JNIEXPORT jchar JNICALL
Java_com_sandro_nativelib_NativeAgent_charFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    unsigned short dataChar = 'Z';
    return dataChar;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeAgent_booleanFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    unsigned char dataBoolean = 1;//0->false,1->true
    return dataBoolean;
}

/*
 * c层返回int数组
 */
extern "C" JNIEXPORT jintArray JNICALL
Java_com_sandro_nativelib_NativeAgent_getIntArrayFromJNI(
        JNIEnv* env,
        jobject thiz){
    jsize len = 5;
    jintArray array = env->NewIntArray(len);
    jint *arr = env->GetIntArrayElements(array,JNI_FALSE);
    for(int i = 0;i<len;i++){
        arr[i] = (jint)(100 * i);
    }
    env->ReleaseIntArrayElements(array,arr,0);
    return array;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_sandro_nativelib_NativeAgent_getStringArrayFromJNI(
        JNIEnv* env,
        jobject thiz){
    jsize len = 4;
    jclass jc = env->FindClass((char*)"java/lang/String");
    jobjectArray jarray = env->NewObjectArray(len,jc,env->NewStringUTF(""));
    for(int i = 0;i<len;i++){
        std::string temp = "word_";
        temp.append(std::to_string(i));
        env->SetObjectArrayElement(jarray,(jsize)i,env->NewStringUTF(temp.c_str()));
    }
    return jarray;
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_accessJavaAttr(
        JNIEnv* env,
        jobject thiz){
    //获取当前java对象的jclass
    jclass jc = env->GetObjectClass(thiz);
    //"Ljava/lang/String;" 是agentName(String类型)的方法签名，可以通过javap -p -s xxx.class 查看
    //类文件在android studio 编译目录中（app/build/intermediates/javac/debug/classes/....）
    jfieldID jfid = env->GetFieldID(jc, (char*)"agentName", (char*)"Ljava/lang/String;");
    //获取NativeAgent对象中agentName属性
    jstring agentName = (jstring)env->GetObjectField(thiz,jfid);
    jsize strlen = env->GetStringLength(agentName);
    char agentNameBuff[strlen];
    env->GetStringUTFRegion(agentName,0,strlen,agentNameBuff);
    LOGD("NativeAgent.agentName is \"%s\"" , agentNameBuff);
    std::string newAgentName = "cur agentName is modify by c++" ;
    env->SetObjectField(thiz,jfid,env->NewStringUTF(newAgentName.c_str()));

    jfieldID versionFID = env->GetStaticFieldID(jc,(char*)"VERSION","I");
    jint versionAttr = env->GetStaticIntField(jc,versionFID);
    LOGD("NativeAgent static attr VERSION is %d",(int)versionAttr);
    env->SetStaticIntField(jc,versionFID,(jint)200);

    jfieldID jfAgentBoolAttr = env->GetFieldID(jc,(char*)"agentBoolAttr","Z");
    jboolean agentBoolAttr = env->GetBooleanField(thiz,jfAgentBoolAttr);
    LOGD("NativeAgent attr agentBoolAttr is %d",(unsigned char)agentBoolAttr);
    env->SetBooleanField(thiz,jfAgentBoolAttr,true);

    jfieldID  jfAgentByteAttr = env->GetFieldID(jc,(char*)"agentByteAttr","B");
    jbyte agentByteAttr = env->GetByteField(thiz,jfAgentByteAttr);
    LOGD("NativeAgent attr agentByteAttr is %d",(char)agentByteAttr);
    env->SetByteField(thiz,jfAgentByteAttr,(jbyte)100);

    jfieldID  jfAgentShortAttr = env->GetFieldID(jc,(char*)"agentShortAttr","S");
    jshort agentShortAttr = env->GetShortField(thiz,jfAgentShortAttr);
    LOGD("NativeAgent attr agentShortAttr is %d",(short)agentShortAttr);
    env->SetShortField(thiz,jfAgentShortAttr,(short)200);

    jfieldID  JFagentLongAttr = env->GetFieldID(jc,(char*)"agentLongAttr","J");
    jlong agentLongAttr = env->GetLongField(thiz,JFagentLongAttr);
    LOGD("NativeAgent attr agentLongAttr is %d",(long)agentLongAttr);
    env->SetLongField(thiz,JFagentLongAttr,(jlong)30000000);

    jfieldID  JFagentFloatAttr = env->GetFieldID(jc,(char*)"agentFloatAttr","F");
    jfloat agentFloatAttr = env->GetFloatField(thiz,JFagentFloatAttr);
    LOGD("NativeAgent attr agentFloatAttr is %f",(float)agentFloatAttr);
    env->SetFloatField(thiz,JFagentFloatAttr,(jfloat)123.123);


    jfieldID  JFagentDoubleAttr = env->GetFieldID(jc,(char*)"agentDoubleAttr","D");
    jdouble agentDoubleAttr = env->GetDoubleField(thiz,JFagentDoubleAttr);
    LOGD("NativeAgent attr agentDoubleAttr is %lf",(double)agentDoubleAttr);
    env->SetDoubleField(thiz,JFagentDoubleAttr,(jdouble)1234.1234);

    jfieldID  JFagentCharAttr = env->GetFieldID(jc,(char*)"agentCharAttr","C");
    jchar agentCharAttr = env->GetCharField(thiz,JFagentCharAttr);
    LOGD("NativeAgent attr agentCharAttr is %c",(unsigned short)agentCharAttr);
    env->SetCharField(thiz,JFagentCharAttr,(unsigned short)'z');
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_accessJavaMethod(
        JNIEnv* env,
        jobject thiz){
    LOGD("----------accessJavaMethod start-------------");

    jclass jc = env->GetObjectClass(thiz);
    jmethodID jmid = env->GetMethodID(jc,(char*)"addByJni",(char*)"(II)I");
    jint result = env->CallIntMethod(thiz,jmid,jint(100),jint(100));
    LOGD("accessJavaMethod addByJni() return : %d",(int)result);

    jmid = env->GetStaticMethodID(jc,(char*)"addStringByJni",(char*)"(II)Ljava/lang/String;");
    jstring  result2 = (jstring)env->CallStaticObjectMethod(jc,jmid,jint(100),jint(100));
    jsize strlen = env->GetStringLength(result2);
    char wordBuff[strlen];
    env->GetStringUTFRegion(result2,0,strlen,wordBuff);
    if(wordBuff == NULL){
        LOGD("accessJavaMethod addStringByJni() error ,GetStringUtfChars error");
    }else{
        LOGD("accessJavaMethod addStringByJni() return : %s",wordBuff);
    }

    LOGD("----------accessJavaMethod end---------------");

}

extern "C" JNIEXPORT jobject JNICALL
Java_com_sandro_nativelib_NativeAgent_getPersonFromJNI(
        JNIEnv* env,
        jobject thiz,
        jobject personOBJ){
    jclass jc = env->FindClass("com/sandro/nativelib/Person");
    //通过构造函数生成person对象，使用"<init>",代表当前构造函数，签名代表参数
    jmethodID jmid = env->GetMethodID(jc,(char*)"<init>",(char*)"(ILjava/lang/String;)V");
    std::string name = "bob";
    jobject person = env->NewObject(jc,jmid,(jint)15,env->NewStringUTF(name.c_str()));

    jmethodID setScoremid = env->GetMethodID(jc,(char*)"setScore",(char*)"(F)V");
    env->CallVoidMethod(person,setScoremid,(jfloat)8.5);


    jmethodID midGetAge = env->GetMethodID(jc,(char*)"getAge","()I");
    jmethodID midGetScore = env->GetMethodID(jc,(char*)"getScore","()F");
    jmethodID midGetName = env->GetMethodID(jc,(char*)"getName","()Ljava/lang/String;");
    jint age = env->CallIntMethod(personOBJ,midGetAge);
    jfloat score = env->CallFloatMethod(personOBJ,midGetScore);
    jstring jname = (jstring)env->CallObjectMethod(personOBJ,midGetName);

    jsize strlen = env->GetStringLength(jname);
    LOGD("jname len : %d",strlen);

    char personName[(int)strlen];

    env->GetStringUTFRegion(jname,0,strlen,personName);
    LOGD("personOBJ from java ,name : \"%s\" , age : %d , score : %F",personName,(int)age,(float)score);
    return person;
}