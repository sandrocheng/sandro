package org.antivirus.core.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Message;
import java.util.Map;

public final class r extends v
{
  public final boolean a()
  {
    return false;
  }

  // ERROR //
  public final boolean a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 19	org/antivirus/core/a/r:h	Lorg/antivirus/core/b/a;
    //   4: getfield 25	org/antivirus/core/b/a:o	I
    //   7: invokestatic 31	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   10: astore_2
    //   11: aload_0
    //   12: getfield 19	org/antivirus/core/a/r:h	Lorg/antivirus/core/b/a;
    //   15: getfield 34	org/antivirus/core/b/a:p	I
    //   18: invokestatic 31	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   21: astore_3
    //   22: ldc 36
    //   24: astore 4
    //   26: ldc 36
    //   28: astore 5
    //   30: new 38	org/antivirus/core/EngineSettings
    //   33: dup
    //   34: aload_1
    //   35: invokespecial 41	org/antivirus/core/EngineSettings:<init>	(Landroid/content/Context;)V
    //   38: invokevirtual 45	org/antivirus/core/EngineSettings:getSecDbVersion	()Ljava/lang/String;
    //   41: astore 6
    //   43: aload 6
    //   45: ifnonnull +339 -> 384
    //   48: ldc 36
    //   50: astore 7
    //   52: getstatic 51	android/os/Build:BRAND	Ljava/lang/String;
    //   55: astore 8
    //   57: getstatic 54	android/os/Build:DEVICE	Ljava/lang/String;
    //   60: astore 9
    //   62: getstatic 57	android/os/Build:ID	Ljava/lang/String;
    //   65: astore 10
    //   67: getstatic 62	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   70: astore 11
    //   72: new 64	java/util/Date
    //   75: dup
    //   76: invokespecial 65	java/util/Date:<init>	()V
    //   79: invokevirtual 69	java/util/Date:getTime	()J
    //   82: invokestatic 74	java/lang/Long:toString	(J)Ljava/lang/String;
    //   85: astore 12
    //   87: new 76	java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   94: getstatic 80	android/os/Build:FINGERPRINT	Ljava/lang/String;
    //   97: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: ldc 86
    //   102: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: getstatic 89	android/os/Build:DISPLAY	Ljava/lang/String;
    //   108: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   114: astore 13
    //   116: new 93	org/antivirus/core/b/g
    //   119: dup
    //   120: aload_1
    //   121: invokespecial 94	org/antivirus/core/b/g:<init>	(Landroid/content/Context;)V
    //   124: invokevirtual 97	org/antivirus/core/b/g:c	()Ljava/lang/String;
    //   127: astore 14
    //   129: aload 14
    //   131: ifnonnull +322 -> 453
    //   134: ldc 36
    //   136: astore 15
    //   138: aload_1
    //   139: invokevirtual 103	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   142: aload_1
    //   143: invokevirtual 106	android/content/Context:getPackageName	()Ljava/lang/String;
    //   146: iconst_0
    //   147: invokevirtual 112	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   150: astore 31
    //   152: aload 31
    //   154: getfield 117	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   157: astore 4
    //   159: aload 31
    //   161: getfield 120	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   164: astore 5
    //   166: aload 31
    //   168: getfield 123	android/content/pm/PackageInfo:versionCode	I
    //   171: invokestatic 31	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   174: astore 32
    //   176: aload 5
    //   178: astore 19
    //   180: aload 4
    //   182: astore 17
    //   184: aload 32
    //   186: astore 18
    //   188: aload_1
    //   189: ldc 125
    //   191: invokevirtual 129	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   194: checkcast 131	android/telephony/TelephonyManager
    //   197: astore 27
    //   199: aload 27
    //   201: invokevirtual 134	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   204: astore 28
    //   206: aload 27
    //   208: invokevirtual 137	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   211: astore 30
    //   213: aload 30
    //   215: astore 23
    //   217: aload 28
    //   219: astore 22
    //   221: aload 22
    //   223: invokestatic 143	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   226: ifeq +7 -> 233
    //   229: ldc 145
    //   231: astore 22
    //   233: getstatic 148	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   236: invokestatic 152	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   239: iconst_4
    //   240: if_icmplt +197 -> 437
    //   243: ldc 47
    //   245: ldc 154
    //   247: invokevirtual 160	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   250: aconst_null
    //   251: invokevirtual 166	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   254: invokevirtual 169	java/lang/Object:toString	()Ljava/lang/String;
    //   257: astore 26
    //   259: aload 26
    //   261: astore 24
    //   263: aload_0
    //   264: bipush 18
    //   266: anewarray 168	java/lang/Object
    //   269: dup
    //   270: iconst_0
    //   271: ldc 171
    //   273: aastore
    //   274: dup
    //   275: iconst_1
    //   276: aload_2
    //   277: aastore
    //   278: dup
    //   279: iconst_2
    //   280: aload_3
    //   281: aastore
    //   282: dup
    //   283: iconst_3
    //   284: aload 15
    //   286: aastore
    //   287: dup
    //   288: iconst_4
    //   289: aload 17
    //   291: aastore
    //   292: dup
    //   293: iconst_5
    //   294: aload 19
    //   296: aastore
    //   297: dup
    //   298: bipush 6
    //   300: aload 18
    //   302: aastore
    //   303: dup
    //   304: bipush 7
    //   306: aload 7
    //   308: aastore
    //   309: dup
    //   310: bipush 8
    //   312: aload 22
    //   314: aastore
    //   315: dup
    //   316: bipush 9
    //   318: aload 23
    //   320: aastore
    //   321: dup
    //   322: bipush 10
    //   324: aload 24
    //   326: aastore
    //   327: dup
    //   328: bipush 11
    //   330: aload 8
    //   332: aastore
    //   333: dup
    //   334: bipush 12
    //   336: aload 9
    //   338: aastore
    //   339: dup
    //   340: bipush 13
    //   342: aload 10
    //   344: aastore
    //   345: dup
    //   346: bipush 14
    //   348: aload 11
    //   350: aastore
    //   351: dup
    //   352: bipush 15
    //   354: aload 12
    //   356: aastore
    //   357: dup
    //   358: bipush 16
    //   360: aload 13
    //   362: aastore
    //   363: dup
    //   364: bipush 17
    //   366: aload_1
    //   367: ldc 173
    //   369: iconst_0
    //   370: invokevirtual 177	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   373: invokeinterface 183 1 0
    //   378: aastore
    //   379: putfield 187	org/antivirus/core/a/r:f	[Ljava/lang/Object;
    //   382: iconst_1
    //   383: ireturn
    //   384: aload 6
    //   386: astore 7
    //   388: goto -336 -> 52
    //   391: astore 16
    //   393: aload 16
    //   395: invokestatic 193	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   398: aload 4
    //   400: astore 17
    //   402: ldc 36
    //   404: astore 18
    //   406: aload 5
    //   408: astore 19
    //   410: goto -222 -> 188
    //   413: astore 20
    //   415: ldc 36
    //   417: astore 21
    //   419: aload 21
    //   421: astore 22
    //   423: ldc 36
    //   425: astore 23
    //   427: goto -206 -> 221
    //   430: astore 25
    //   432: aload 25
    //   434: invokestatic 193	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   437: ldc 195
    //   439: astore 24
    //   441: goto -178 -> 263
    //   444: astore 29
    //   446: aload 28
    //   448: astore 21
    //   450: goto -31 -> 419
    //   453: aload 14
    //   455: astore 15
    //   457: goto -319 -> 138
    //
    // Exception table:
    //   from	to	target	type
    //   138	176	391	android/content/pm/PackageManager$NameNotFoundException
    //   188	206	413	java/lang/Exception
    //   243	259	430	java/lang/Exception
    //   206	213	444	java/lang/Exception
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    int i = paramContext.getSharedPreferences("eeexlfn", 0).getAll().size();
    boolean bool = false;
    if (i > 0)
      bool = true;
    return bool;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    boolean bool1 = paramObject.toString().equals("OK");
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      paramContext.getSharedPreferences("eeexlfn", 0).edit().clear().commit();
      bool2 = true;
    }
  }

  public final q b()
  {
    return q.b;
  }

  public final int c()
  {
    return 1130;
  }

  public final String d()
  {
    return "Crash.report";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.r
 * JD-Core Version:    0.6.2
 */