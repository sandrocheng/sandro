version 2.0.4808

    const-string v0, "avastLog"
	const-string v6, "com.avast.android.mobilesecurity.app.locking.core.AppLockingService.onStartCommand() turning on logcat handler"
	invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

调研avast 拦截恶意应用的方式

弹出框 “需要15分钟” ->string.xml 中 
	<string name="l_virus_shield_allow"><u>需要 15 分钟</u></string>
	id : 0x7f0c024a -> 2131493450

弹出框activity  VirusShieldActivity	,跳转到该activity的方法封装在  VirusShieldActivity.call(..)中，调用的地方只发现com.avast.android.mobilesecurity.app.scanner.o类触发(mark jump to VirusShieldActivity).

o类中触发这个逻辑的应该是 
  /**
   * mark call VirusShieldActivity
   */
public void a(List paramList, ApplicationInfo paramApplicationInfo, String paramString, App paramApp, int paramInt) 
该方法的调用有()
1 com.avast.android.mobilesecurity.app.fileshield.t ： mark call com.avast.android.mobilesecurity.app.scanner.o.a()
2 com.avast.android.mobilesecurity.app.locking.core.f ： mark call com.avast.android.mobilesecurity.app.scanner.o.a()
3 com.avast.android.mobilesecurity.app.scanner.af ：mark call com.avast.android.mobilesecurity.app.scanner.o.a()
4 com.avast.android.mobilesecurity.app.scanner.g : mark call com.avast.android.mobilesecurity.app.scanner.o.a()
初步调查上面的地方 三个 service : ScanService和AppLockingService值得调查,FileShieldService感觉不像

ScanService是一个抽象类
子类有：
AdvisorScanService
OnDemandScannerScanService
ScannerScanService
WizardScannerScanService

AppLockingService:app启动监控的service,主要有两种方式
1 监控logcat文件数据，正则表达式匹配(mark logcat moniter)
2 如果logcat被关闭，则循环查看是否有app启动(mark loop search activity)



病毒扫描
com.avast.android.mobilesecurity.scan.ScanService
public void b(Bundle paramBundle):开始扫描
com.avast.android.generic.util.b:扫描线程
com.avast.android.mobilesecurity.scan.l 线程任务类继承AsyncTask
com.avast.android.mobilesecurity.app.scanner.af:com.avast.android.mobilesecurity.scan.l实现类，扫描时使用这个类的对象


com.avast.android.mobilesecurity.app.manager.a.b: 使用了“top -s cpu -n 1”命令查看运行的进程。
com.avast.android.generic.c.b类，对jarFile进行解析
com.avast.android.generic.c.f类，分别判断了MD5，MD2,SHA,SHA1,RSA,DSA的加密算法。
com.avast.android.generic.util.z类：缓存了com.p1.chompsms等包名
com.avast.android.generic.ab定义了大量的int数组


com.avast.android.mobilesecurity.vps.Interface:asset文件中的apk解压后的类，在com/avast/android/mobilesecurity/engine/internal/s类中使用dexclassloader加载该对象，使用jni中的方法杀毒。
libavast-vps.so : 使用avast-vps-interface加载了该lib库


