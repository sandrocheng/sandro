package com.keniu.security.f;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.os.HandlerThread;
import com.keniu.security.MoSecurityApplication;
import java.io.File;

public final class c
{
  private static c f;
  private HandlerThread a = new HandlerThread("db_update");
  private Handler b;
  private PackageManager c;
  private e d;
  private SharedPreferences e;

  public c()
  {
    this.a.start();
    this.b = new Handler(this.a.getLooper());
    this.c = MoSecurityApplication.a().getPackageManager();
    this.d = new e(this);
    this.b.postDelayed(this.d, 7200000L);
    this.e = MoSecurityApplication.a().getSharedPreferences("db_preferences", 0);
  }

  public static c a()
  {
    if (f == null)
      f = new c();
    return f;
  }

  // ERROR //
  private boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 89	com/keniu/security/f/c:b	()Ljava/lang/String;
    //   4: astore_3
    //   5: aload_3
    //   6: ifnonnull +9 -> 15
    //   9: iconst_0
    //   10: istore 8
    //   12: iload 8
    //   14: ireturn
    //   15: new 91	java/net/URL
    //   18: dup
    //   19: aload_1
    //   20: invokespecial 92	java/net/URL:<init>	(Ljava/lang/String;)V
    //   23: invokevirtual 96	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   26: astore 13
    //   28: aload 13
    //   30: sipush 30000
    //   33: invokevirtual 102	java/net/URLConnection:setConnectTimeout	(I)V
    //   36: aload 13
    //   38: sipush 30000
    //   41: invokevirtual 105	java/net/URLConnection:setReadTimeout	(I)V
    //   44: aload 13
    //   46: invokevirtual 108	java/net/URLConnection:connect	()V
    //   49: aload 13
    //   51: instanceof 110
    //   54: ifeq +45 -> 99
    //   57: aload 13
    //   59: checkcast 110	java/net/HttpURLConnection
    //   62: invokevirtual 114	java/net/HttpURLConnection:getResponseCode	()I
    //   65: istore 26
    //   67: iload 26
    //   69: sipush 400
    //   72: if_icmplt +27 -> 99
    //   75: aconst_null
    //   76: invokevirtual 119	java/io/InputStream:close	()V
    //   79: aconst_null
    //   80: invokevirtual 122	java/io/FileOutputStream:close	()V
    //   83: iconst_0
    //   84: istore 8
    //   86: goto -74 -> 12
    //   89: astore 27
    //   91: aload 27
    //   93: invokevirtual 125	java/lang/Exception:printStackTrace	()V
    //   96: goto -13 -> 83
    //   99: aload_2
    //   100: ifnonnull +115 -> 215
    //   103: new 127	java/io/File
    //   106: dup
    //   107: new 129	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   114: aload_3
    //   115: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: ldc 136
    //   120: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: invokespecial 140	java/io/File:<init>	(Ljava/lang/String;)V
    //   129: astore 15
    //   131: aload 15
    //   133: invokevirtual 144	java/io/File:delete	()Z
    //   136: pop
    //   137: aload 13
    //   139: invokevirtual 148	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   142: astore 17
    //   144: new 121	java/io/FileOutputStream
    //   147: dup
    //   148: aload 15
    //   150: invokespecial 151	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   153: astore 18
    //   155: sipush 512
    //   158: newarray byte
    //   160: astore 21
    //   162: aload 17
    //   164: aload 21
    //   166: invokevirtual 155	java/io/InputStream:read	([B)I
    //   169: istore 22
    //   171: iload 22
    //   173: ifle +76 -> 249
    //   176: aload 18
    //   178: aload 21
    //   180: iconst_0
    //   181: iload 22
    //   183: invokevirtual 159	java/io/FileOutputStream:write	([BII)V
    //   186: goto -24 -> 162
    //   189: astore 20
    //   191: aload 17
    //   193: astore 6
    //   195: aload 18
    //   197: astore 5
    //   199: aload 6
    //   201: invokevirtual 119	java/io/InputStream:close	()V
    //   204: aload 5
    //   206: invokevirtual 122	java/io/FileOutputStream:close	()V
    //   209: iconst_0
    //   210: istore 8
    //   212: goto -200 -> 12
    //   215: new 127	java/io/File
    //   218: dup
    //   219: new 129	java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   226: aload_3
    //   227: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: aload_2
    //   231: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: invokespecial 140	java/io/File:<init>	(Ljava/lang/String;)V
    //   240: astore 14
    //   242: aload 14
    //   244: astore 15
    //   246: goto -115 -> 131
    //   249: aload 17
    //   251: invokevirtual 119	java/io/InputStream:close	()V
    //   254: aload 18
    //   256: invokevirtual 122	java/io/FileOutputStream:close	()V
    //   259: iconst_1
    //   260: istore 8
    //   262: goto -250 -> 12
    //   265: astore 23
    //   267: aload 23
    //   269: invokevirtual 125	java/lang/Exception:printStackTrace	()V
    //   272: goto -13 -> 259
    //   275: astore 7
    //   277: aload 7
    //   279: invokevirtual 125	java/lang/Exception:printStackTrace	()V
    //   282: goto -73 -> 209
    //   285: astore 9
    //   287: aconst_null
    //   288: astore 10
    //   290: aconst_null
    //   291: astore 11
    //   293: aload 11
    //   295: invokevirtual 119	java/io/InputStream:close	()V
    //   298: aload 10
    //   300: invokevirtual 122	java/io/FileOutputStream:close	()V
    //   303: aload 9
    //   305: athrow
    //   306: astore 12
    //   308: aload 12
    //   310: invokevirtual 125	java/lang/Exception:printStackTrace	()V
    //   313: goto -10 -> 303
    //   316: astore 25
    //   318: aload 17
    //   320: astore 11
    //   322: aload 25
    //   324: astore 9
    //   326: aconst_null
    //   327: astore 10
    //   329: goto -36 -> 293
    //   332: astore 19
    //   334: aload 18
    //   336: astore 10
    //   338: aload 17
    //   340: astore 11
    //   342: aload 19
    //   344: astore 9
    //   346: goto -53 -> 293
    //   349: astore 4
    //   351: aconst_null
    //   352: astore 5
    //   354: aconst_null
    //   355: astore 6
    //   357: goto -158 -> 199
    //   360: astore 24
    //   362: aload 17
    //   364: astore 6
    //   366: aconst_null
    //   367: astore 5
    //   369: goto -170 -> 199
    //
    // Exception table:
    //   from	to	target	type
    //   75	83	89	java/lang/Exception
    //   155	186	189	java/lang/Exception
    //   249	259	265	java/lang/Exception
    //   199	209	275	java/lang/Exception
    //   15	67	285	finally
    //   103	144	285	finally
    //   215	242	285	finally
    //   293	303	306	java/lang/Exception
    //   144	155	316	finally
    //   155	186	332	finally
    //   15	67	349	java/lang/Exception
    //   103	144	349	java/lang/Exception
    //   215	242	349	java/lang/Exception
    //   144	155	360	java/lang/Exception
  }

  private String b()
  {
    try
    {
      ApplicationInfo localApplicationInfo = this.c.getApplicationInfo("com.ijinshan.mguard", 0);
      String str2 = f.a(localApplicationInfo.dataDir) + "dbini";
      File localFile = new File(str2);
      if (!localFile.exists())
        localFile.mkdirs();
      str1 = f.a(str2);
      return str1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        String str1 = null;
    }
  }

  public final boolean a(String paramString)
  {
    try
    {
      Intent localIntent2 = this.c.getLaunchIntentForPackage(paramString);
      localIntent1 = localIntent2;
      if (localIntent1 == null);
      for (boolean bool = false; ; bool = true)
        return bool;
    }
    catch (Exception localException)
    {
      while (true)
        Intent localIntent1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.c
 * JD-Core Version:    0.6.2
 */