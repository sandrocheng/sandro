package com.avg.ui.general.d;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import com.avg.toolkit.b.g;
import com.avg.toolkit.f;
import java.util.List;

public class h extends g
  implements com.avg.toolkit.e
{
  public static void e(Context paramContext)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("isUI", true);
      f.a(paramContext, 4000, 14001, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public com.avg.toolkit.b.e a()
  {
    return com.avg.toolkit.b.e.c;
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
    paramList.add(e());
  }

  public void a(boolean paramBoolean)
  {
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    boolean bool = true;
    Intent localIntent = new Intent("inAppIntentFilterScreen");
    String str1 = paramObject.toString();
    if ((!TextUtils.isEmpty(str1)) && (!str1.equalsIgnoreCase("error")))
    {
      String str2 = "/mobile/contact.jsp?requestID=" + str1;
      com.avg.toolkit.b.h localh = new com.avg.toolkit.b.h(paramContext);
      localIntent.putExtra("url", localh.b() + str2);
      localIntent.putExtra("result", bool);
    }
    while (true)
    {
      paramContext.sendBroadcast(localIntent);
      return bool;
      localIntent.putExtra("result", false);
      bool = false;
    }
  }

  public int b()
  {
    return 14000;
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
    //   1: getfield 125	com/avg/ui/general/d/h:h	Lcom/avg/toolkit/e/a;
    //   4: getfield 131	com/avg/toolkit/e/a:o	I
    //   7: invokestatic 136	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   10: astore_2
    //   11: aload_0
    //   12: getfield 125	com/avg/ui/general/d/h:h	Lcom/avg/toolkit/e/a;
    //   15: getfield 139	com/avg/toolkit/e/a:p	I
    //   18: invokestatic 136	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   21: astore_3
    //   22: aload_0
    //   23: getfield 125	com/avg/ui/general/d/h:h	Lcom/avg/toolkit/e/a;
    //   26: invokevirtual 142	com/avg/toolkit/e/a:a	()Z
    //   29: ifeq +383 -> 412
    //   32: aload_0
    //   33: getfield 125	com/avg/ui/general/d/h:h	Lcom/avg/toolkit/e/a;
    //   36: getfield 146	com/avg/toolkit/e/a:m	Z
    //   39: ifne +373 -> 412
    //   42: iconst_1
    //   43: istore 4
    //   45: iload 4
    //   47: invokestatic 151	java/lang/Boolean:toString	(Z)Ljava/lang/String;
    //   50: astore 5
    //   52: ldc 153
    //   54: astore 6
    //   56: ldc 153
    //   58: astore 7
    //   60: aload_0
    //   61: aload_1
    //   62: invokevirtual 157	com/avg/ui/general/d/h:d	(Landroid/content/Context;)Ljava/lang/String;
    //   65: astore 8
    //   67: getstatic 163	android/os/Build:BRAND	Ljava/lang/String;
    //   70: astore 9
    //   72: getstatic 166	android/os/Build:DEVICE	Ljava/lang/String;
    //   75: astore 10
    //   77: getstatic 169	android/os/Build:ID	Ljava/lang/String;
    //   80: astore 11
    //   82: getstatic 174	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   85: astore 12
    //   87: new 176	java/util/Date
    //   90: dup
    //   91: invokespecial 177	java/util/Date:<init>	()V
    //   94: invokevirtual 181	java/util/Date:getTime	()J
    //   97: invokestatic 186	java/lang/Long:toString	(J)Ljava/lang/String;
    //   100: astore 13
    //   102: new 86	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 87	java/lang/StringBuilder:<init>	()V
    //   109: getstatic 189	android/os/Build:FINGERPRINT	Ljava/lang/String;
    //   112: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: ldc 191
    //   117: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: getstatic 194	android/os/Build:DISPLAY	Ljava/lang/String;
    //   123: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: astore 14
    //   131: new 196	com/avg/toolkit/e/g
    //   134: dup
    //   135: aload_1
    //   136: invokespecial 197	com/avg/toolkit/e/g:<init>	(Landroid/content/Context;)V
    //   139: astore 15
    //   141: aload 15
    //   143: ifnull +275 -> 418
    //   146: aload 15
    //   148: invokevirtual 199	com/avg/toolkit/e/g:c	()Ljava/lang/String;
    //   151: astore 16
    //   153: aload 16
    //   155: ifnonnull +333 -> 488
    //   158: ldc 153
    //   160: astore 17
    //   162: aload_1
    //   163: invokevirtual 203	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   166: aload_1
    //   167: invokevirtual 206	android/content/Context:getPackageName	()Ljava/lang/String;
    //   170: iconst_0
    //   171: invokevirtual 212	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   174: astore 34
    //   176: aload 34
    //   178: getfield 217	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   181: astore 6
    //   183: aload 34
    //   185: getfield 220	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   188: astore 7
    //   190: aload 34
    //   192: getfield 223	android/content/pm/PackageInfo:versionCode	I
    //   195: invokestatic 136	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   198: astore 35
    //   200: aload 7
    //   202: astore 21
    //   204: aload 6
    //   206: astore 19
    //   208: aload 35
    //   210: astore 20
    //   212: aload_1
    //   213: ldc 225
    //   215: invokevirtual 229	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   218: checkcast 231	android/telephony/TelephonyManager
    //   221: astore 30
    //   223: aload 30
    //   225: invokevirtual 234	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   228: astore 31
    //   230: aload 30
    //   232: invokevirtual 237	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   235: astore 33
    //   237: aload 33
    //   239: astore 25
    //   241: aload 31
    //   243: astore 24
    //   245: aload 24
    //   247: invokestatic 76	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   250: ifeq +7 -> 257
    //   253: ldc 239
    //   255: astore 24
    //   257: aload_0
    //   258: aload_1
    //   259: invokevirtual 241	com/avg/ui/general/d/h:c	(Landroid/content/Context;)Ljava/lang/String;
    //   262: astore 26
    //   264: getstatic 244	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   267: invokestatic 248	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   270: iconst_4
    //   271: if_icmplt +200 -> 471
    //   274: ldc 159
    //   276: ldc 250
    //   278: invokevirtual 256	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   281: aconst_null
    //   282: invokevirtual 262	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   285: invokevirtual 70	java/lang/Object:toString	()Ljava/lang/String;
    //   288: astore 29
    //   290: aload 29
    //   292: astore 27
    //   294: aload_0
    //   295: bipush 19
    //   297: anewarray 66	java/lang/Object
    //   300: dup
    //   301: iconst_0
    //   302: ldc_w 264
    //   305: aastore
    //   306: dup
    //   307: iconst_1
    //   308: aload_2
    //   309: aastore
    //   310: dup
    //   311: iconst_2
    //   312: aload_3
    //   313: aastore
    //   314: dup
    //   315: iconst_3
    //   316: aload 17
    //   318: aastore
    //   319: dup
    //   320: iconst_4
    //   321: aload 5
    //   323: aastore
    //   324: dup
    //   325: iconst_5
    //   326: aload 19
    //   328: aastore
    //   329: dup
    //   330: bipush 6
    //   332: aload 21
    //   334: aastore
    //   335: dup
    //   336: bipush 7
    //   338: aload 20
    //   340: aastore
    //   341: dup
    //   342: bipush 8
    //   344: aload 8
    //   346: aastore
    //   347: dup
    //   348: bipush 9
    //   350: aload 24
    //   352: aastore
    //   353: dup
    //   354: bipush 10
    //   356: aload 25
    //   358: aastore
    //   359: dup
    //   360: bipush 11
    //   362: aload 26
    //   364: aastore
    //   365: dup
    //   366: bipush 12
    //   368: aload 27
    //   370: aastore
    //   371: dup
    //   372: bipush 13
    //   374: aload 9
    //   376: aastore
    //   377: dup
    //   378: bipush 14
    //   380: aload 10
    //   382: aastore
    //   383: dup
    //   384: bipush 15
    //   386: aload 11
    //   388: aastore
    //   389: dup
    //   390: bipush 16
    //   392: aload 12
    //   394: aastore
    //   395: dup
    //   396: bipush 17
    //   398: aload 13
    //   400: aastore
    //   401: dup
    //   402: bipush 18
    //   404: aload 14
    //   406: aastore
    //   407: putfield 268	com/avg/ui/general/d/h:f	[Ljava/lang/Object;
    //   410: iconst_1
    //   411: ireturn
    //   412: iconst_0
    //   413: istore 4
    //   415: goto -370 -> 45
    //   418: ldc 153
    //   420: astore 16
    //   422: goto -269 -> 153
    //   425: astore 18
    //   427: aload 18
    //   429: invokestatic 34	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   432: aload 6
    //   434: astore 19
    //   436: ldc 153
    //   438: astore 20
    //   440: aload 7
    //   442: astore 21
    //   444: goto -232 -> 212
    //   447: astore 22
    //   449: ldc 153
    //   451: astore 23
    //   453: aload 23
    //   455: astore 24
    //   457: ldc 153
    //   459: astore 25
    //   461: goto -216 -> 245
    //   464: astore 28
    //   466: aload 28
    //   468: invokestatic 34	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   471: ldc_w 270
    //   474: astore 27
    //   476: goto -182 -> 294
    //   479: astore 32
    //   481: aload 31
    //   483: astore 23
    //   485: goto -32 -> 453
    //   488: aload 16
    //   490: astore 17
    //   492: goto -330 -> 162
    //
    // Exception table:
    //   from	to	target	type
    //   162	200	425	android/content/pm/PackageManager$NameNotFoundException
    //   212	230	447	java/lang/Exception
    //   274	290	464	java/lang/Exception
    //   230	237	479	java/lang/Exception
  }

  public boolean b(Context paramContext, Object paramObject)
  {
    Intent localIntent = new Intent("inAppIntentFilterScreen");
    localIntent.putExtra("result", false);
    paramContext.sendBroadcast(localIntent);
    return false;
  }

  public int b_()
  {
    return 14001;
  }

  public String c()
  {
    return "Support.create2";
  }

  public String c(Context paramContext)
  {
    return "";
  }

  protected String d(Context paramContext)
  {
    return "";
  }

  public Class e()
  {
    return h.class;
  }

  public void onDestroy()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.d.h
 * JD-Core Version:    0.6.2
 */