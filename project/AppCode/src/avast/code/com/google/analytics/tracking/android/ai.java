package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.Command;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

class ai extends Thread
  implements l
{
  private static ai i;
  private final LinkedBlockingQueue a = new LinkedBlockingQueue();
  private volatile boolean b = false;
  private volatile boolean c = false;
  private volatile boolean d;
  private volatile List e;
  private volatile az f;
  private volatile String g;
  private volatile String h;
  private final bl j;
  private final Context k;

  private ai(Context paramContext)
  {
    super("GAThread");
    this.k = paramContext;
    this.j = new z(paramContext, this);
    f();
  }

  static ai a(Context paramContext)
  {
    if (i == null)
      i = new ai(paramContext);
    return i;
  }

  private String a(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }

  private void a(Runnable paramRunnable)
  {
    this.a.add(paramRunnable);
  }

  private void a(Map paramMap, String paramString1, String paramString2)
  {
    if (!paramMap.containsKey(paramString1))
      paramMap.put(paramString1, paramString2);
  }

  private boolean a(String paramString)
  {
    try
    {
      FileOutputStream localFileOutputStream = this.k.openFileOutput("gaClientId", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      bool = true;
      return bool;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        ay.c("Error creating clientId file.");
        bool = false;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        ay.c("Error writing to clientId file.");
        boolean bool = false;
      }
    }
  }

  static String b(Context paramContext)
  {
    Object localObject = null;
    try
    {
      FileInputStream localFileInputStream = paramContext.openFileInput("gaInstallData");
      arrayOfByte = new byte[8192];
      m = localFileInputStream.read(arrayOfByte, 0, 8192);
      if (localFileInputStream.available() > 0)
      {
        ay.c("Too much campaign data, ignoring it.");
        localFileInputStream.close();
        paramContext.deleteFile("gaInstallData");
        localObject = null;
      }
      else
      {
        localFileInputStream.close();
        paramContext.deleteFile("gaInstallData");
        if (m <= 0)
        {
          ay.h("Campaign file is empty.");
          localObject = null;
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      byte[] arrayOfByte;
      int m;
      ay.d("No campaign data found.");
      localObject = null;
      break label160;
      String str = new String(arrayOfByte, 0, m);
      ay.d("Campaign found: " + str);
      localObject = str;
    }
    catch (IOException localIOException)
    {
      ay.c("Error reading campaign data.");
      paramContext.deleteFile("gaInstallData");
    }
    label160: return localObject;
  }

  private String b(Map paramMap)
  {
    String str = (String)paramMap.get("internalHitUrl");
    if (str == null)
      if (!bq.c((String)paramMap.get("useSecure")))
        break label38;
    label38: for (str = "https://ssl.google-analytics.com/collect"; ; str = "http://www.google-analytics.com/collect")
      return str;
  }

  private void c(Map paramMap)
  {
    String str = (String)paramMap.get("rawException");
    if (str == null);
    while (true)
    {
      return;
      paramMap.remove("rawException");
      ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(bq.e(str));
      try
      {
        ObjectInputStream localObjectInputStream = new ObjectInputStream(localByteArrayInputStream);
        Object localObject = localObjectInputStream.readObject();
        localObjectInputStream.close();
        if ((localObject instanceof Throwable))
        {
          Throwable localThrowable = (Throwable)localObject;
          ArrayList localArrayList = new ArrayList();
          paramMap.put("exDescription", new bn(this.k, localArrayList).a((String)paramMap.get("exceptionThreadName"), localThrowable));
        }
      }
      catch (IOException localIOException)
      {
        ay.h("IOException reading exception");
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        ay.h("ClassNotFoundException reading exception");
      }
    }
  }

  private boolean d(Map paramMap)
  {
    double d1;
    boolean bool;
    if (paramMap.get("sampleRate") != null)
    {
      d1 = bq.b((String)paramMap.get("sampleRate"));
      if (d1 <= 0.0D)
        bool = true;
    }
    while (true)
    {
      return bool;
      if (d1 < 100.0D)
      {
        String str = (String)paramMap.get("clientId");
        if ((str != null) && (Math.abs(str.hashCode()) % 10000 >= d1 * 100.0D))
          bool = true;
      }
      else
      {
        bool = false;
      }
    }
  }

  private void e(Map paramMap)
  {
    PackageManager localPackageManager = this.k.getPackageManager();
    String str1 = this.k.getPackageName();
    String str2 = localPackageManager.getInstallerPackageName(str1);
    String str3 = null;
    try
    {
      localPackageInfo = localPackageManager.getPackageInfo(this.k.getPackageName(), 0);
      if (localPackageInfo != null)
      {
        String str5 = localPackageManager.getApplicationLabel(localPackageInfo.applicationInfo).toString();
        str4 = str5;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      while (true)
      {
        try
        {
          PackageInfo localPackageInfo;
          str3 = localPackageInfo.versionName;
          a(paramMap, "appName", str4);
          a(paramMap, "appVersion", str3);
          a(paramMap, "appId", str1);
          a(paramMap, "appInstallerId", str2);
          paramMap.put("apiVersion", "1");
          return;
          localNameNotFoundException1 = localNameNotFoundException1;
          str4 = str1;
          ay.c("Error retrieving package info: appName set to " + str4);
          continue;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2)
        {
          continue;
        }
        String str4 = str1;
        str3 = null;
      }
    }
  }

  private void f()
  {
    this.j.e();
    this.e = new ArrayList();
    this.e.add(new Command("appendVersion", "_v", "ma1b3"));
    this.e.add(new Command("appendQueueTime", "qt", null));
    this.e.add(new Command("appendCacheBuster", "z", null));
    this.f = new az();
    bc.a(this.f);
    start();
  }

  private void f(Map paramMap)
  {
    String str = bq.d((String)paramMap.get("campaign"));
    if (TextUtils.isEmpty(str));
    while (true)
    {
      return;
      Map localMap = bq.a(str);
      paramMap.put("campaignContent", localMap.get("utm_content"));
      paramMap.put("campaignMedium", localMap.get("utm_medium"));
      paramMap.put("campaignName", localMap.get("utm_campaign"));
      paramMap.put("campaignSource", localMap.get("utm_source"));
      paramMap.put("campaignKeyword", localMap.get("utm_term"));
      paramMap.put("campaignId", localMap.get("utm_id"));
      paramMap.put("gclid", localMap.get("gclid"));
      paramMap.put("dclid", localMap.get("dclid"));
      paramMap.put("gmob_t", localMap.get("gmob_t"));
    }
  }

  private boolean g()
  {
    return this.k.getFileStreamPath("gaOptOut").exists();
  }

  public void a()
  {
    a(new ak(this));
  }

  public void a(d paramd)
  {
    a(new al(this, paramd));
  }

  public void a(m paramm)
  {
    a(new am(this, paramm));
  }

  public void a(Map paramMap)
  {
    a(new aj(this, new HashMap(paramMap), System.currentTimeMillis()));
  }

  public LinkedBlockingQueue b()
  {
    return this.a;
  }

  public Thread c()
  {
    return this;
  }

  String d()
  {
    String str = Long.toHexString(1L + (0xFFFFFFFF & new SecureRandom().nextLong()) % 9223372036854775807L);
    if (!a(str));
    return str;
  }

  // ERROR //
  String e()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 45	com/google/analytics/tracking/android/ai:k	Landroid/content/Context;
    //   6: ldc 118
    //   8: invokevirtual 151	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore 9
    //   13: sipush 128
    //   16: newarray byte
    //   18: astore 10
    //   20: aload 9
    //   22: aload 10
    //   24: iconst_0
    //   25: sipush 128
    //   28: invokevirtual 157	java/io/FileInputStream:read	([BII)I
    //   31: istore 11
    //   33: aload 9
    //   35: invokevirtual 161	java/io/FileInputStream:available	()I
    //   38: ifle +25 -> 63
    //   41: ldc_w 492
    //   44: invokestatic 142	com/google/analytics/tracking/android/ay:c	(Ljava/lang/String;)I
    //   47: pop
    //   48: aload 9
    //   50: invokevirtual 164	java/io/FileInputStream:close	()V
    //   53: aload_0
    //   54: getfield 45	com/google/analytics/tracking/android/ai:k	Landroid/content/Context;
    //   57: ldc 147
    //   59: invokevirtual 167	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   62: pop
    //   63: iload 11
    //   65: ifgt +36 -> 101
    //   68: ldc_w 494
    //   71: invokestatic 142	com/google/analytics/tracking/android/ay:c	(Ljava/lang/String;)I
    //   74: pop
    //   75: aload 9
    //   77: invokevirtual 164	java/io/FileInputStream:close	()V
    //   80: aload_0
    //   81: getfield 45	com/google/analytics/tracking/android/ai:k	Landroid/content/Context;
    //   84: ldc 147
    //   86: invokevirtual 167	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   89: pop
    //   90: aload_1
    //   91: ifnonnull +8 -> 99
    //   94: aload_0
    //   95: invokevirtual 496	com/google/analytics/tracking/android/ai:d	()Ljava/lang/String;
    //   98: astore_1
    //   99: aload_1
    //   100: areturn
    //   101: new 82	java/lang/String
    //   104: dup
    //   105: aload 10
    //   107: iconst_0
    //   108: iload 11
    //   110: invokespecial 178	java/lang/String:<init>	([BII)V
    //   113: astore 12
    //   115: aload 9
    //   117: invokevirtual 164	java/io/FileInputStream:close	()V
    //   120: aload 12
    //   122: astore_1
    //   123: goto -33 -> 90
    //   126: astore 6
    //   128: ldc_w 498
    //   131: invokestatic 142	com/google/analytics/tracking/android/ay:c	(Ljava/lang/String;)I
    //   134: pop
    //   135: aload_0
    //   136: getfield 45	com/google/analytics/tracking/android/ai:k	Landroid/content/Context;
    //   139: ldc 147
    //   141: invokevirtual 167	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   144: pop
    //   145: goto -55 -> 90
    //   148: astore_3
    //   149: ldc_w 500
    //   152: invokestatic 142	com/google/analytics/tracking/android/ay:c	(Ljava/lang/String;)I
    //   155: pop
    //   156: aload_0
    //   157: getfield 45	com/google/analytics/tracking/android/ai:k	Landroid/content/Context;
    //   160: ldc 147
    //   162: invokevirtual 167	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   165: pop
    //   166: goto -76 -> 90
    //   169: astore 15
    //   171: aload 12
    //   173: astore_1
    //   174: goto -25 -> 149
    //   177: astore 14
    //   179: aload 12
    //   181: astore_1
    //   182: goto -54 -> 128
    //   185: astore_2
    //   186: aconst_null
    //   187: astore_1
    //   188: goto -98 -> 90
    //   191: astore 13
    //   193: aload 12
    //   195: astore_1
    //   196: goto -106 -> 90
    //
    // Exception table:
    //   from	to	target	type
    //   2	90	126	java/io/IOException
    //   101	115	126	java/io/IOException
    //   2	90	148	java/lang/NumberFormatException
    //   101	115	148	java/lang/NumberFormatException
    //   115	120	169	java/lang/NumberFormatException
    //   115	120	177	java/io/IOException
    //   2	90	185	java/io/FileNotFoundException
    //   101	115	185	java/io/FileNotFoundException
    //   115	120	191	java/io/FileNotFoundException
  }

  public void run()
  {
    try
    {
      Thread.sleep(2000L);
    }
    catch (InterruptedException localInterruptedException1)
    {
      try
      {
        while (true)
        {
          this.d = g();
          this.h = e();
          this.g = b(this.k);
          while (!this.c)
            try
            {
              Runnable localRunnable = (Runnable)this.a.take();
              if (!this.b)
                localRunnable.run();
            }
            catch (InterruptedException localInterruptedException2)
            {
              ay.d(localInterruptedException2.toString());
            }
            catch (Throwable localThrowable2)
            {
              ay.c("Error on GAThread: " + a(localThrowable2));
              ay.c("Google Analytics is shutting down.");
              this.b = true;
            }
          localInterruptedException1 = localInterruptedException1;
          ay.h("sleep interrupted in GAThread initialize");
        }
      }
      catch (Throwable localThrowable1)
      {
        while (true)
        {
          ay.c("Error initializing the GAThread: " + a(localThrowable1));
          ay.c("Google Analytics will not start up.");
          this.b = true;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ai
 * JD-Core Version:    0.6.2
 */