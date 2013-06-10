package org.antivirus.ui.help;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import org.antivirus.AVService;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;

public class g extends v
{
  public static void c(Context paramContext)
  {
    try
    {
      Intent localIntent = new Intent(paramContext, AVService.class);
      localIntent.putExtra("__SAC", 7);
      localIntent.putExtra("__SAD", 1110);
      paramContext.startService(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final boolean a()
  {
    return false;
  }

  // ERROR //
  public final boolean a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 48	org/antivirus/ui/help/g:h	Lorg/antivirus/core/b/a;
    //   4: getfield 54	org/antivirus/core/b/a:o	I
    //   7: invokestatic 60	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   10: astore_2
    //   11: aload_0
    //   12: getfield 48	org/antivirus/ui/help/g:h	Lorg/antivirus/core/b/a;
    //   15: getfield 63	org/antivirus/core/b/a:p	I
    //   18: invokestatic 60	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   21: astore_3
    //   22: aload_0
    //   23: getfield 48	org/antivirus/ui/help/g:h	Lorg/antivirus/core/b/a;
    //   26: invokevirtual 65	org/antivirus/core/b/a:a	()Z
    //   29: ifeq +387 -> 416
    //   32: aload_0
    //   33: getfield 48	org/antivirus/ui/help/g:h	Lorg/antivirus/core/b/a;
    //   36: getfield 69	org/antivirus/core/b/a:m	Z
    //   39: ifne +377 -> 416
    //   42: iconst_1
    //   43: istore 4
    //   45: iload 4
    //   47: invokestatic 74	java/lang/Boolean:toString	(Z)Ljava/lang/String;
    //   50: astore 5
    //   52: ldc 76
    //   54: astore 6
    //   56: ldc 76
    //   58: astore 7
    //   60: new 78	org/antivirus/core/EngineSettings
    //   63: dup
    //   64: aload_1
    //   65: invokespecial 80	org/antivirus/core/EngineSettings:<init>	(Landroid/content/Context;)V
    //   68: invokevirtual 84	org/antivirus/core/EngineSettings:getSecDbVersion	()Ljava/lang/String;
    //   71: astore 8
    //   73: aload 8
    //   75: ifnonnull +347 -> 422
    //   78: ldc 76
    //   80: astore 9
    //   82: getstatic 90	android/os/Build:BRAND	Ljava/lang/String;
    //   85: astore 10
    //   87: getstatic 93	android/os/Build:DEVICE	Ljava/lang/String;
    //   90: astore 11
    //   92: getstatic 96	android/os/Build:ID	Ljava/lang/String;
    //   95: astore 12
    //   97: getstatic 101	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   100: astore 13
    //   102: new 103	java/util/Date
    //   105: dup
    //   106: invokespecial 104	java/util/Date:<init>	()V
    //   109: invokevirtual 108	java/util/Date:getTime	()J
    //   112: invokestatic 113	java/lang/Long:toString	(J)Ljava/lang/String;
    //   115: astore 14
    //   117: new 115	java/lang/StringBuilder
    //   120: dup
    //   121: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   124: getstatic 119	android/os/Build:FINGERPRINT	Ljava/lang/String;
    //   127: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc 125
    //   132: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: getstatic 128	android/os/Build:DISPLAY	Ljava/lang/String;
    //   138: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: astore 15
    //   146: new 132	org/antivirus/core/b/g
    //   149: dup
    //   150: aload_1
    //   151: invokespecial 133	org/antivirus/core/b/g:<init>	(Landroid/content/Context;)V
    //   154: invokevirtual 135	org/antivirus/core/b/g:c	()Ljava/lang/String;
    //   157: astore 16
    //   159: aload 16
    //   161: ifnonnull +330 -> 491
    //   164: ldc 76
    //   166: astore 17
    //   168: aload_1
    //   169: invokevirtual 139	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   172: aload_1
    //   173: invokevirtual 142	android/content/Context:getPackageName	()Ljava/lang/String;
    //   176: iconst_0
    //   177: invokevirtual 148	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   180: astore 34
    //   182: aload 34
    //   184: getfield 153	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   187: astore 6
    //   189: aload 34
    //   191: getfield 156	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   194: astore 7
    //   196: aload 34
    //   198: getfield 159	android/content/pm/PackageInfo:versionCode	I
    //   201: invokestatic 60	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   204: astore 35
    //   206: aload 7
    //   208: astore 21
    //   210: aload 6
    //   212: astore 19
    //   214: aload 35
    //   216: astore 20
    //   218: aload_1
    //   219: ldc 161
    //   221: invokevirtual 165	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   224: checkcast 167	android/telephony/TelephonyManager
    //   227: astore 30
    //   229: aload 30
    //   231: invokevirtual 170	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   234: astore 31
    //   236: aload 30
    //   238: invokevirtual 173	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   241: astore 33
    //   243: aload 33
    //   245: astore 25
    //   247: aload 31
    //   249: astore 24
    //   251: aload 24
    //   253: invokestatic 179	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   256: ifeq +7 -> 263
    //   259: ldc 181
    //   261: astore 24
    //   263: aload_1
    //   264: invokestatic 187	org/antivirus/AVSettings:getFindRUser	(Landroid/content/Context;)Ljava/lang/String;
    //   267: astore 26
    //   269: getstatic 190	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   272: invokestatic 194	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   275: iconst_4
    //   276: if_icmplt +199 -> 475
    //   279: ldc 86
    //   281: ldc 196
    //   283: invokevirtual 202	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   286: aconst_null
    //   287: invokevirtual 208	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   290: invokevirtual 211	java/lang/Object:toString	()Ljava/lang/String;
    //   293: astore 29
    //   295: aload 29
    //   297: astore 27
    //   299: aload_0
    //   300: bipush 19
    //   302: anewarray 210	java/lang/Object
    //   305: dup
    //   306: iconst_0
    //   307: ldc 213
    //   309: aastore
    //   310: dup
    //   311: iconst_1
    //   312: aload_2
    //   313: aastore
    //   314: dup
    //   315: iconst_2
    //   316: aload_3
    //   317: aastore
    //   318: dup
    //   319: iconst_3
    //   320: aload 17
    //   322: aastore
    //   323: dup
    //   324: iconst_4
    //   325: aload 5
    //   327: aastore
    //   328: dup
    //   329: iconst_5
    //   330: aload 19
    //   332: aastore
    //   333: dup
    //   334: bipush 6
    //   336: aload 21
    //   338: aastore
    //   339: dup
    //   340: bipush 7
    //   342: aload 20
    //   344: aastore
    //   345: dup
    //   346: bipush 8
    //   348: aload 9
    //   350: aastore
    //   351: dup
    //   352: bipush 9
    //   354: aload 24
    //   356: aastore
    //   357: dup
    //   358: bipush 10
    //   360: aload 25
    //   362: aastore
    //   363: dup
    //   364: bipush 11
    //   366: aload 26
    //   368: aastore
    //   369: dup
    //   370: bipush 12
    //   372: aload 27
    //   374: aastore
    //   375: dup
    //   376: bipush 13
    //   378: aload 10
    //   380: aastore
    //   381: dup
    //   382: bipush 14
    //   384: aload 11
    //   386: aastore
    //   387: dup
    //   388: bipush 15
    //   390: aload 12
    //   392: aastore
    //   393: dup
    //   394: bipush 16
    //   396: aload 13
    //   398: aastore
    //   399: dup
    //   400: bipush 17
    //   402: aload 14
    //   404: aastore
    //   405: dup
    //   406: bipush 18
    //   408: aload 15
    //   410: aastore
    //   411: putfield 217	org/antivirus/ui/help/g:f	[Ljava/lang/Object;
    //   414: iconst_1
    //   415: ireturn
    //   416: iconst_0
    //   417: istore 4
    //   419: goto -374 -> 45
    //   422: aload 8
    //   424: astore 9
    //   426: goto -344 -> 82
    //   429: astore 18
    //   431: aload 18
    //   433: invokestatic 39	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   436: aload 6
    //   438: astore 19
    //   440: ldc 76
    //   442: astore 20
    //   444: aload 7
    //   446: astore 21
    //   448: goto -230 -> 218
    //   451: astore 22
    //   453: ldc 76
    //   455: astore 23
    //   457: aload 23
    //   459: astore 24
    //   461: ldc 76
    //   463: astore 25
    //   465: goto -214 -> 251
    //   468: astore 28
    //   470: aload 28
    //   472: invokestatic 39	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   475: ldc 219
    //   477: astore 27
    //   479: goto -180 -> 299
    //   482: astore 32
    //   484: aload 31
    //   486: astore 23
    //   488: goto -31 -> 457
    //   491: aload 16
    //   493: astore 17
    //   495: goto -327 -> 168
    //
    // Exception table:
    //   from	to	target	type
    //   168	206	429	android/content/pm/PackageManager$NameNotFoundException
    //   218	236	451	java/lang/Exception
    //   279	295	468	java/lang/Exception
    //   236	243	482	java/lang/Exception
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    Intent localIntent = new Intent("inAppIntentFilterScreen");
    String str1 = paramObject.toString();
    String str2;
    if ((!TextUtils.isEmpty(str1)) && (!str1.equalsIgnoreCase("error")))
      if (this.i.getAWSserver())
      {
        str2 = "https://aws.droidsecurity.com/mobile/contact.jsp?requestID=" + str1;
        localIntent.putExtra("url", str2);
        localIntent.putExtra("result", true);
      }
    for (boolean bool = true; ; bool = false)
    {
      paramContext.sendBroadcast(localIntent);
      return bool;
      str2 = "https://droidsecurity.appspot.com/mobile/contact.jsp?requestID=" + str1;
      break;
      localIntent.putExtra("result", false);
    }
  }

  public final q b()
  {
    return q.c;
  }

  public final boolean b(Context paramContext)
  {
    Intent localIntent = new Intent("inAppIntentFilterScreen");
    localIntent.putExtra("result", false);
    paramContext.sendBroadcast(localIntent);
    return false;
  }

  public final int c()
  {
    return 1110;
  }

  public final String d()
  {
    return "Support.create2";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.help.g
 * JD-Core Version:    0.6.2
 */