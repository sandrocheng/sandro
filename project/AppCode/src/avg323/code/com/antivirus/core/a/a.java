package com.antivirus.core.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Message;
import com.avg.toolkit.b.g;
import java.util.List;
import java.util.Map;

public class a extends g
  implements com.avg.toolkit.e
{
  public com.avg.toolkit.b.e a()
  {
    return com.avg.toolkit.b.e.b;
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
    paramList.add(a.class);
  }

  public void a(boolean paramBoolean)
  {
  }

  public boolean a(Context paramContext)
  {
    int i = paramContext.getSharedPreferences("eeexlfn", 0).getAll().size();
    boolean bool = false;
    if (i > 0)
      bool = true;
    return bool;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    com.avg.toolkit.f.a.a("should not be called");
    return false;
  }

  public boolean a(Context paramContext, Object paramObject)
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

  public int b()
  {
    return 15000;
  }

  public void b(Bundle paramBundle)
  {
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  // ERROR //
  public boolean b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 92	com/antivirus/core/a/a:h	Lcom/avg/toolkit/e/a;
    //   4: getfield 98	com/avg/toolkit/e/a:o	I
    //   7: invokestatic 103	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   10: astore_2
    //   11: aload_0
    //   12: getfield 92	com/antivirus/core/a/a:h	Lcom/avg/toolkit/e/a;
    //   15: getfield 106	com/avg/toolkit/e/a:p	I
    //   18: invokestatic 103	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   21: astore_3
    //   22: ldc 108
    //   24: astore 4
    //   26: ldc 108
    //   28: astore 5
    //   30: new 110	com/antivirus/core/b
    //   33: dup
    //   34: aload_1
    //   35: invokespecial 113	com/antivirus/core/b:<init>	(Landroid/content/Context;)V
    //   38: invokevirtual 116	com/antivirus/core/b:u	()Ljava/lang/String;
    //   41: astore 6
    //   43: aload 6
    //   45: ifnonnull +348 -> 393
    //   48: ldc 108
    //   50: astore 7
    //   52: getstatic 122	android/os/Build:BRAND	Ljava/lang/String;
    //   55: astore 8
    //   57: getstatic 125	android/os/Build:DEVICE	Ljava/lang/String;
    //   60: astore 9
    //   62: getstatic 128	android/os/Build:ID	Ljava/lang/String;
    //   65: astore 10
    //   67: getstatic 133	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   70: astore 11
    //   72: new 135	java/util/Date
    //   75: dup
    //   76: invokespecial 136	java/util/Date:<init>	()V
    //   79: invokevirtual 140	java/util/Date:getTime	()J
    //   82: invokestatic 145	java/lang/Long:toString	(J)Ljava/lang/String;
    //   85: astore 12
    //   87: new 147	java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   94: getstatic 151	android/os/Build:FINGERPRINT	Ljava/lang/String;
    //   97: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: ldc 157
    //   102: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: getstatic 160	android/os/Build:DISPLAY	Ljava/lang/String;
    //   108: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   114: astore 13
    //   116: new 163	com/avg/toolkit/e/g
    //   119: dup
    //   120: aload_1
    //   121: invokespecial 164	com/avg/toolkit/e/g:<init>	(Landroid/content/Context;)V
    //   124: astore 14
    //   126: aload 14
    //   128: ifnull +272 -> 400
    //   131: aload 14
    //   133: invokevirtual 167	com/avg/toolkit/e/g:c	()Ljava/lang/String;
    //   136: astore 15
    //   138: aload 15
    //   140: ifnonnull +329 -> 469
    //   143: ldc 108
    //   145: astore 16
    //   147: aload_1
    //   148: invokevirtual 171	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   151: aload_1
    //   152: invokevirtual 174	android/content/Context:getPackageName	()Ljava/lang/String;
    //   155: iconst_0
    //   156: invokevirtual 180	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   159: astore 32
    //   161: aload 32
    //   163: getfield 185	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   166: astore 4
    //   168: aload 32
    //   170: getfield 188	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   173: astore 5
    //   175: aload 32
    //   177: getfield 191	android/content/pm/PackageInfo:versionCode	I
    //   180: invokestatic 103	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   183: astore 33
    //   185: aload 5
    //   187: astore 20
    //   189: aload 4
    //   191: astore 18
    //   193: aload 33
    //   195: astore 19
    //   197: aload_1
    //   198: ldc 193
    //   200: invokevirtual 197	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   203: checkcast 199	android/telephony/TelephonyManager
    //   206: astore 28
    //   208: aload 28
    //   210: invokevirtual 202	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   213: astore 29
    //   215: aload 28
    //   217: invokevirtual 205	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   220: astore 31
    //   222: aload 31
    //   224: astore 24
    //   226: aload 29
    //   228: astore 23
    //   230: aload 23
    //   232: invokestatic 211	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   235: ifeq +7 -> 242
    //   238: ldc 213
    //   240: astore 23
    //   242: getstatic 216	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   245: invokestatic 220	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   248: iconst_4
    //   249: if_icmplt +204 -> 453
    //   252: ldc 118
    //   254: ldc 222
    //   256: invokevirtual 228	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   259: aconst_null
    //   260: invokevirtual 234	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   263: invokevirtual 64	java/lang/Object:toString	()Ljava/lang/String;
    //   266: astore 27
    //   268: aload 27
    //   270: astore 25
    //   272: aload_0
    //   273: bipush 18
    //   275: anewarray 60	java/lang/Object
    //   278: dup
    //   279: iconst_0
    //   280: ldc 236
    //   282: aastore
    //   283: dup
    //   284: iconst_1
    //   285: aload_2
    //   286: aastore
    //   287: dup
    //   288: iconst_2
    //   289: aload_3
    //   290: aastore
    //   291: dup
    //   292: iconst_3
    //   293: aload 16
    //   295: aastore
    //   296: dup
    //   297: iconst_4
    //   298: aload 18
    //   300: aastore
    //   301: dup
    //   302: iconst_5
    //   303: aload 20
    //   305: aastore
    //   306: dup
    //   307: bipush 6
    //   309: aload 19
    //   311: aastore
    //   312: dup
    //   313: bipush 7
    //   315: aload 7
    //   317: aastore
    //   318: dup
    //   319: bipush 8
    //   321: aload 23
    //   323: aastore
    //   324: dup
    //   325: bipush 9
    //   327: aload 24
    //   329: aastore
    //   330: dup
    //   331: bipush 10
    //   333: aload 25
    //   335: aastore
    //   336: dup
    //   337: bipush 11
    //   339: aload 8
    //   341: aastore
    //   342: dup
    //   343: bipush 12
    //   345: aload 9
    //   347: aastore
    //   348: dup
    //   349: bipush 13
    //   351: aload 10
    //   353: aastore
    //   354: dup
    //   355: bipush 14
    //   357: aload 11
    //   359: aastore
    //   360: dup
    //   361: bipush 15
    //   363: aload 12
    //   365: aastore
    //   366: dup
    //   367: bipush 16
    //   369: aload 13
    //   371: aastore
    //   372: dup
    //   373: bipush 17
    //   375: aload_1
    //   376: ldc 31
    //   378: iconst_0
    //   379: invokevirtual 37	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   382: invokeinterface 43 1 0
    //   387: aastore
    //   388: putfield 240	com/antivirus/core/a/a:f	[Ljava/lang/Object;
    //   391: iconst_1
    //   392: ireturn
    //   393: aload 6
    //   395: astore 7
    //   397: goto -345 -> 52
    //   400: ldc 108
    //   402: astore 15
    //   404: goto -266 -> 138
    //   407: astore 17
    //   409: aload 17
    //   411: invokestatic 243	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   414: aload 4
    //   416: astore 18
    //   418: ldc 108
    //   420: astore 19
    //   422: aload 5
    //   424: astore 20
    //   426: goto -229 -> 197
    //   429: astore 21
    //   431: ldc 108
    //   433: astore 22
    //   435: aload 22
    //   437: astore 23
    //   439: ldc 108
    //   441: astore 24
    //   443: goto -213 -> 230
    //   446: astore 26
    //   448: aload 26
    //   450: invokestatic 243	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   453: ldc 245
    //   455: astore 25
    //   457: goto -185 -> 272
    //   460: astore 30
    //   462: aload 29
    //   464: astore 22
    //   466: goto -31 -> 435
    //   469: aload 15
    //   471: astore 16
    //   473: goto -326 -> 147
    //
    // Exception table:
    //   from	to	target	type
    //   147	185	407	android/content/pm/PackageManager$NameNotFoundException
    //   197	215	429	java/lang/Exception
    //   252	268	446	java/lang/Exception
    //   215	222	460	java/lang/Exception
  }

  public int b_()
  {
    return 15001;
  }

  public String c()
  {
    return "Crash.report";
  }

  public void onDestroy()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.a.a
 * JD-Core Version:    0.6.2
 */