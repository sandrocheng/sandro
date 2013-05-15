package com.avast.android.mobilesecurity.app.scanner;

import a.a.a.a.a.a;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.StatFs;
import android.support.v4.a.p;
import com.avast.android.generic.internet.c.a.av;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.s;
import com.avast.android.mobilesecurity.app.account.e;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.engine.x;
import com.avast.android.mobilesecurity.q;
import com.avast.android.mobilesecurity.scan.ScanProgress;
import com.avast.android.mobilesecurity.scan.ScanService;
import com.avast.android.mobilesecurity.scan.l;
import com.avast.android.mobilesecurity.service.UpdateService;
import com.avast.android.mobilesecurity.t;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.Semaphore;

public class af extends l
  implements Handler.Callback
{
  private boolean A;
  private Semaphore B;
  private boolean C;
  private Handler D;
  private int E;
  private Runnable F = new ag(this);
  protected final PackageManager a;
  protected t b;
  protected o c;
  private BroadcastReceiver n;
  private boolean o = false;
  private boolean p;
  private boolean q;
  private boolean r;
  private PowerManager.WakeLock s;
  private e t;
  private com.avast.android.generic.util.ad u;
  private boolean v;
  private boolean w;
  private final boolean x;
  private final int y;
  private final boolean z;

  public af(ScanService paramScanService, Bundle paramBundle)
  {
    super(paramScanService, paramBundle);
    Object localObject1 = "";
    Object localObject2 = "";
    try
    {
      Resources localResources = paramScanService.getResources();
      if (localResources == null)
        localResources = paramScanService.getApplicationContext().getResources();
      if (localResources != null)
      {
        String str = localResources.getString(2131493354);
        localObject2 = str;
        localObject1 = localObject2;
      }
      this.e = new ScanProgress((String)localObject1, (String)localObject2, 100);
      this.d = paramScanService;
      this.a = this.d.getPackageManager();
      this.b = ((t)com.avast.android.generic.ad.a(this.d, t.class));
      this.t = new e(this.d);
      this.c = new o(this.d, new Handler());
      this.w = paramBundle.getBoolean("update_vps_sequential", false);
      this.A = paramBundle.getBoolean("update_vps_sequential", false);
      if (this.A)
      {
        this.B = new Semaphore(0);
        this.D = new Handler(this);
      }
      this.x = paramBundle.getBoolean("skip_vps_update", false);
      this.z = paramBundle.getBoolean("widgetScan", false);
      int i = paramBundle.getInt("flags", 0);
      if ((i & 0x8) != 0)
      {
        this.y = i;
        this.u = new com.avast.android.generic.util.ad();
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a().a("Exception in ScannerScanTask constructor AVD-574", localException);
        continue;
        this.y = 1;
      }
    }
  }

  private long a(File paramFile)
  {
    StatFs localStatFs = new StatFs(paramFile.getAbsolutePath());
    long l = localStatFs.getBlockSize();
    return l * localStatFs.getBlockCount() - l * localStatFs.getAvailableBlocks();
  }

  private void a(List paramList)
  {
    boolean bool2;
    if (paramList == null)
    {
      this.d.getContentResolver().delete(q.a(), "packageName ISNULL", null);
      t localt2 = this.b;
      if (this.b.ar() > 0)
      {
        bool2 = true;
        localt2.l(bool2);
        this.b.c(0);
        this.b.e(0);
      }
    }
    while (true)
    {
      t localt1 = this.b;
      boolean bool1;
      if (this.b.ar() <= 0)
      {
        int k = this.b.as();
        bool1 = false;
        if (k <= 0);
      }
      else
      {
        bool1 = true;
      }
      localt1.l(bool1);
      return;
      bool2 = false;
      break;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        ContentResolver localContentResolver = this.d.getContentResolver();
        Uri localUri = q.a();
        String str2 = "packageName ISNULL AND name LIKE '" + str1 + "%' AND " + "result" + " = ?";
        String[] arrayOfString = new String[1];
        arrayOfString[0] = String.valueOf(x.l.a());
        int i = localContentResolver.delete(localUri, str2, arrayOfString);
        int j = this.d.getContentResolver().delete(q.a(), "packageName ISNULL AND name LIKE '" + str1 + "%'", null);
        this.b.c(this.b.as() - i);
        this.b.e(this.b.at() - j);
      }
    }
  }

  private boolean a(File paramFile, long paramLong)
  {
    Stack localStack = new Stack();
    localStack.push(paramFile);
    File localFile1;
    label104: boolean bool;
    while (true)
      if (!localStack.isEmpty())
      {
        localFile1 = (File)localStack.pop();
        if (localFile1.isDirectory())
        {
          File[] arrayOfFile = localFile1.listFiles();
          if (arrayOfFile == null)
            continue;
          int i = arrayOfFile.length;
          for (int j = 0; j < i; j++)
          {
            File localFile2 = arrayOfFile[j];
            if ((!this.o) || (isCancelled()))
              break label104;
            localStack.push(localFile2);
          }
          continue;
          bool = false;
        }
      }
    while (true)
    {
      while (true)
      {
        return bool;
        if ((this.o) && (!isCancelled()))
          synchronized (this.e)
          {
            this.e.k = this.e.c;
            this.e.c = localFile1.getName();
            ScanProgress localScanProgress2 = this.e;
            localScanProgress2.f = (1 + localScanProgress2.f);
            ScanProgress localScanProgress3 = this.e;
            localScanProgress3.e = ((int)(localScanProgress3.e + localFile1.length() / 1024L));
            this.e.h = ((int)((System.currentTimeMillis() - paramLong) / 1000L));
            List localList = i.a(this.d, Integer.valueOf(this.E), localFile1, null, 0x20 | this.y);
            this.c.a(localList, null, localFile1.getAbsolutePath(), null, 20);//mark call com.avast.android.mobilesecurity.app.scanner.o.a()
            if (this.e.f % 1000 != 0)
              break;
            System.gc();
          }
      }
      m.b("ScannerScanTask", "External storage availability: " + this.o);
      bool = false;
      continue;
      bool = true;
    }
  }

  private void j()
  {
    if (this.w)
      UpdateService.b(this.d);
    while (true)
    {
      return;
      UpdateService.c(this.d);
    }
  }

  private void k()
  {
    if (this.r)
    {
      this.s = ((PowerManager)this.d.getSystemService("power")).newWakeLock(1, "Avast! VirusScanner");
      this.s.acquire();
      m.b("ScannerScanTask", "Wake lock acquired: " + this.s.isHeld());
    }
  }

  private void l()
  {
    StringBuilder localStringBuilder;
    if ((this.s != null) && (this.s.isHeld()))
    {
      this.s.release();
      localStringBuilder = new StringBuilder().append("Wake lock released: ");
      if (this.s.isHeld())
        break label66;
    }
    label66: for (boolean bool = true; ; bool = false)
    {
      m.b("ScannerScanTask", bool);
      return;
    }
  }

  private void m()
  {
    this.e.b = this.d.getString(2131493391);
    this.e.m = true;
    this.C = true;
    j();
    this.D.sendEmptyMessageDelayed(2131165223, 15000L);
    m.b("ScannerScanTask", "Sequential VPS update called, acquiring semaphore permit.");
    try
    {
      this.B.acquire();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        m.b("ScannerScanTask", localInterruptedException);
    }
  }

  private void n()
  {
    if (this.b.aQ())
    {
      int i = this.b.aR();
      int j = this.b.aS();
      AlarmReceiver.a(this.d, i, j);
    }
  }

  // ERROR //
  private boolean o()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 96	com/avast/android/mobilesecurity/app/scanner/af:a	Landroid/content/pm/PackageManager;
    //   4: iconst_0
    //   5: invokevirtual 464	android/content/pm/PackageManager:getInstalledApplications	(I)Ljava/util/List;
    //   8: astore_1
    //   9: aload_1
    //   10: invokeinterface 240 1 0
    //   15: astore_2
    //   16: aload_2
    //   17: invokeinterface 246 1 0
    //   22: ifeq +33 -> 55
    //   25: aload_2
    //   26: invokeinterface 250 1 0
    //   31: checkcast 466	android/content/pm/ApplicationInfo
    //   34: getfield 469	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   37: ldc_w 471
    //   40: invokevirtual 475	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   43: ifeq -27 -> 16
    //   46: aload_2
    //   47: invokeinterface 478 1 0
    //   52: goto -36 -> 16
    //   55: aload_0
    //   56: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   59: astore_3
    //   60: aload_3
    //   61: monitorenter
    //   62: aload_0
    //   63: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   66: iconst_1
    //   67: putfield 480	com/avast/android/mobilesecurity/scan/ScanProgress:j	Z
    //   70: aload_0
    //   71: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   74: aload_1
    //   75: invokeinterface 483 1 0
    //   80: putfield 485	com/avast/android/mobilesecurity/scan/ScanProgress:d	I
    //   83: aload_0
    //   84: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   87: iconst_0
    //   88: putfield 321	com/avast/android/mobilesecurity/scan/ScanProgress:f	I
    //   91: aload_0
    //   92: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   95: iconst_0
    //   96: putfield 323	com/avast/android/mobilesecurity/scan/ScanProgress:e	I
    //   99: aload_0
    //   100: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   103: aload_0
    //   104: getfield 90	com/avast/android/mobilesecurity/app/scanner/af:d	Lcom/avast/android/mobilesecurity/scan/ScanService;
    //   107: ldc_w 486
    //   110: invokevirtual 421	com/avast/android/mobilesecurity/scan/ScanService:getString	(I)Ljava/lang/String;
    //   113: putfield 423	com/avast/android/mobilesecurity/scan/ScanProgress:b	Ljava/lang/String;
    //   116: aload_3
    //   117: monitorexit
    //   118: invokestatic 334	java/lang/System:currentTimeMillis	()J
    //   121: lstore 8
    //   123: aload_1
    //   124: invokeinterface 240 1 0
    //   129: astore 10
    //   131: aload 10
    //   133: invokeinterface 246 1 0
    //   138: ifeq +293 -> 431
    //   141: aload_0
    //   142: invokevirtual 309	com/avast/android/mobilesecurity/app/scanner/af:isCancelled	()Z
    //   145: ifne +286 -> 431
    //   148: aload 10
    //   150: invokeinterface 250 1 0
    //   155: checkcast 466	android/content/pm/ApplicationInfo
    //   158: astore 13
    //   160: aload_0
    //   161: getfield 96	com/avast/android/mobilesecurity/app/scanner/af:a	Landroid/content/pm/PackageManager;
    //   164: aload 13
    //   166: getfield 489	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   169: iconst_0
    //   170: invokevirtual 493	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   173: astore 14
    //   175: aload_0
    //   176: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   179: astore 15
    //   181: aload 15
    //   183: monitorenter
    //   184: aload_0
    //   185: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   188: aload 13
    //   190: aload_0
    //   191: getfield 96	com/avast/android/mobilesecurity/app/scanner/af:a	Landroid/content/pm/PackageManager;
    //   194: invokevirtual 497	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   197: invokevirtual 500	java/lang/Object:toString	()Ljava/lang/String;
    //   200: putfield 312	com/avast/android/mobilesecurity/scan/ScanProgress:c	Ljava/lang/String;
    //   203: aload_0
    //   204: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   207: invokestatic 334	java/lang/System:currentTimeMillis	()J
    //   210: lload 8
    //   212: lsub
    //   213: ldc2_w 335
    //   216: ldiv
    //   217: l2i
    //   218: putfield 339	com/avast/android/mobilesecurity/scan/ScanProgress:h	I
    //   221: aload 15
    //   223: monitorexit
    //   224: new 254	java/lang/StringBuilder
    //   227: dup
    //   228: invokespecial 255	java/lang/StringBuilder:<init>	()V
    //   231: ldc_w 502
    //   234: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: aload 13
    //   239: getfield 469	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   242: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc_w 504
    //   248: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: invokevirtual 270	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: invokestatic 507	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   257: pop
    //   258: aload_0
    //   259: getfield 90	com/avast/android/mobilesecurity/app/scanner/af:d	Lcom/avast/android/mobilesecurity/scan/ScanService;
    //   262: aload_0
    //   263: getfield 341	com/avast/android/mobilesecurity/app/scanner/af:E	I
    //   266: invokestatic 346	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   269: new 184	java/io/File
    //   272: dup
    //   273: aload 13
    //   275: getfield 469	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   278: invokespecial 508	java/io/File:<init>	(Ljava/lang/String;)V
    //   281: aload 14
    //   283: bipush 32
    //   285: aload_0
    //   286: getfield 164	com/avast/android/mobilesecurity/app/scanner/af:y	I
    //   289: ior
    //   290: i2l
    //   291: invokestatic 351	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;
    //   294: astore 18
    //   296: aload_0
    //   297: getfield 124	com/avast/android/mobilesecurity/app/scanner/af:c	Lcom/avast/android/mobilesecurity/app/scanner/o;
    //   300: aload 18
    //   302: aload 13
    //   304: aload 13
    //   306: aload_0
    //   307: getfield 96	com/avast/android/mobilesecurity/app/scanner/af:a	Landroid/content/pm/PackageManager;
    //   310: invokevirtual 497	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   313: invokevirtual 500	java/lang/Object:toString	()Ljava/lang/String;
    //   316: aconst_null
    //   317: bipush 16
    //   319: invokevirtual 354	com/avast/android/mobilesecurity/app/scanner/o:a	(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V
    //   322: aload_0
    //   323: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   326: astore 19
    //   328: aload 19
    //   330: monitorenter
    //   331: aload_0
    //   332: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   335: astore 21
    //   337: aload 21
    //   339: iconst_1
    //   340: aload 21
    //   342: getfield 321	com/avast/android/mobilesecurity/scan/ScanProgress:f	I
    //   345: iadd
    //   346: putfield 321	com/avast/android/mobilesecurity/scan/ScanProgress:f	I
    //   349: aload_0
    //   350: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   353: astore 22
    //   355: aload 22
    //   357: iconst_1
    //   358: aload 22
    //   360: getfield 323	com/avast/android/mobilesecurity/scan/ScanProgress:e	I
    //   363: iadd
    //   364: putfield 323	com/avast/android/mobilesecurity/scan/ScanProgress:e	I
    //   367: aload 19
    //   369: monitorexit
    //   370: aload_0
    //   371: getfield 105	com/avast/android/mobilesecurity/app/scanner/af:b	Lcom/avast/android/mobilesecurity/t;
    //   374: invokevirtual 511	com/avast/android/mobilesecurity/t:aw	()V
    //   377: goto -246 -> 131
    //   380: astore 5
    //   382: ldc_w 513
    //   385: aload 5
    //   387: invokestatic 442	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   390: pop
    //   391: invokestatic 174	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   394: ldc_w 513
    //   397: aload 5
    //   399: invokevirtual 179	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   402: iconst_0
    //   403: istore 7
    //   405: iload 7
    //   407: ireturn
    //   408: astore 4
    //   410: aload_3
    //   411: monitorexit
    //   412: aload 4
    //   414: athrow
    //   415: astore 16
    //   417: aload 15
    //   419: monitorexit
    //   420: aload 16
    //   422: athrow
    //   423: astore 20
    //   425: aload 19
    //   427: monitorexit
    //   428: aload 20
    //   430: athrow
    //   431: aload_0
    //   432: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   435: astore 11
    //   437: aload 11
    //   439: monitorenter
    //   440: aload_0
    //   441: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   444: aload_0
    //   445: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   448: getfield 321	com/avast/android/mobilesecurity/scan/ScanProgress:f	I
    //   451: putfield 515	com/avast/android/mobilesecurity/scan/ScanProgress:g	I
    //   454: aload_0
    //   455: invokevirtual 309	com/avast/android/mobilesecurity/app/scanner/af:isCancelled	()Z
    //   458: ifne +41 -> 499
    //   461: aload_0
    //   462: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   465: invokestatic 334	java/lang/System:currentTimeMillis	()J
    //   468: lload 8
    //   470: lsub
    //   471: ldc2_w 335
    //   474: ldiv
    //   475: l2i
    //   476: putfield 339	com/avast/android/mobilesecurity/scan/ScanProgress:h	I
    //   479: aload_0
    //   480: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   483: aload_0
    //   484: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   487: getfield 485	com/avast/android/mobilesecurity/scan/ScanProgress:d	I
    //   490: putfield 323	com/avast/android/mobilesecurity/scan/ScanProgress:e	I
    //   493: aload_0
    //   494: iconst_1
    //   495: iconst_0
    //   496: invokevirtual 518	com/avast/android/mobilesecurity/app/scanner/af:a	(ZZ)V
    //   499: aload 11
    //   501: monitorexit
    //   502: aload_0
    //   503: invokevirtual 309	com/avast/android/mobilesecurity/app/scanner/af:isCancelled	()Z
    //   506: ifne +17 -> 523
    //   509: iconst_1
    //   510: istore 7
    //   512: goto -107 -> 405
    //   515: astore 12
    //   517: aload 11
    //   519: monitorexit
    //   520: aload 12
    //   522: athrow
    //   523: iconst_0
    //   524: istore 7
    //   526: goto -121 -> 405
    //
    // Exception table:
    //   from	to	target	type
    //   118	184	380	java/lang/Throwable
    //   224	331	380	java/lang/Throwable
    //   370	377	380	java/lang/Throwable
    //   420	423	380	java/lang/Throwable
    //   428	440	380	java/lang/Throwable
    //   520	523	380	java/lang/Throwable
    //   62	118	408	finally
    //   410	412	408	finally
    //   184	224	415	finally
    //   417	420	415	finally
    //   331	370	423	finally
    //   425	428	423	finally
    //   440	502	515	finally
    //   517	520	515	finally
  }

  // ERROR //
  private boolean p()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: invokespecial 520	com/avast/android/mobilesecurity/app/scanner/af:q	()V
    //   6: aload_0
    //   7: invokevirtual 522	com/avast/android/mobilesecurity/app/scanner/af:g	()V
    //   10: invokestatic 334	java/lang/System:currentTimeMillis	()J
    //   13: ldc2_w 335
    //   16: aload_0
    //   17: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   20: getfield 339	com/avast/android/mobilesecurity/scan/ScanProgress:h	I
    //   23: i2l
    //   24: lmul
    //   25: lsub
    //   26: lstore 5
    //   28: aload_0
    //   29: getfield 48	com/avast/android/mobilesecurity/app/scanner/af:o	Z
    //   32: ifeq +79 -> 111
    //   35: aload_0
    //   36: getfield 105	com/avast/android/mobilesecurity/app/scanner/af:b	Lcom/avast/android/mobilesecurity/t;
    //   39: invokevirtual 526	com/avast/android/mobilesecurity/t:aT	()Ljava/util/List;
    //   42: astore 7
    //   44: aload 7
    //   46: ifnonnull +75 -> 121
    //   49: iconst_1
    //   50: istore 8
    //   52: iload 8
    //   54: ifeq +502 -> 556
    //   57: aload_0
    //   58: getfield 169	com/avast/android/mobilesecurity/app/scanner/af:u	Lcom/avast/android/generic/util/ad;
    //   61: invokevirtual 528	com/avast/android/generic/util/ad:c	()Ljava/util/List;
    //   64: astore 9
    //   66: aload 9
    //   68: invokeinterface 240 1 0
    //   73: astore 10
    //   75: iconst_1
    //   76: istore 11
    //   78: aload 10
    //   80: invokeinterface 246 1 0
    //   85: ifeq +26 -> 111
    //   88: aload 10
    //   90: invokeinterface 250 1 0
    //   95: checkcast 252	java/lang/String
    //   98: astore 12
    //   100: aload_0
    //   101: invokevirtual 309	com/avast/android/mobilesecurity/app/scanner/af:isCancelled	()Z
    //   104: istore 13
    //   106: iload 13
    //   108: ifeq +19 -> 127
    //   111: aload_0
    //   112: invokespecial 530	com/avast/android/mobilesecurity/app/scanner/af:r	()V
    //   115: aload_0
    //   116: invokevirtual 532	com/avast/android/mobilesecurity/app/scanner/af:h	()V
    //   119: iload_1
    //   120: ireturn
    //   121: iconst_0
    //   122: istore 8
    //   124: goto -72 -> 52
    //   127: new 184	java/io/File
    //   130: dup
    //   131: aload 12
    //   133: invokespecial 508	java/io/File:<init>	(Ljava/lang/String;)V
    //   136: astore 14
    //   138: aload_0
    //   139: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   142: astore 18
    //   144: aload 18
    //   146: monitorenter
    //   147: aload_0
    //   148: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   151: iconst_1
    //   152: putfield 480	com/avast/android/mobilesecurity/scan/ScanProgress:j	Z
    //   155: aload_0
    //   156: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   159: aload_0
    //   160: aload 14
    //   162: invokespecial 534	com/avast/android/mobilesecurity/app/scanner/af:a	(Ljava/io/File;)J
    //   165: ldc2_w 328
    //   168: ldiv
    //   169: l2i
    //   170: putfield 485	com/avast/android/mobilesecurity/scan/ScanProgress:d	I
    //   173: aload_0
    //   174: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   177: iconst_0
    //   178: putfield 321	com/avast/android/mobilesecurity/scan/ScanProgress:f	I
    //   181: aload_0
    //   182: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   185: iconst_0
    //   186: putfield 323	com/avast/android/mobilesecurity/scan/ScanProgress:e	I
    //   189: aload 9
    //   191: invokeinterface 483 1 0
    //   196: iconst_1
    //   197: if_icmple +211 -> 408
    //   200: aload_0
    //   201: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   204: astore 26
    //   206: aload_0
    //   207: getfield 90	com/avast/android/mobilesecurity/app/scanner/af:d	Lcom/avast/android/mobilesecurity/scan/ScanService;
    //   210: astore 27
    //   212: iload 8
    //   214: ifeq +186 -> 400
    //   217: ldc_w 535
    //   220: istore 28
    //   222: iconst_2
    //   223: anewarray 499	java/lang/Object
    //   226: astore 29
    //   228: aload 29
    //   230: iconst_0
    //   231: iload 11
    //   233: invokestatic 346	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   236: aastore
    //   237: aload 29
    //   239: iconst_1
    //   240: aload 9
    //   242: invokeinterface 483 1 0
    //   247: invokestatic 346	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   250: aastore
    //   251: aload 26
    //   253: aload 27
    //   255: iload 28
    //   257: aload 29
    //   259: invokevirtual 538	com/avast/android/mobilesecurity/scan/ScanService:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   262: putfield 423	com/avast/android/mobilesecurity/scan/ScanProgress:b	Ljava/lang/String;
    //   265: aload_0
    //   266: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   269: ldc 57
    //   271: putfield 312	com/avast/android/mobilesecurity/scan/ScanProgress:c	Ljava/lang/String;
    //   274: aload_0
    //   275: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   278: invokestatic 334	java/lang/System:currentTimeMillis	()J
    //   281: lload 5
    //   283: lsub
    //   284: ldc2_w 335
    //   287: ldiv
    //   288: l2i
    //   289: putfield 339	com/avast/android/mobilesecurity/scan/ScanProgress:h	I
    //   292: aload_0
    //   293: iconst_1
    //   294: iconst_1
    //   295: invokevirtual 518	com/avast/android/mobilesecurity/app/scanner/af:a	(ZZ)V
    //   298: aload 18
    //   300: monitorexit
    //   301: aload_0
    //   302: aload 14
    //   304: lload 5
    //   306: invokespecial 540	com/avast/android/mobilesecurity/app/scanner/af:a	(Ljava/io/File;J)Z
    //   309: istore_1
    //   310: aload_0
    //   311: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   314: astore 23
    //   316: aload 23
    //   318: monitorenter
    //   319: aload_0
    //   320: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   323: astore 25
    //   325: aload 25
    //   327: aload 25
    //   329: getfield 515	com/avast/android/mobilesecurity/scan/ScanProgress:g	I
    //   332: aload_0
    //   333: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   336: getfield 321	com/avast/android/mobilesecurity/scan/ScanProgress:f	I
    //   339: iadd
    //   340: putfield 515	com/avast/android/mobilesecurity/scan/ScanProgress:g	I
    //   343: iload_1
    //   344: ifeq +163 -> 507
    //   347: aload_0
    //   348: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   351: invokestatic 334	java/lang/System:currentTimeMillis	()J
    //   354: lload 5
    //   356: lsub
    //   357: ldc2_w 335
    //   360: ldiv
    //   361: l2i
    //   362: putfield 339	com/avast/android/mobilesecurity/scan/ScanProgress:h	I
    //   365: aload_0
    //   366: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   369: aload_0
    //   370: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   373: getfield 485	com/avast/android/mobilesecurity/scan/ScanProgress:d	I
    //   376: putfield 323	com/avast/android/mobilesecurity/scan/ScanProgress:e	I
    //   379: aload_0
    //   380: iconst_1
    //   381: iconst_0
    //   382: invokevirtual 518	com/avast/android/mobilesecurity/app/scanner/af:a	(ZZ)V
    //   385: aload 23
    //   387: monitorexit
    //   388: iload_1
    //   389: istore 17
    //   391: iinc 11 1
    //   394: iload 17
    //   396: istore_1
    //   397: goto -319 -> 78
    //   400: ldc_w 541
    //   403: istore 28
    //   405: goto -183 -> 222
    //   408: aload_0
    //   409: getfield 86	com/avast/android/mobilesecurity/app/scanner/af:e	Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    //   412: astore 20
    //   414: aload_0
    //   415: getfield 90	com/avast/android/mobilesecurity/app/scanner/af:d	Lcom/avast/android/mobilesecurity/scan/ScanService;
    //   418: astore 21
    //   420: iload 8
    //   422: ifeq +77 -> 499
    //   425: ldc_w 542
    //   428: istore 22
    //   430: aload 20
    //   432: aload 21
    //   434: iload 22
    //   436: invokevirtual 421	com/avast/android/mobilesecurity/scan/ScanService:getString	(I)Ljava/lang/String;
    //   439: putfield 423	com/avast/android/mobilesecurity/scan/ScanProgress:b	Ljava/lang/String;
    //   442: goto -177 -> 265
    //   445: astore 19
    //   447: aload 18
    //   449: monitorexit
    //   450: aload 19
    //   452: athrow
    //   453: astore 15
    //   455: new 254	java/lang/StringBuilder
    //   458: dup
    //   459: invokespecial 255	java/lang/StringBuilder:<init>	()V
    //   462: ldc_w 544
    //   465: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   468: aload 12
    //   470: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   473: invokevirtual 270	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   476: aload 15
    //   478: invokestatic 442	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   481: pop
    //   482: invokestatic 174	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   485: ldc_w 546
    //   488: aload 15
    //   490: invokevirtual 179	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   493: iload_1
    //   494: istore 17
    //   496: goto -105 -> 391
    //   499: ldc_w 547
    //   502: istore 22
    //   504: goto -74 -> 430
    //   507: aload 23
    //   509: monitorexit
    //   510: goto -399 -> 111
    //   513: astore 24
    //   515: aload 23
    //   517: monitorexit
    //   518: aload 24
    //   520: athrow
    //   521: astore_3
    //   522: ldc_w 546
    //   525: aload_3
    //   526: invokestatic 442	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   529: pop
    //   530: invokestatic 174	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   533: ldc_w 546
    //   536: aload_3
    //   537: invokevirtual 179	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   540: aload_0
    //   541: invokespecial 530	com/avast/android/mobilesecurity/app/scanner/af:r	()V
    //   544: iconst_0
    //   545: istore_1
    //   546: goto -431 -> 115
    //   549: astore_2
    //   550: aload_0
    //   551: invokespecial 530	com/avast/android/mobilesecurity/app/scanner/af:r	()V
    //   554: aload_2
    //   555: athrow
    //   556: aload 7
    //   558: astore 9
    //   560: goto -494 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   147	301	445	finally
    //   408	450	445	finally
    //   127	147	453	java/lang/Exception
    //   301	319	453	java/lang/Exception
    //   450	453	453	java/lang/Exception
    //   518	521	453	java/lang/Exception
    //   319	388	513	finally
    //   507	518	513	finally
    //   10	106	521	java/lang/Throwable
    //   127	147	521	java/lang/Throwable
    //   301	319	521	java/lang/Throwable
    //   450	453	521	java/lang/Throwable
    //   455	493	521	java/lang/Throwable
    //   518	521	521	java/lang/Throwable
    //   10	106	549	finally
    //   127	147	549	finally
    //   301	319	549	finally
    //   450	453	549	finally
    //   455	493	549	finally
    //   518	521	549	finally
    //   522	540	549	finally
  }

  private void q()
  {
    p.a(this.d).a(new Intent("intent.action.sd_card_scan_started"));
  }

  private void r()
  {
    p.a(this.d).a(new Intent("intent.action.sd_card_scan_stopped"));
  }

  private void s()
  {
    this.d.getContentResolver().delete(q.a(), "packageName notnull", null);
    t localt = this.b;
    if (this.b.as() > 0);
    for (boolean bool = true; ; bool = false)
    {
      localt.l(bool);
      this.b.b(0);
      this.b.d(0);
      return;
    }
  }

  protected int a()
  {
    return 2131427334;
  }

  protected Boolean a(Void[] paramArrayOfVoid)
  {
    boolean bool1 = true;
    while (true)
    {
      int k;
      try
      {
        this.E = i.a(this.d).intValue();
        k();
        this.e.a = this.d.getString(2131493354);
        this.m.postDelayed(this.F, 1000L);
        if (!this.x)
        {
          if (this.A)
            m();
        }
        else
        {
          m.b("ScannerScanTask", "Continuing with scan.");
          this.v = false;
          if (this.p)
            s();
          if (this.q)
            a(this.b.aT());
          if (!this.p)
            break label505;
          boolean bool4 = o();
          i = this.e.f;
          bool1 = bool4;
          if ((!bool1) || (!this.q))
            break label496;
          boolean bool3 = p();
          j = this.e.f;
          bool2 = bool3;
          u localu = u.a(this.d);
          localu.a(y.i, null, null, null, Long.valueOf(this.e.g), Long.valueOf(i), Long.valueOf(j));
          this.m.removeCallbacks(this.F);
          this.b.a("scanDone", true);
          this.b.a("lastScanObjects", this.e.g);
          this.b.a("lastScanTime", this.e.h);
          this.b.a("lastScanDate", System.currentTimeMillis());
          this.b.b();
          k = this.b.ar() + this.b.as() + this.b.at() + this.b.au();
          if (k <= 0)
            break label489;
          Cursor localCursor = this.d.getContentResolver().query(q.c(), null, null, null, null);
          if (localCursor == null)
            break label489;
          int i1 = localCursor.getCount();
          localCursor.close();
          m = i1;
          this.c.a(m);
          WidgetControlProvider.a(this.d);
          this.t.a(k, this.e.g, av.a);
          if (k > 0)
            localu.a(y.j, null, null, null, Long.valueOf(m), null, null);
          Boolean localBoolean = Boolean.valueOf(bool2);
          return localBoolean;
        }
        j();
        m.b("ScannerScanTask", "Parallel VPS update called.");
        continue;
      }
      finally
      {
        l();
        i.a(this.d, this.E);
      }
      label489: int m = k;
      continue;
      label496: boolean bool2 = bool1;
      int j = 0;
      continue;
      label505: int i = 0;
    }
  }

  protected void a(Boolean paramBoolean)
  {
    super.a(paramBoolean);
    n();
    l();
  }

  protected Intent b()
  {
    return new Intent(this.d, ScannerScanActivity.class);
  }

  protected String c()
  {
    String str;
    if (this.A)
      str = this.d.getString(2131493391);
    while (true)
    {
      return str;
      if (this.p)
        str = this.d.getString(2131493381);
      else if (this.q)
        str = this.d.getString(2131493386);
      else
        str = this.d.getString(2131493380);
    }
  }

  protected String d()
  {
    return this.d.getString(2131493354);
  }

  void f()
  {
    String str = Environment.getExternalStorageState();
    if ("mounted".equals(str))
      this.o = true;
    while (true)
    {
      return;
      if ("mounted_ro".equals(str))
        this.o = true;
      else
        this.o = false;
    }
  }

  void g()
  {
    this.n = new ah(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
    localIntentFilter.addAction("android.intent.action.MEDIA_REMOVED");
    this.d.registerReceiver(this.n, localIntentFilter);
    this.v = true;
    f();
  }

  void h()
  {
    if (this.v);
    try
    {
      this.d.unregisterReceiver(this.n);
      this.n = null;
      this.v = false;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
      {
        m.b("External storage register hasn't been registered", localIllegalArgumentException);
        a.a().a("External storage register hasn't been registered", localIllegalArgumentException);
      }
    }
  }

  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 2131165223)
      try
      {
        if (this.C)
        {
          m.b("ScannerScanTask", "Sequential VPS update complete, releasing semaphore permit.");
          this.C = false;
          this.B.release();
          this.e.m = false;
        }
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    return true;
  }

  protected void onCancelled()
  {
    super.onCancelled();
    this.u.a();
    n();
    l();
  }

  protected void onPreExecute()
  {
    this.p = this.b.aO();
    this.q = this.b.aP();
    this.r = this.b.aI();
    if (this.z)
    {
      this.p = true;
      this.q = false;
    }
    if (this.A)
      ((s)com.avast.android.generic.ad.a(this.d, s.class)).a(2131165223, this);
    super.onPreExecute();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.af
 * JD-Core Version:    0.6.2
 */