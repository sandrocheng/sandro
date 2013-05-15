smaile log代码
const-string v0, "avastLog"
const-string v1, "com.avast.android.mobilesecurity.app.locking.core.AppLockingService.onStartCommand()"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
