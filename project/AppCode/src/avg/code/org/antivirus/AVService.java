package org.antivirus;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.antivirus.antitheft.C2DMReceiver;
import org.antivirus.antitheft.f;
import org.antivirus.antitheft.q;
import org.antivirus.applocker.AppBlockService;
import org.antivirus.applocker.AppLockerActivity;
import org.antivirus.core.AVCoreService;
import org.antivirus.core.AVResources;
import org.antivirus.core.Engine;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.a.n;
import org.antivirus.core.a.t;
import org.antivirus.core.a.z;
import org.antivirus.core.receivers.AlarmReceiver;
import org.antivirus.core.scanners.ScannerFilesConfig;
import org.antivirus.core.scanners.ScannerFilesResult;
import org.antivirus.core.scanners.ScannerPackagesResult;
import org.antivirus.core.scanners.ScannerSmsResult;
import org.antivirus.core.scanners.aa;
import org.antivirus.core.scanners.ad;
import org.antivirus.core.scanners.s;
import org.antivirus.core.scanners.w;
import org.antivirus.core.telephony.TelephonyInfo;
import org.antivirus.tools.AvgMisc;
import org.antivirus.tools.CountryIdentifier;
import org.antivirus.tuneup.BatterySaveSettingsActivity;
import org.antivirus.tuneup.ShutDownReceiver;
import org.antivirus.tuneup.ba;
import org.antivirus.tuneup.bm;
import org.antivirus.ui.Tools;
import org.antivirus.ui.TransparentDummyActivity;
import org.antivirus.ui.backup.apps.BackUpActivity;
import org.antivirus.ui.backup.apps.BackupRestoreTab;
import org.antivirus.ui.main.ActivationActivity;
import org.antivirus.ui.main.AntivirusMainScreen;
import org.antivirus.ui.performance.p;
import org.antivirus.ui.scan.ScanBeforeInstallActivity;
import org.antivirus.ui.scan.UnInstall;
import org.antivirus.ui.urlFilter.UrlWarningActivity;
import org.antivirus.widget.a.k;

public class AVService extends AVCoreService
{
  public static final int c_actionAcceptLicense = 114;
  public static final int c_actionAutoScan = 321;
  public static final int c_actionBatteryUpdate = 314;
  public static final int c_actionBatteryUpdateForWidget = 315;
  public static final int c_actionBrowseForMe = 120;
  public static final int c_actionBrowseForMeDefBrowserTab = 122;
  public static final int c_actionBuyPro = 119;
  public static final int c_actionC2DM = 100;
  public static final int c_actionConnectivityChange = 317;
  public static final int c_actionFirstWidgetCreated = 500;
  public static final int c_actionInstallReferrer = 102;
  public static final int c_actionLastWidgetRemoved = 501;
  public static final int c_actionLockDevice = 103;
  public static final int c_actionPrdImp = 400;
  public static final int c_actionRegisterBatteryReceiver = 109;
  public static final int c_actionRegisterWidgetBatteryReceiver = 110;
  public static final int c_actionSetAutoScanSMS = 118;
  public static final int c_actionSetTrafficCounterAlarms = 111;
  public static final int c_actionSetUrlFiltering = 112;
  public static final int c_actionShutDown = 113;
  public static final int c_actionUpdateAutoScanInterval = 107;
  public static final int c_actionUpdateSchedUpdateInterval = 106;
  public static final int c_actionVersionUpdate = 117;
  public static final int c_actionWidgetCloseAll = 506;
  public static final int c_actionWidgetFlashlight = 505;
  public static final int c_actionWidgetItemLaunched = 503;
  public static final int c_actionWidgetRebuilt = 502;
  public static final int c_actionWidgetTrialItemLaunched = 504;
  private volatile AVServiceHandler f;
  private org.antivirus.antitheft.a g;
  private bm h;
  private org.antivirus.a.a i;
  private final IBinder j = new AVService.LocalBinder(this);

  private void a(Intent paramIntent, int paramInt)
  {
    if (System.currentTimeMillis() > this.b.mEngineSettings.getNextSecurityUpdate())
    {
      long l1 = 86400000L + System.currentTimeMillis() + ()(86400000.0D * Math.random());
      this.b.mEngineSettings.setNextSecurityUpdate(l1);
      t();
      boolean bool = this.c.a();
      org.antivirus.core.b.a locala1 = this.c.a;
      AvApplication.mAvgFeatures = locala1;
      this.b.setAvgFeatures(locala1);
      if (locala1.d != org.antivirus.core.b.c.c)
      {
        Intent localIntent1 = new Intent(this, AppBlockService.class);
        localIntent1.putExtra("__SAC", 222);
        startService(localIntent1);
      }
      if (bool)
      {
        org.antivirus.core.b.a locala2 = this.c.a;
        AvApplication.mAvgFeatures = locala2;
        this.b.setAvgFeatures(locala2);
        org.antivirus.core.a.c.a(this.b, org.antivirus.core.a.d.e, "");
        AVSettings.setBuyNotificationyShownIdx(-1);
        k.a(this).a(Boolean.valueOf(locala2.a()), true);
        if (locala2.d != org.antivirus.core.b.c.c)
        {
          Intent localIntent2 = new Intent(this, AppBlockService.class);
          localIntent2.putExtra("__SAC", 222);
          startService(localIntent2);
        }
      }
      C2DMReceiver.a(getApplicationContext());
      long l2 = this.b.mEngineSettings.getAutoScanInterval();
      if ((l2 != -1L) && (System.currentTimeMillis() > l2 + this.b.mEngineSettings.getAutoScanLastTime()))
      {
        Bundle localBundle2 = new Bundle();
        localBundle2.putInt("__SAC", 3);
        localBundle2.putInt("__SAD", 3);
        Message localMessage2 = this.f.obtainMessage();
        localMessage2.arg1 = paramInt;
        localMessage2.obj = localBundle2;
        this.f.sendMessage(localMessage2);
      }
      s();
    }
    r();
    Message localMessage1 = this.f.obtainMessage();
    localMessage1.arg1 = paramInt;
    Bundle localBundle1;
    if (paramIntent == null)
    {
      localBundle1 = new Bundle();
      localBundle1.putInt("__SAC", 1);
    }
    for (localMessage1.obj = localBundle1; ; localMessage1.obj = paramIntent.getExtras())
    {
      this.f.sendMessage(localMessage1);
      return;
    }
  }

  private void a(org.antivirus.core.b.c paramc, Class paramClass, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Intent localIntent = new Intent();
    localIntent.addFlags(268435456);
    localIntent.addFlags(16384);
    localIntent.addFlags(32768);
    if (paramc.equals(org.antivirus.core.b.c.c))
      localIntent.setClass(this, paramClass);
    while (true)
    {
      startActivity(localIntent);
      return;
      localIntent.setClass(this, TransparentDummyActivity.class);
      localIntent.putExtra("FEATURE_EXPIRED_TITLE", paramInt1);
      localIntent.putExtra("FEATURE_EXPIRED_SUBTITLE", paramInt2);
      localIntent.putExtra("FEATURE_EXPIRED_BODY", paramInt3);
      localIntent.putExtra("FEATURE_EXPIRED_ICON", paramInt4);
    }
  }

  private void r()
  {
    if (!this.a);
    int m;
    int n;
    do
    {
      return;
      if (!this.c.a.a())
        break;
      int k = AVSettings.getBuyNotificationyShownIdx();
      m = this.c.a.n;
      n = k + 1;
    }
    while ((n < 0) || (n >= AVSettings.LICENSE_BUY_NOTIFICATION_TIME.length) || ((m != AVSettings.LICENSE_BUY_NOTIFICATION_TIME[n]) && ((n >= -1 + AVSettings.LICENSE_BUY_NOTIFICATION_TIME.length) || (m >= AVSettings.LICENSE_BUY_NOTIFICATION_TIME[n]) || (m < AVSettings.LICENSE_BUY_NOTIFICATION_TIME[(n + 1)]))));
    if (m == 1);
    for (String str1 = Strings.getString(2131296565); ; str1 = Strings.getString(2131296564).replace("[number]", m))
    {
      if ((n < -1 + AVSettings.LICENSE_BUY_NOTIFICATION_TIME.length) && (m < AVSettings.LICENSE_BUY_NOTIFICATION_TIME[n]) && (m == AVSettings.LICENSE_BUY_NOTIFICATION_TIME[(n + 1)]))
        n++;
      AVSettings.setBuyNotificationyShownIdx(n);
      Intent localIntent = new Intent(this, AntivirusMainScreen.class);
      localIntent.putExtra("from_notification", 1);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, localIntent, 0);
      String str2 = Strings.getString(2131296563);
      Notification localNotification = new Notification(2130837585, str2, 0L);
      localNotification.defaults = (0x4 | localNotification.defaults);
      localNotification.flags = 16;
      localNotification.setLatestEventInfo(this, str2, str1, localPendingIntent);
      ((NotificationManager)getSystemService("notification")).notify(13, localNotification);
      break;
      break;
    }
  }

  private void s()
  {
    t.a(this.b);
    this.b.sendCommMessage(1024, null);
    if (System.currentTimeMillis() > 604800000L + AVSettings.getVersionUpdateNotificationLastTime())
      org.antivirus.a.a.a(null, this.b);
    org.antivirus.core.b.j.a(this.b);
    org.antivirus.core.a.c.a(this.b, org.antivirus.core.a.d.g, "");
  }

  private void t()
  {
    Intent localIntent = new Intent(this, AlarmReceiver.class);
    localIntent.putExtra("alarm_code", 1);
    localIntent.putExtra("antivirus", "antivirus");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(this, 0, localIntent, 134217728);
    AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.setRepeating(0, 180000L + this.b.mEngineSettings.getNextSecurityUpdate(), 86400000L, localPendingIntent);
  }

  final void a()
  {
    try
    {
      this.b.sendCommMessage(1024, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  final void a(int paramInt, org.antivirus.core.scanners.c paramc, Object paramObject)
  {
    if (paramInt == 8)
    {
      org.antivirus.core.scanners.a locala2 = this.b.mScanManager;
      String str1 = Strings.getString(2131296407);
      String str2 = Strings.getString(2131296408);
      ScannerSmsResult localScannerSmsResult = (ScannerSmsResult)paramObject;
      new aa(locala2.b);
      org.antivirus.core.scanners.g localg2 = null;
      if (paramc != null)
      {
        org.antivirus.core.scanners.c localc2 = org.antivirus.core.scanners.c.a;
        localg2 = null;
        if (paramc == localc2)
          localg2 = locala2.b(org.antivirus.core.scanners.c.a);
      }
      aa.a(locala2.a, localg2, localScannerSmsResult, str1, str2);
    }
    while (true)
    {
      return;
      if (paramInt == 4)
      {
        org.antivirus.core.scanners.a locala1 = this.b.mScanManager;
        ScannerFilesResult localScannerFilesResult = (ScannerFilesResult)paramObject;
        org.antivirus.core.scanners.g localg1 = null;
        if (paramc != null)
        {
          org.antivirus.core.scanners.c localc1 = org.antivirus.core.scanners.c.a;
          localg1 = null;
          if (paramc == localc1)
            localg1 = locala1.b(org.antivirus.core.scanners.c.a);
        }
        s.a(locala1.a, localg1, localScannerFilesResult);
      }
      else if (paramInt == 1)
      {
        this.b.mScanManager.a(paramc, (ScannerPackagesResult)paramObject);
      }
      else
      {
        Logger.errorBadAgrument();
      }
    }
  }

  final void a(Bundle paramBundle)
  {
    if (!this.a);
    while (true)
    {
      return;
      int k = paramBundle.getInt("__SAD");
      switch (k)
      {
      case 1:
      default:
        Logger.error("invalid code " + k);
        break;
      case 2:
        a();
        break;
      case 3:
        long l = System.currentTimeMillis();
        if (l > this.b.mEngineSettings.getAutoScanLastTime() + this.b.mEngineSettings.getAutoScanInterval())
        {
          this.b.mEngineSettings.setAutoScanLastTime(l);
          a(org.antivirus.core.scanners.c.a, false, null, null);
        }
        break;
      case 4:
        bm localbm2 = this.h;
        if (localbm2.b == null)
          localbm2.b = ba.a(getApplicationContext());
        localbm2.b.h();
        break;
      case 5:
        bm localbm1 = this.h;
        if (localbm1.b == null)
          localbm1.b = ba.a(getApplicationContext());
        localbm1.b.i();
      }
    }
  }

  final void a(Messenger paramMessenger)
  {
    if (paramMessenger != null);
    try
    {
      Message localMessage = Message.obtain();
      localMessage.obj = Boolean.valueOf(false);
      paramMessenger.send(localMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        Logger.error("could not send license activation result message " + localRemoteException.getLocalizedMessage());
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  // ERROR //
  final void a(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: invokevirtual 582	org/antivirus/AVService:verifyPermissions	()Z
    //   8: ifne +6 -> 14
    //   11: goto +339 -> 350
    //   14: aload_1
    //   15: ldc_w 584
    //   18: invokevirtual 588	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   21: ifeq +174 -> 195
    //   24: aload_1
    //   25: iconst_1
    //   26: invokevirtual 591	java/lang/String:substring	(I)Ljava/lang/String;
    //   29: astore 15
    //   31: sipush 2048
    //   34: newarray byte
    //   36: astore 16
    //   38: new 593	java/io/File
    //   41: dup
    //   42: aload_0
    //   43: invokevirtual 594	org/antivirus/AVService:getApplicationContext	()Landroid/content/Context;
    //   46: invokevirtual 598	android/content/Context:getFilesDir	()Ljava/io/File;
    //   49: ldc_w 600
    //   52: invokespecial 603	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   55: invokevirtual 606	java/io/File:exists	()Z
    //   58: ifeq +292 -> 350
    //   61: aload_0
    //   62: ldc_w 600
    //   65: invokevirtual 610	org/antivirus/AVService:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   68: astore 17
    //   70: aload 17
    //   72: astore 9
    //   74: new 612	java/io/FileOutputStream
    //   77: dup
    //   78: aload 15
    //   80: invokespecial 613	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   83: astore 5
    //   85: aload 9
    //   87: aload 16
    //   89: invokevirtual 619	java/io/FileInputStream:read	([B)I
    //   92: istore 18
    //   94: iload 18
    //   96: iconst_m1
    //   97: if_icmpeq +60 -> 157
    //   100: aload 5
    //   102: aload 16
    //   104: iconst_0
    //   105: iload 18
    //   107: invokevirtual 623	java/io/FileOutputStream:write	([BII)V
    //   110: goto -25 -> 85
    //   113: astore 8
    //   115: aload 5
    //   117: astore 10
    //   119: aload 8
    //   121: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   124: aload 10
    //   126: ifnull +8 -> 134
    //   129: aload 10
    //   131: invokevirtual 626	java/io/FileOutputStream:close	()V
    //   134: aload 9
    //   136: ifnull +214 -> 350
    //   139: aload 9
    //   141: invokevirtual 627	java/io/FileInputStream:close	()V
    //   144: goto +206 -> 350
    //   147: astore 11
    //   149: aload 11
    //   151: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   154: goto +196 -> 350
    //   157: aload 5
    //   159: invokevirtual 626	java/io/FileOutputStream:close	()V
    //   162: aload 9
    //   164: invokevirtual 627	java/io/FileInputStream:close	()V
    //   167: invokestatic 633	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   170: new 411	java/lang/StringBuilder
    //   173: dup
    //   174: ldc_w 635
    //   177: invokespecial 532	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload 15
    //   182: invokevirtual 579	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 420	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokevirtual 639	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   191: pop
    //   192: goto +158 -> 350
    //   195: aload_1
    //   196: invokestatic 644	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   199: istore 13
    //   201: iload 13
    //   203: iconst_1
    //   204: iand
    //   205: ifeq +65 -> 270
    //   208: iload_2
    //   209: istore 14
    //   211: iload 14
    //   213: putstatic 647	org/antivirus/core/Logger:mLogExceptions	Z
    //   216: iload 14
    //   218: invokestatic 651	org/antivirus/AVSettings:setLogExceptions	(Z)V
    //   221: iload 13
    //   223: iconst_2
    //   224: iand
    //   225: ifeq +51 -> 276
    //   228: iload_2
    //   229: invokestatic 654	org/antivirus/AVSettings:setLogToFile	(Z)V
    //   232: invokestatic 657	org/antivirus/AVSettings:commit	()V
    //   235: invokestatic 661	org/antivirus/AvApplication:getInstance	()Lorg/antivirus/AvApplication;
    //   238: invokevirtual 664	org/antivirus/AvApplication:setLoggingOptions	()V
    //   241: goto +109 -> 350
    //   244: astore 4
    //   246: aconst_null
    //   247: astore 5
    //   249: aload 5
    //   251: ifnull +8 -> 259
    //   254: aload 5
    //   256: invokevirtual 626	java/io/FileOutputStream:close	()V
    //   259: aload_3
    //   260: ifnull +7 -> 267
    //   263: aload_3
    //   264: invokevirtual 627	java/io/FileInputStream:close	()V
    //   267: aload 4
    //   269: athrow
    //   270: iconst_0
    //   271: istore 14
    //   273: goto -62 -> 211
    //   276: iconst_0
    //   277: istore_2
    //   278: goto -50 -> 228
    //   281: astore 12
    //   283: aload 12
    //   285: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   288: goto -154 -> 134
    //   291: astore 7
    //   293: aload 7
    //   295: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   298: goto -39 -> 259
    //   301: astore 6
    //   303: aload 6
    //   305: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   308: goto -41 -> 267
    //   311: astore 4
    //   313: aload 9
    //   315: astore_3
    //   316: aconst_null
    //   317: astore 5
    //   319: goto -70 -> 249
    //   322: astore 4
    //   324: aload 9
    //   326: astore_3
    //   327: goto -78 -> 249
    //   330: astore 4
    //   332: aload 10
    //   334: astore 5
    //   336: aload 9
    //   338: astore_3
    //   339: goto -90 -> 249
    //   342: astore 8
    //   344: aconst_null
    //   345: astore 10
    //   347: goto -228 -> 119
    //   350: return
    //   351: astore 8
    //   353: aconst_null
    //   354: astore 9
    //   356: aconst_null
    //   357: astore 10
    //   359: goto -240 -> 119
    //
    // Exception table:
    //   from	to	target	type
    //   85	110	113	java/lang/Exception
    //   157	162	113	java/lang/Exception
    //   139	144	147	java/lang/Exception
    //   4	70	244	finally
    //   167	241	244	finally
    //   129	134	281	java/lang/Exception
    //   254	259	291	java/lang/Exception
    //   263	267	301	java/lang/Exception
    //   74	85	311	finally
    //   162	167	311	finally
    //   85	110	322	finally
    //   157	162	322	finally
    //   119	124	330	finally
    //   74	85	342	java/lang/Exception
    //   162	167	342	java/lang/Exception
    //   4	70	351	java/lang/Exception
    //   167	241	351	java/lang/Exception
  }

  final void a(String paramString, boolean paramBoolean)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addCategory("android.intent.category.BROWSABLE");
    if (paramBoolean)
    {
      localIntent.setPackage("com.android.browser");
      localIntent.putExtra("com.android.browser.application_id", "com.android.browser");
    }
    localIntent.setFlags(335544320);
    if (this.b.mEngineSettings.getAWSserver());
    for (String str = "https://aws.droidsecurity.com" + paramString; ; str = "https://droidsecurity.appspot.com" + paramString)
    {
      localIntent.setData(Uri.parse(str));
      startActivity(localIntent);
      return;
    }
  }

  final void a(org.antivirus.core.scanners.c paramc, boolean paramBoolean, ScannerFilesConfig paramScannerFilesConfig, Messenger paramMessenger)
  {
    int k = 5;
    if (!this.a);
    label10: long l;
    do
    {
      return;
      if ((!paramBoolean) || (paramc != org.antivirus.core.scanners.c.a))
        break;
      l = this.b.getScanResults(paramc).a;
    }
    while ((l != 0L) && (l < 86400000L + System.currentTimeMillis()));
    ScannerFilesConfig localScannerFilesConfig;
    int m;
    if (paramScannerFilesConfig == null)
    {
      localScannerFilesConfig = new ScannerFilesConfig();
      if (this.b.mEngineSettings.isPUPEnabled())
      {
        m = 99999;
        label86: localScannerFilesConfig.g = m;
      }
    }
    while (true)
    {
      File localFile1;
      File localFile2;
      if (localScannerFilesConfig.e.size() == 0)
      {
        localFile1 = Environment.getExternalStorageDirectory();
        if (Build.VERSION.SDK_INT <= 7)
          break label225;
        String str3 = Environment.getExternalStorageDirectory().getParent();
        if (str3 == null)
          break label205;
        localFile2 = new File(str3);
      }
      while (true)
      {
        localScannerFilesConfig.e.add(localFile2);
        switch (AVService.5.a[paramc.ordinal()])
        {
        default:
          Logger.errorBadAgrument();
          break label10;
          m = k;
          break label86;
          label205: localFile2 = new File("/mnt");
          if (!localFile2.exists())
            label225: localFile2 = localFile1;
          break;
        case 1:
        case 2:
        case 3:
        }
      }
      int n = -1;
      if (paramBoolean)
      {
        localScannerFilesConfig.d = Boolean.valueOf(this.b.mEngineSettings.isSDScanEnabled());
        label257: if (!paramBoolean)
          break label363;
      }
      for (Object localObject = new AVService.1(this); ; localObject = new AVService.2(this))
      {
        this.b.mScanManager.a((org.antivirus.core.scanners.i)localObject, n, localScannerFilesConfig, paramMessenger, paramc);
        break;
        localScannerFilesConfig.d = Boolean.valueOf(AvgMisc.isCharging(this));
        break label257;
        localScannerFilesConfig.d = Boolean.valueOf(true);
        n = 4;
        break label257;
        localScannerFilesConfig.d = Boolean.valueOf(true);
        if (this.b.mEngineSettings.isPUPEnabled())
          k = 9999;
        localScannerFilesConfig.g = k;
        n = 4;
        break label257;
        label363: NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
        Notification localNotification = new Notification(2130837585, Strings.getString(2131296404), System.currentTimeMillis());
        String str1 = getString(2131296256);
        String str2 = Strings.getString(2131296405);
        Intent localIntent = new Intent(this, AntivirusMainScreen.class);
        localIntent.putExtra("ScannerClient", true);
        PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, localIntent, 0);
        localNotification.defaults = (0x4 | localNotification.defaults);
        localNotification.flags = 16;
        localNotification.setLatestEventInfo(this, str1, str2, localPendingIntent);
        localNotificationManager.notify(14, localNotification);
      }
      localScannerFilesConfig = paramScannerFilesConfig;
    }
  }

  final void b()
  {
    if (this.b.mEngineSettings.isAutoScanSMS())
    {
      aa localaa = new aa(this.b.mEngineSettings);
      localaa.b(this);
      if (!localaa.a.a)
        aa.a(this, null, (ScannerSmsResult)localaa.a, Strings.getString(2131296407), Strings.getString(2131296408));
    }
  }

  final void b(int paramInt, org.antivirus.core.scanners.c paramc, Object paramObject)
  {
    if (paramInt == 1)
      this.b.mScanManager.b(paramc, (ScannerPackagesResult)paramObject);
    while (true)
    {
      return;
      if (paramInt == 16)
        this.b.mScanManager.a(paramc, (ad)paramObject);
      else
        Logger.errorBadAgrument();
    }
  }

  final void b(Bundle paramBundle)
  {
    org.antivirus.antitheft.a locala = this.g;
    Context localContext = getApplicationContext();
    paramBundle.remove("__SAC");
    if (paramBundle.containsKey("stopshout"))
      locala.c.a();
    while (true)
    {
      return;
      if (!paramBundle.containsKey("fromsms"))
        locala.c.b(paramBundle, localContext);
      else
        locala.c.a(paramBundle, localContext);
    }
  }

  final void c()
  {
    boolean bool = true;
    AVSettings.setShowActivationScreen(false);
    AVSettings.commit();
    this.b.mEngineSettings.setAutoScanInterval(604800000L);
    this.c.b.b();
    this.a = bool;
    this.b.enable();
    if (Build.VERSION.SDK_INT > 7);
    while (true)
    {
      w.a(this, ScanBeforeInstallActivity.class, bool);
      n.a(this.b);
      if (AVSettings.isUrlAntiPhishingEnabled())
        this.d.a(this, this.f);
      this.b.mScanManager.a();
      C2DMReceiver.a(getApplicationContext());
      org.antivirus.apploader.d.a(this);
      startService(new Intent(this, AppBlockService.class));
      return;
      bool = false;
    }
  }

  final void c(Bundle paramBundle)
  {
    String str = this.d.a(getApplicationContext(), paramBundle.getString("__SAD"), UrlWarningActivity.class);
    if (str != null)
      org.antivirus.ganalytics.a.a(this, "UrlChecker", "Bad", str);
  }

  final void d()
  {
    org.antivirus.antitheft.a locala = this.g;
    Context localContext = getApplicationContext();
    locala.a.a(localContext.getApplicationContext());
  }

  final void d(Bundle paramBundle)
  {
    org.antivirus.core.d.e locale = this.d;
    String str = paramBundle.getString("__SAD");
    locale.j.put(str, Boolean.valueOf(true));
  }

  final void e()
  {
    if (AVSettings.isUrlAntiPhishingEnabled())
      this.d.a(getApplicationContext(), this.f);
    while (true)
    {
      return;
      this.d.a(getApplicationContext());
    }
  }

  final void e(Bundle paramBundle)
  {
    Context localContext = getApplicationContext();
    int m;
    int n;
    if (AVSettings.isPowerSavingMode())
    {
      int k = paramBundle.getInt("level", 0);
      m = paramBundle.getInt("status", 0);
      n = AVSettings.getLastBatteryThreshold();
      if ((k > AVSettings.getPowerSavingModeThreshold()) || (m == 2))
        break label204;
      if (n == 0)
      {
        Intent localIntent = new Intent(localContext, BatterySaveSettingsActivity.class);
        localIntent.setFlags(608305152);
        localIntent.putExtra("from_notification", 1);
        PendingIntent localPendingIntent = PendingIntent.getActivity(localContext, 0, localIntent, 0);
        String str = Strings.getString(2131296529) + " " + k + "%";
        Notification localNotification = new Notification(2130837743, str, 0L);
        localNotification.flags = 16;
        localNotification.setLatestEventInfo(localContext, str, Strings.getString(2131296530), localPendingIntent);
        ((NotificationManager)localContext.getSystemService("notification")).notify(11, localNotification);
        AVSettings.setLastBatteryThreshold(k);
      }
    }
    while (true)
    {
      return;
      label204: if (n != 0)
      {
        AVSettings.setLastBatteryThreshold(0);
        if (m == 2)
          ((NotificationManager)localContext.getSystemService("notification")).cancel(11);
      }
    }
  }

  final void f()
  {
    bm localbm = this.h;
    if (ba.d())
    {
      if (localbm.b == null)
        localbm.b = ba.a(getApplicationContext());
      localbm.b.h();
    }
  }

  final void f(Bundle paramBundle)
  {
    k.a(getApplicationContext()).a(paramBundle, org.antivirus.widget.a.i.b.a());
  }

  final void g()
  {
    this.b.mScanManager.a();
  }

  final void g(Bundle paramBundle)
  {
    bm localbm = this.h;
    if (paramBundle.getBoolean("__SAD", false))
      localbm.a.a(getApplicationContext());
    while (true)
    {
      return;
      localbm.a.c(getApplicationContext());
    }
  }

  final void h()
  {
    if (this.c.a.l);
    while (true)
    {
      return;
      long l1 = AVSettings.getAcceptLicenseReminderTime();
      long l2 = System.currentTimeMillis();
      if (l1 == 0L)
      {
        AVSettings.setAcceptLicenseReminderTime(l2);
        stopSelf();
      }
      else if (l1 == -1L)
      {
        stopSelf();
      }
      else if (l2 > l1 + 604800000L)
      {
        AVSettings.setAcceptLicenseReminderTime(-1L);
        NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
        Notification localNotification = new Notification(2130837585, getString(2131296717), System.currentTimeMillis());
        PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, new Intent(this, ActivationActivity.class), 0);
        localNotification.defaults = (0x4 | localNotification.defaults);
        localNotification.flags = 16;
        localNotification.setLatestEventInfo(this, getString(2131296256), getString(2131296716), localPendingIntent);
        localNotificationManager.notify(2002, localNotification);
      }
    }
  }

  final void h(Bundle paramBundle)
  {
    bm localbm = this.h;
    if (paramBundle.getBoolean("__SAD", false))
    {
      org.antivirus.tuneup.g localg = localbm.a;
      Context localContext = getApplicationContext();
      if (localg.a == null)
      {
        localg.a = new org.antivirus.tuneup.h(2);
        localContext.registerReceiver(localg.a, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
      }
    }
    while (true)
    {
      return;
      localbm.a.b(getApplicationContext());
    }
  }

  final void i()
  {
    try
    {
      org.antivirus.ganalytics.a.a(this, "upgrade", "antivirusPro", null);
      String str = TelephonyInfo.getUniqueId(getApplicationContext(), this.b.mEngineSettings);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("/purchase/dispatch?device_sn=");
      if (TextUtils.isEmpty(str))
        str = "";
      localStringBuilder.append(str);
      localStringBuilder.append("&varCode=");
      localStringBuilder.append(this.c.a.o);
      localStringBuilder.append("&fs=");
      localStringBuilder.append(this.c.a.p);
      a(localStringBuilder.toString(), false);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  final void i(Bundle paramBundle)
  {
    bm localbm = this.h;
    ComponentName localComponentName = new ComponentName(getApplicationContext(), ShutDownReceiver.class);
    PackageManager localPackageManager = getPackageManager();
    boolean bool = paramBundle.getBoolean("__SAD", false);
    if (localbm.b == null)
      localbm.b = ba.a(getApplicationContext());
    if (bool)
    {
      localPackageManager.setComponentEnabledSetting(localComponentName, 1, 1);
      localbm.b.j();
    }
    while (true)
    {
      return;
      localPackageManager.setComponentEnabledSetting(localComponentName, 2, 1);
      localbm.b.l();
    }
  }

  final void j()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null)
    {
      boolean bool = localNetworkInfo.isConnected();
      int k = localNetworkInfo.getType();
      if ((bool) && ((k == 0) || (k == 1)) && (System.currentTimeMillis() > 172800000L + this.b.mEngineSettings.getLastSecurityUpdate()))
        s();
    }
    bm localbm = this.h;
    if (ba.d())
    {
      if (localbm.b == null)
        localbm.b = ba.a(getApplicationContext());
      localbm.b.k();
    }
  }

  final void j(Bundle paramBundle)
  {
    this.b.mScanManager.a((org.antivirus.core.scanners.c)paramBundle.get("__SAD"));
  }

  final void k()
  {
    long l1 = 86400000L;
    org.antivirus.core.scanners.a locala = this.b.mScanManager;
    AlarmManager localAlarmManager = (AlarmManager)locala.a.getSystemService("alarm");
    Intent localIntent = new Intent(locala.a, AlarmReceiver.class);
    localIntent.putExtra("alarm_code", 2);
    localIntent.putExtra("antivirus", "antivirus");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(locala.a, 2, localIntent, 134217728);
    while (true)
    {
      long l2;
      try
      {
        l2 = locala.b.getUpdateInterval();
        if (-1L == l2)
        {
          localAlarmManager.cancel(localPendingIntent);
        }
        else if (AlarmReceiver.isValidInterval(l2))
        {
          locala.b.setUpdateInterval(86400000L);
          localAlarmManager.setRepeating(0, l1 + System.currentTimeMillis(), l1, localPendingIntent);
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
      l1 = l2;
    }
  }

  final void k(Bundle paramBundle)
  {
    org.antivirus.a.a locala = this.i;
    if ((locala.c == null) || (locala.b == null));
    while (true)
    {
      return;
      locala.b.post(new org.antivirus.a.c(locala, paramBundle));
    }
  }

  final void l()
  {
    long l1 = 604800000L;
    org.antivirus.core.scanners.a locala = this.b.mScanManager;
    AlarmManager localAlarmManager = (AlarmManager)locala.a.getSystemService("alarm");
    Intent localIntent = new Intent(locala.a, AlarmReceiver.class);
    localIntent.putExtra("alarm_code", 3);
    localIntent.putExtra("antivirus", "antivirus");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(locala.a, 3, localIntent, 134217728);
    while (true)
    {
      long l2;
      try
      {
        l2 = locala.b.getAutoScanInterval();
        if (-1L == l2)
        {
          localAlarmManager.cancel(localPendingIntent);
        }
        else if (!AlarmReceiver.isValidInterval(l2))
        {
          Logger.errorBadAgrument();
          locala.b.setAutoScanInterval(604800000L);
          localAlarmManager.setRepeating(0, l1 + System.currentTimeMillis(), l1, localPendingIntent);
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
      l1 = l2;
    }
  }

  final void l(Bundle paramBundle)
  {
    org.antivirus.core.a.c.a(this.b, org.antivirus.core.a.d.b, paramBundle.getString("referrer"));
  }

  // ERROR //
  final void m(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 392	org/antivirus/AVService:a	Z
    //   4: ifne +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: invokevirtual 594	org/antivirus/AVService:getApplicationContext	()Landroid/content/Context;
    //   12: astore_2
    //   13: invokestatic 1089	org/antivirus/AVSettings:isAutoScanApp	()Z
    //   16: ifeq -9 -> 7
    //   19: ldc 179
    //   21: astore_3
    //   22: aload_1
    //   23: ldc_w 1091
    //   26: invokevirtual 857	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   29: astore 20
    //   31: aload 20
    //   33: astore 21
    //   35: aload 21
    //   37: ifnull +327 -> 364
    //   40: aload 21
    //   42: ldc_w 1093
    //   45: ldc 179
    //   47: invokevirtual 424	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   50: astore 21
    //   52: aload_1
    //   53: ldc_w 1095
    //   56: iconst_0
    //   57: invokevirtual 938	android/os/Bundle:getBoolean	(Ljava/lang/String;Z)Z
    //   60: ifeq +292 -> 352
    //   63: aload_0
    //   64: getfield 99	org/antivirus/AVService:b	Lorg/antivirus/core/Engine;
    //   67: aload 21
    //   69: ldc_w 1097
    //   72: invokestatic 1102	org/antivirus/core/a/z:a	(Lorg/antivirus/core/Engine;Ljava/lang/String;Ljava/lang/String;)V
    //   75: aload 21
    //   77: astore 5
    //   79: invokestatic 1105	org/antivirus/ui/backup/apps/RestoreActivity:a	()Z
    //   82: ifeq +34 -> 116
    //   85: invokestatic 1108	org/antivirus/ui/backup/apps/RestoreActivity:c	()Landroid/os/Handler;
    //   88: ifnull +28 -> 116
    //   91: invokestatic 565	android/os/Message:obtain	()Landroid/os/Message;
    //   94: astore 19
    //   96: aload 19
    //   98: iconst_3
    //   99: putfield 1111	android/os/Message:what	I
    //   102: aload 19
    //   104: aload_1
    //   105: invokevirtual 1113	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   108: invokestatic 1108	org/antivirus/ui/backup/apps/RestoreActivity:c	()Landroid/os/Handler;
    //   111: aload 19
    //   113: invokevirtual 1116	android/os/Handler:dispatchMessage	(Landroid/os/Message;)V
    //   116: aload_2
    //   117: ldc_w 269
    //   120: invokevirtual 917	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   123: checkcast 275	android/app/NotificationManager
    //   126: astore 12
    //   128: aload_2
    //   129: ldc_w 269
    //   132: invokevirtual 917	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   135: checkcast 275	android/app/NotificationManager
    //   138: astore 13
    //   140: new 277	android/app/Notification
    //   143: dup
    //   144: ldc_w 278
    //   147: ldc_w 1117
    //   150: invokestatic 285	org/antivirus/Strings:getString	(I)Ljava/lang/String;
    //   153: invokestatic 95	java/lang/System:currentTimeMillis	()J
    //   156: invokespecial 288	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   159: astore 14
    //   161: aload_2
    //   162: ldc_w 289
    //   165: invokevirtual 1118	android/content/Context:getString	(I)Ljava/lang/String;
    //   168: astore 15
    //   170: ldc_w 1117
    //   173: invokestatic 285	org/antivirus/Strings:getString	(I)Ljava/lang/String;
    //   176: astore 16
    //   178: aload_2
    //   179: iconst_0
    //   180: new 156	android/content/Intent
    //   183: dup
    //   184: invokespecial 335	android/content/Intent:<init>	()V
    //   187: iconst_0
    //   188: invokestatic 310	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   191: astore 17
    //   193: aload 14
    //   195: iconst_4
    //   196: aload 14
    //   198: getfield 313	android/app/Notification:defaults	I
    //   201: ior
    //   202: putfield 313	android/app/Notification:defaults	I
    //   205: aload 14
    //   207: bipush 16
    //   209: putfield 316	android/app/Notification:flags	I
    //   212: aload 14
    //   214: aload_2
    //   215: aload 15
    //   217: aload 16
    //   219: aload 17
    //   221: invokevirtual 320	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   224: aload 13
    //   226: bipush 15
    //   228: aload 14
    //   230: invokevirtual 324	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   233: new 1120	org/antivirus/tools/NotificationCanceler
    //   236: dup
    //   237: aload 12
    //   239: bipush 15
    //   241: ldc2_w 1121
    //   244: invokespecial 1125	org/antivirus/tools/NotificationCanceler:<init>	(Landroid/app/NotificationManager;IJ)V
    //   247: pop
    //   248: ldc2_w 1126
    //   251: invokestatic 1132	java/lang/Thread:sleep	(J)V
    //   254: new 1134	org/antivirus/AVService$3
    //   257: dup
    //   258: aload_0
    //   259: invokespecial 1135	org/antivirus/AVService$3:<init>	(Lorg/antivirus/AVService;)V
    //   262: astore 8
    //   264: new 1137	org/antivirus/core/scanners/ScannerPackagesConfig
    //   267: dup
    //   268: invokespecial 1138	org/antivirus/core/scanners/ScannerPackagesConfig:<init>	()V
    //   271: astore 9
    //   273: aload 9
    //   275: iconst_1
    //   276: invokestatic 202	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   279: putfield 1140	org/antivirus/core/scanners/ScannerPackagesConfig:b	Ljava/lang/Boolean;
    //   282: aload 9
    //   284: getfield 1142	org/antivirus/core/scanners/ScannerPackagesConfig:c	Ljava/util/List;
    //   287: aload 5
    //   289: invokeinterface 739 2 0
    //   294: pop
    //   295: aload_0
    //   296: getfield 99	org/antivirus/AVService:b	Lorg/antivirus/core/Engine;
    //   299: getfield 105	org/antivirus/core/Engine:mEngineSettings	Lorg/antivirus/core/EngineSettings;
    //   302: invokevirtual 711	org/antivirus/core/EngineSettings:isPUPEnabled	()Z
    //   305: ifeq +89 -> 394
    //   308: ldc_w 712
    //   311: istore 11
    //   313: aload 9
    //   315: iload 11
    //   317: putfield 1144	org/antivirus/core/scanners/ScannerPackagesConfig:d	I
    //   320: aload_0
    //   321: getfield 99	org/antivirus/AVService:b	Lorg/antivirus/core/Engine;
    //   324: getfield 485	org/antivirus/core/Engine:mScanManager	Lorg/antivirus/core/scanners/a;
    //   327: aload 8
    //   329: iconst_1
    //   330: aload 9
    //   332: aconst_null
    //   333: getstatic 1146	org/antivirus/core/scanners/c:c	Lorg/antivirus/core/scanners/c;
    //   336: invokevirtual 760	org/antivirus/core/scanners/a:a	(Lorg/antivirus/core/scanners/i;ILorg/antivirus/core/scanners/l;Landroid/os/Messenger;Lorg/antivirus/core/scanners/c;)V
    //   339: goto -332 -> 7
    //   342: astore 6
    //   344: aload 6
    //   346: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   349: goto -342 -> 7
    //   352: aload_0
    //   353: getfield 99	org/antivirus/AVService:b	Lorg/antivirus/core/Engine;
    //   356: aload 21
    //   358: ldc_w 1097
    //   361: invokestatic 1102	org/antivirus/core/a/z:a	(Lorg/antivirus/core/Engine;Ljava/lang/String;Ljava/lang/String;)V
    //   364: aload 21
    //   366: astore 5
    //   368: goto -289 -> 79
    //   371: astore 4
    //   373: aload 4
    //   375: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   378: aload_3
    //   379: astore 5
    //   381: goto -302 -> 79
    //   384: astore 7
    //   386: aload 7
    //   388: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   391: goto -137 -> 254
    //   394: iconst_5
    //   395: istore 11
    //   397: goto -84 -> 313
    //   400: astore 22
    //   402: aload 21
    //   404: astore_3
    //   405: aload 22
    //   407: astore 4
    //   409: goto -36 -> 373
    //
    // Exception table:
    //   from	to	target	type
    //   79	116	342	java/lang/Exception
    //   254	339	342	java/lang/Exception
    //   386	391	342	java/lang/Exception
    //   22	31	371	java/lang/Exception
    //   116	254	384	java/lang/Exception
    //   40	75	400	java/lang/Exception
    //   352	364	400	java/lang/Exception
  }

  final boolean m()
  {
    return this.a;
  }

  final void n()
  {
    org.antivirus.ganalytics.a.a(this, "widget", "widget_added", null);
  }

  final void n(Bundle paramBundle)
  {
    if (!this.a);
    while (true)
    {
      return;
      try
      {
        Context localContext = getApplicationContext();
        String str1 = paramBundle.getString("package_name");
        if (!TextUtils.isEmpty(str1))
        {
          String str2 = str1.replace("package:", "");
          if (!paramBundle.getBoolean("updating", false))
            z.a(this.b, str2, "D");
          if (!str2.equals(localContext.getPackageName()))
            this.b.mEngineSettings.setAppUpdateAggregate(this.b.mEngineSettings.getAppUpdateAggregate(true) + str2 + "~0~1");
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
    }
  }

  final void o()
  {
    deleteFile("widgetConfig.data");
    Intent localIntent = new Intent();
    localIntent.setComponent(SERVICE_IDENTIFIER);
    localIntent.putExtra("__SAC", 110);
    localIntent.putExtra("__SAD", false);
    startService(localIntent);
    org.antivirus.ganalytics.a.a(this, "widget", "widget_removed", null);
  }

  final void o(Bundle paramBundle)
  {
    this.b.sendCommMessage(paramBundle.getInt("__SAD", -1), paramBundle);
  }

  public IBinder onBind(Intent paramIntent)
  {
    Intent localIntent = new Intent(this, AVService.class);
    localIntent.putExtra("__SAC", 1);
    startService(localIntent);
    return this.j;
  }

  public void onCreate()
  {
    boolean bool1 = true;
    super.onCreate();
    CountryIdentifier.isCountryAllowed(this);
    if (!AVSettings.shouldShowActivationScreen());
    while (true)
    {
      this.a = bool1;
      this.c = new org.antivirus.core.b.e(this, AVResources.getRawResourceOpener(getApplicationContext(), 2131034119), AVResources.getRawResourceOpener(getApplicationContext(), 2131034120));
      boolean bool2 = this.c.a();
      r();
      this.f = new AVServiceHandler(this, this.e);
      Context localContext = getApplicationContext();
      org.antivirus.core.b.a locala = this.c.a;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(org.antivirus.antitheft.e.class);
      localArrayList.add(org.antivirus.antitheft.c.class);
      localArrayList.add(f.class);
      localArrayList.add(org.antivirus.antitheft.d.class);
      localArrayList.add(org.antivirus.antitheft.h.class);
      localArrayList.add(org.antivirus.antitheft.i.class);
      localArrayList.add(org.antivirus.antitheft.g.class);
      localArrayList.add(org.antivirus.applocker.h.class);
      localArrayList.add(org.antivirus.ganalytics.a.class);
      localArrayList.add(org.antivirus.ui.help.g.class);
      localArrayList.add(org.antivirus.a.g.class);
      this.b = new Engine(localContext, locala, localArrayList, AVResources.getRawResourceSecDbOpener(getApplicationContext(), new int[] { 2131034114, 2131034115, 2131034116, 2131034117, 2131034118 }), this.a);
      if ((CountryIdentifier.isCountryChina(this)) && (!this.b.mEngineSettings.getAWSserver()))
        this.b.mEngineSettings.setAWSserver();
      l();
      if (0L == this.b.mEngineSettings.getNextSecurityUpdate())
      {
        this.b.mEngineSettings.setLastSecurityUpdate(System.currentTimeMillis());
        this.b.mEngineSettings.setNextSecurityUpdate(86400000L + System.currentTimeMillis());
        t.a(this.b);
        this.b.sendCommMessage(1024, null);
        org.antivirus.core.b.j.a(this.b);
        org.antivirus.core.a.c.a(this.b, org.antivirus.core.a.d.g, "");
        if (System.currentTimeMillis() > 604800000L + AVSettings.getVersionUpdateNotificationLastTime())
          org.antivirus.a.a.a(null, this.b);
        this.b.mEngineSettings.setAutoScanLastTime(System.currentTimeMillis());
      }
      AvApplication.mAvgFeatures = this.c.a;
      t();
      this.h = new bm(this);
      this.g = new org.antivirus.antitheft.a(this, this.b, this.b.mEngineSettings);
      if (this.a)
      {
        org.antivirus.apploader.d.a(this);
        startService(new Intent(this, AppBlockService.class));
      }
      this.d = new org.antivirus.core.d.e(AVResources.getRawResourceOpener(getApplicationContext(), 2131034121));
      if (AVSettings.isUrlAntiPhishingEnabled())
        this.d.a(this, this.f);
      this.i = new org.antivirus.a.a(this, this.f);
      if (bool2)
      {
        org.antivirus.core.a.c.a(this.b, org.antivirus.core.a.d.e, "");
        AVSettings.setBuyNotificationyShownIdx(-1);
      }
      Engine localEngine = this.b;
      try
      {
        localEngine.sendCommMessage(1130, null);
      }
      catch (Exception localException1)
      {
        try
        {
          while (true)
          {
            if (!this.a)
              break label672;
            localBoolean = Boolean.valueOf(this.c.a.a());
            k localk = k.a(this);
            if (localk.e())
              localk.a(localBoolean, true);
            return;
            bool1 = false;
            break;
            localException1 = localException1;
            Logger.log(localException1);
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            Logger.log(localException2);
            continue;
            label672: Boolean localBoolean = null;
          }
        }
      }
    }
  }

  // ERROR //
  public void onDestroy()
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 269
    //   4: invokevirtual 273	org/antivirus/AVService:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   7: checkcast 275	android/app/NotificationManager
    //   10: bipush 14
    //   12: invokevirtual 922	android/app/NotificationManager:cancel	(I)V
    //   15: aload_0
    //   16: getfield 545	org/antivirus/AVService:h	Lorg/antivirus/tuneup/bm;
    //   19: ifnull +69 -> 88
    //   22: aload_0
    //   23: getfield 545	org/antivirus/AVService:h	Lorg/antivirus/tuneup/bm;
    //   26: astore 9
    //   28: aload 9
    //   30: getfield 890	org/antivirus/tuneup/bm:a	Lorg/antivirus/tuneup/g;
    //   33: ifnull +33 -> 66
    //   36: aload 9
    //   38: getfield 890	org/antivirus/tuneup/bm:a	Lorg/antivirus/tuneup/g;
    //   41: aload_0
    //   42: invokevirtual 213	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   45: invokevirtual 943	org/antivirus/tuneup/g:c	(Landroid/content/Context;)V
    //   48: aload 9
    //   50: getfield 890	org/antivirus/tuneup/bm:a	Lorg/antivirus/tuneup/g;
    //   53: aload_0
    //   54: invokevirtual 213	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   57: invokevirtual 976	org/antivirus/tuneup/g:b	(Landroid/content/Context;)V
    //   60: aload 9
    //   62: aconst_null
    //   63: putfield 890	org/antivirus/tuneup/bm:a	Lorg/antivirus/tuneup/g;
    //   66: aload 9
    //   68: getfield 550	org/antivirus/tuneup/bm:b	Lorg/antivirus/tuneup/ba;
    //   71: ifnull +17 -> 88
    //   74: aload 9
    //   76: getfield 550	org/antivirus/tuneup/bm:b	Lorg/antivirus/tuneup/ba;
    //   79: invokevirtual 1273	org/antivirus/tuneup/ba:a	()V
    //   82: aload 9
    //   84: aconst_null
    //   85: putfield 550	org/antivirus/tuneup/bm:b	Lorg/antivirus/tuneup/ba;
    //   88: aload_0
    //   89: getfield 207	org/antivirus/AVService:g	Lorg/antivirus/antitheft/a;
    //   92: ifnull +113 -> 205
    //   95: aload_0
    //   96: getfield 207	org/antivirus/AVService:g	Lorg/antivirus/antitheft/a;
    //   99: astore 5
    //   101: aload 5
    //   103: getfield 874	org/antivirus/antitheft/a:a	Lorg/antivirus/antitheft/q;
    //   106: ifnull +42 -> 148
    //   109: aload 5
    //   111: getfield 874	org/antivirus/antitheft/a:a	Lorg/antivirus/antitheft/q;
    //   114: astore 7
    //   116: aload 7
    //   118: getfield 1276	org/antivirus/antitheft/q:b	Landroid/content/BroadcastReceiver;
    //   121: ifnull +21 -> 142
    //   124: aload_0
    //   125: invokevirtual 213	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   128: aload 7
    //   130: getfield 1276	org/antivirus/antitheft/q:b	Landroid/content/BroadcastReceiver;
    //   133: invokevirtual 1280	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   136: aload 7
    //   138: aconst_null
    //   139: putfield 1276	org/antivirus/antitheft/q:b	Landroid/content/BroadcastReceiver;
    //   142: aload 5
    //   144: aconst_null
    //   145: putfield 874	org/antivirus/antitheft/a:a	Lorg/antivirus/antitheft/q;
    //   148: aload 5
    //   150: getfield 1283	org/antivirus/antitheft/a:b	Lorg/antivirus/antitheft/z;
    //   153: ifnull +30 -> 183
    //   156: aload 5
    //   158: getfield 1283	org/antivirus/antitheft/a:b	Lorg/antivirus/antitheft/z;
    //   161: astore 6
    //   163: aload 6
    //   165: iconst_1
    //   166: putfield 1287	org/antivirus/antitheft/z:c	Z
    //   169: aload 6
    //   171: getfield 1290	org/antivirus/antitheft/z:b	Ljava/lang/Thread;
    //   174: invokevirtual 1293	java/lang/Thread:interrupt	()V
    //   177: aload 5
    //   179: aconst_null
    //   180: putfield 1283	org/antivirus/antitheft/a:b	Lorg/antivirus/antitheft/z;
    //   183: aload 5
    //   185: getfield 802	org/antivirus/antitheft/a:c	Lorg/antivirus/antitheft/j;
    //   188: ifnull +17 -> 205
    //   191: aload 5
    //   193: getfield 802	org/antivirus/antitheft/a:c	Lorg/antivirus/antitheft/j;
    //   196: invokevirtual 805	org/antivirus/antitheft/j:a	()V
    //   199: aload 5
    //   201: aconst_null
    //   202: putfield 802	org/antivirus/antitheft/a:c	Lorg/antivirus/antitheft/j;
    //   205: aload_0
    //   206: getfield 845	org/antivirus/AVService:d	Lorg/antivirus/core/d/e;
    //   209: ifnull +11 -> 220
    //   212: aload_0
    //   213: getfield 845	org/antivirus/AVService:d	Lorg/antivirus/core/d/e;
    //   216: aload_0
    //   217: invokevirtual 887	org/antivirus/core/d/e:a	(Landroid/content/Context;)V
    //   220: aload_0
    //   221: getfield 389	org/antivirus/AVService:i	Lorg/antivirus/a/a;
    //   224: ifnull +25 -> 249
    //   227: aload_0
    //   228: getfield 389	org/antivirus/AVService:i	Lorg/antivirus/a/a;
    //   231: astore 4
    //   233: aload 4
    //   235: getfield 1296	org/antivirus/a/a:a	Lorg/antivirus/a/h;
    //   238: ifnull +11 -> 249
    //   241: aload 4
    //   243: getfield 1296	org/antivirus/a/a:a	Lorg/antivirus/a/h;
    //   246: invokevirtual 1299	org/antivirus/a/h:a	()V
    //   249: getstatic 1302	org/antivirus/widget/a/k:a	Lorg/antivirus/widget/a/k;
    //   252: ifnull +83 -> 335
    //   255: getstatic 1302	org/antivirus/widget/a/k:a	Lorg/antivirus/widget/a/k;
    //   258: astore_3
    //   259: aload_3
    //   260: getfield 1305	org/antivirus/widget/a/k:h	Lorg/antivirus/widget/b/a;
    //   263: ifnull +24 -> 287
    //   266: aload_3
    //   267: getfield 1307	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   270: ifnull +17 -> 287
    //   273: aload_3
    //   274: getfield 1307	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   277: invokevirtual 1311	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   280: aload_3
    //   281: getfield 1305	org/antivirus/widget/a/k:h	Lorg/antivirus/widget/b/a;
    //   284: invokevirtual 1317	android/content/ContentResolver:unregisterContentObserver	(Landroid/database/ContentObserver;)V
    //   287: aload_3
    //   288: aconst_null
    //   289: putfield 1307	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   292: aload_3
    //   293: aconst_null
    //   294: putfield 1320	org/antivirus/widget/a/k:f	Landroid/appwidget/AppWidgetManager;
    //   297: aload_3
    //   298: aconst_null
    //   299: putfield 1322	org/antivirus/widget/a/k:g	Landroid/content/ComponentName;
    //   302: aload_3
    //   303: aconst_null
    //   304: putfield 1325	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   307: aload_3
    //   308: getfield 1327	org/antivirus/widget/a/k:b	Ljava/util/List;
    //   311: invokeinterface 1330 1 0
    //   316: aload_3
    //   317: getfield 1333	org/antivirus/widget/a/k:c	Ljava/util/Map;
    //   320: invokeinterface 1336 1 0
    //   325: aload_3
    //   326: aconst_null
    //   327: putfield 1333	org/antivirus/widget/a/k:c	Ljava/util/Map;
    //   330: aload_3
    //   331: aconst_null
    //   332: putfield 1327	org/antivirus/widget/a/k:b	Ljava/util/List;
    //   335: aload_0
    //   336: invokespecial 1338	org/antivirus/core/AVCoreService:onDestroy	()V
    //   339: return
    //   340: astore 10
    //   342: aload 10
    //   344: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   347: goto -259 -> 88
    //   350: astore_1
    //   351: aload_1
    //   352: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   355: goto -20 -> 335
    //   358: astore 8
    //   360: aload 8
    //   362: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   365: goto -223 -> 142
    //   368: astore_2
    //   369: aload_2
    //   370: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   373: goto -38 -> 335
    //
    // Exception table:
    //   from	to	target	type
    //   28	88	340	java/lang/Exception
    //   0	28	350	java/lang/Exception
    //   88	116	350	java/lang/Exception
    //   142	249	350	java/lang/Exception
    //   342	347	350	java/lang/Exception
    //   360	373	350	java/lang/Exception
    //   116	142	358	java/lang/Exception
    //   249	335	368	java/lang/Exception
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    a(paramIntent, paramInt);
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    a(paramIntent, paramInt2);
    return 1;
  }

  final void p()
  {
    k localk = k.a(this);
    org.antivirus.core.b.a locala;
    if (!localk.b())
    {
      org.antivirus.widget.a.j localj = new org.antivirus.widget.a.j(this);
      Integer[] arrayOfInteger = new Integer[4];
      for (int k = 0; k < arrayOfInteger.length; k++)
        arrayOfInteger[k] = Integer.valueOf(((Integer)localj.a.get(k)).intValue());
      for (int m = 0; m < arrayOfInteger.length; m++)
        localk.a(m, arrayOfInteger[m].intValue());
      locala = this.c.a;
      if (locala != null)
        break label137;
    }
    label137: for (Boolean localBoolean = null; ; localBoolean = Boolean.valueOf(locala.a()))
    {
      boolean bool1 = AVSettings.shouldShowActivationScreen();
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      localk.b(localBoolean, bool2);
      return;
    }
  }

  final void p(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("pkgname");
    String str2 = Tools.getAppName(this, str1);
    String str3 = paramBundle.getString("catname");
    Intent localIntent = new Intent(this, UnInstall.class);
    localIntent.putExtra("categtory", str3);
    localIntent.putExtra("appName", str2);
    localIntent.setFlags(402653184);
    localIntent.putExtra("suspicious", str1);
    startActivity(localIntent);
  }

  final void q()
  {
    p localp = new p(getPackageName());
    int k = localp.a(this).size();
    ActivityManager localActivityManager = (ActivityManager)getSystemService("activity");
    Iterator localIterator = localp.a(this).iterator();
    while (localIterator.hasNext())
      localActivityManager.restartPackage(((ApplicationInfo)localIterator.next()).packageName);
    try
    {
      Thread.sleep(200L);
      m = localp.a(this).size();
      if (k - m <= 0)
      {
        str2 = getString(2131296651);
        this.f.post(new AVService.4(this, str2));
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        int m;
        Logger.error("Something happened when Kill All Service was sleeping");
        continue;
        String str1 = BackUpActivity.a(p.a());
        String str2 = String.valueOf(k - m) + " " + getString(2131296650) + " " + str1;
      }
    }
  }

  final void q(Bundle paramBundle)
  {
    org.antivirus.widget.a.i locali = (org.antivirus.widget.a.i)paramBundle.get("WidgetItem");
    paramBundle.remove("WidgetItem");
    boolean bool = paramBundle.getBoolean("isService", false);
    paramBundle.remove("isService");
    Class localClass = (Class)paramBundle.getSerializable("DelegatedIntentClass");
    paramBundle.remove("DelegatedIntentClass");
    paramBundle.remove("__SAC");
    Intent localIntent = new Intent(this, localClass);
    if (!paramBundle.isEmpty())
      localIntent.putExtras(paramBundle);
    if (bool)
      startService(localIntent);
    try
    {
      while (true)
      {
        org.antivirus.ganalytics.a.a(this, "widget", locali.d(), null);
        label108: return;
        localIntent.addFlags(268435456);
        localIntent.addFlags(16384);
        localIntent.addFlags(32768);
        startActivity(localIntent);
      }
    }
    catch (Exception localException)
    {
      break label108;
    }
  }

  final void r(Bundle paramBundle)
  {
    org.antivirus.core.b.a locala = this.c.a;
    paramBundle.remove("__SAC");
    switch (paramBundle.getInt("trialItem", -1))
    {
    default:
      Logger.error("Unknown trial feature");
    case 1:
    case 0:
    }
    while (true)
    {
      return;
      a(locala.h, BackupRestoreTab.class, 2131296713, 2131296714, 2131296715, 2130837684);
      continue;
      a(locala.d, AppLockerActivity.class, 2131296346, 2131296347, 2131296348, 2130837685);
    }
  }

  // ERROR //
  public boolean verifyPermissions()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: invokevirtual 1484	org/antivirus/AVService:getPackageManager	()Landroid/content/pm/PackageManager;
    //   6: astore_2
    //   7: aload_2
    //   8: aload_0
    //   9: invokevirtual 1392	org/antivirus/AVService:getPackageName	()Ljava/lang/String;
    //   12: sipush 4096
    //   15: invokevirtual 1488	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   18: getfield 1494	android/content/pm/PackageInfo:permissions	[Landroid/content/pm/PermissionInfo;
    //   21: astore 5
    //   23: aload 5
    //   25: arraylength
    //   26: istore 6
    //   28: iconst_0
    //   29: istore 7
    //   31: iload 7
    //   33: iload 6
    //   35: if_icmpge +97 -> 132
    //   38: aload 5
    //   40: iload 7
    //   42: aaload
    //   43: astore 8
    //   45: aload_2
    //   46: aload 8
    //   48: getfield 1499	android/content/pm/PermissionInfo:name	Ljava/lang/String;
    //   51: iconst_0
    //   52: invokevirtual 1503	android/content/pm/PackageManager:getPermissionInfo	(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    //   55: astore 11
    //   57: aload 11
    //   59: getfield 1504	android/content/pm/PermissionInfo:packageName	Ljava/lang/String;
    //   62: aload_0
    //   63: invokevirtual 1392	org/antivirus/AVService:getPackageName	()Ljava/lang/String;
    //   66: invokevirtual 1158	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   69: ifeq +9 -> 78
    //   72: iinc 7 1
    //   75: goto -44 -> 31
    //   78: aload 11
    //   80: getfield 1504	android/content/pm/PermissionInfo:packageName	Ljava/lang/String;
    //   83: invokestatic 535	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   86: iload_1
    //   87: ireturn
    //   88: astore 10
    //   90: aload 10
    //   92: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   95: iconst_0
    //   96: istore_1
    //   97: goto -11 -> 86
    //   100: astore 4
    //   102: invokestatic 522	org/antivirus/core/Logger:errorBadAgrument	()V
    //   105: iconst_0
    //   106: istore_1
    //   107: goto -21 -> 86
    //   110: astore 9
    //   112: aload 9
    //   114: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   117: iconst_0
    //   118: istore_1
    //   119: goto -33 -> 86
    //   122: astore_3
    //   123: aload_3
    //   124: invokestatic 480	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   127: iconst_0
    //   128: istore_1
    //   129: goto -43 -> 86
    //   132: iconst_1
    //   133: istore_1
    //   134: goto -48 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   45	86	88	android/content/pm/PackageManager$NameNotFoundException
    //   7	45	100	android/content/pm/PackageManager$NameNotFoundException
    //   90	95	100	android/content/pm/PackageManager$NameNotFoundException
    //   112	117	100	android/content/pm/PackageManager$NameNotFoundException
    //   45	86	110	java/lang/Exception
    //   7	45	122	java/lang/Exception
    //   90	95	122	java/lang/Exception
    //   112	117	122	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.AVService
 * JD-Core Version:    0.6.2
 */