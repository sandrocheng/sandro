package com.antivirus.e;

import android.content.Context;
import android.os.Message;
import com.antivirus.c;
import com.avg.toolkit.b.e;
import com.avg.toolkit.e.a;

public class i extends com.avg.toolkit.b.g
{
  public e a()
  {
    return e.c;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    if (System.currentTimeMillis() > 604800000L + c.j());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  // ERROR //
  public boolean a(Context paramContext, Object paramObject)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 36
    //   4: ifne +9 -> 13
    //   7: iconst_0
    //   8: istore 5
    //   10: iload 5
    //   12: ireturn
    //   13: aload_2
    //   14: checkcast 36	java/util/Map
    //   17: astore_3
    //   18: aload_3
    //   19: ldc 38
    //   21: invokeinterface 42 2 0
    //   26: checkcast 44	java/lang/String
    //   29: invokestatic 50	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   32: istore 6
    //   34: aload_1
    //   35: invokevirtual 56	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   38: aload_1
    //   39: invokevirtual 60	android/content/Context:getPackageName	()Ljava/lang/String;
    //   42: iconst_0
    //   43: invokevirtual 66	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   46: astore 24
    //   48: aload 24
    //   50: astore 8
    //   52: iload 6
    //   54: aload 8
    //   56: getfield 72	android/content/pm/PackageInfo:versionCode	I
    //   59: if_icmple +378 -> 437
    //   62: aload_3
    //   63: ldc 74
    //   65: invokeinterface 42 2 0
    //   70: checkcast 44	java/lang/String
    //   73: astore 9
    //   75: aload 9
    //   77: ldc 76
    //   79: invokevirtual 80	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: ifne +45 -> 127
    //   85: aload 9
    //   87: ldc 82
    //   89: invokevirtual 80	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   92: ifne +35 -> 127
    //   95: iconst_0
    //   96: istore 5
    //   98: goto -88 -> 10
    //   101: astore 4
    //   103: aload 4
    //   105: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   108: iconst_0
    //   109: istore 5
    //   111: goto -101 -> 10
    //   114: astore 7
    //   116: aload 7
    //   118: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   121: aconst_null
    //   122: astore 8
    //   124: goto -72 -> 52
    //   127: aload_3
    //   128: ldc 89
    //   130: invokeinterface 42 2 0
    //   135: checkcast 44	java/lang/String
    //   138: astore 10
    //   140: aload 10
    //   142: ifnull +47 -> 189
    //   145: aload 9
    //   147: ldc 82
    //   149: invokevirtual 80	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   152: ifeq +13 -> 165
    //   155: aload 10
    //   157: ldc 91
    //   159: invokevirtual 95	java/lang/String:matches	(Ljava/lang/String;)Z
    //   162: ifne +33 -> 195
    //   165: aload 10
    //   167: invokestatic 100	android/webkit/URLUtil:isValidUrl	(Ljava/lang/String;)Z
    //   170: ifeq +19 -> 189
    //   173: aload 10
    //   175: invokestatic 103	android/webkit/URLUtil:isHttpUrl	(Ljava/lang/String;)Z
    //   178: ifne +17 -> 195
    //   181: aload 10
    //   183: invokestatic 106	android/webkit/URLUtil:isHttpsUrl	(Ljava/lang/String;)Z
    //   186: ifne +9 -> 195
    //   189: iconst_0
    //   190: istore 5
    //   192: goto -182 -> 10
    //   195: aload_1
    //   196: ldc 108
    //   198: invokevirtual 112	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   201: checkcast 114	android/app/NotificationManager
    //   204: astore 12
    //   206: new 116	android/app/Notification
    //   209: dup
    //   210: ldc 117
    //   212: aload_1
    //   213: ldc 118
    //   215: invokestatic 123	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   218: invokestatic 24	java/lang/System:currentTimeMillis	()J
    //   221: invokespecial 126	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   224: astore 13
    //   226: aload 13
    //   228: bipush 16
    //   230: aload 13
    //   232: getfield 129	android/app/Notification:flags	I
    //   235: ior
    //   236: putfield 129	android/app/Notification:flags	I
    //   239: aload 9
    //   241: ldc 76
    //   243: invokevirtual 80	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   246: ifeq +96 -> 342
    //   249: new 131	android/content/Intent
    //   252: dup
    //   253: aload_1
    //   254: ldc 133
    //   256: invokespecial 136	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   259: astore 14
    //   261: aload 14
    //   263: ldc 138
    //   265: aload 10
    //   267: invokevirtual 142	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   270: pop
    //   271: aload 14
    //   273: ldc 144
    //   275: iload 6
    //   277: invokevirtual 147	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   280: pop
    //   281: aload 14
    //   283: ldc 149
    //   285: iconst_1
    //   286: invokevirtual 147	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   289: pop
    //   290: aload 14
    //   292: ldc 150
    //   294: invokevirtual 154	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   297: pop
    //   298: aload_1
    //   299: iconst_0
    //   300: aload 14
    //   302: ldc 155
    //   304: invokestatic 161	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   307: astore 19
    //   309: aload 13
    //   311: aload_1
    //   312: aload_1
    //   313: ldc 162
    //   315: invokestatic 123	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   318: aload_1
    //   319: ldc 163
    //   321: invokestatic 123	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   324: aload 19
    //   326: invokevirtual 167	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   329: aload 12
    //   331: sipush 2001
    //   334: aload 13
    //   336: invokevirtual 171	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   339: goto +104 -> 443
    //   342: new 131	android/content/Intent
    //   345: dup
    //   346: ldc 173
    //   348: invokespecial 176	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   351: astore 20
    //   353: aload 20
    //   355: aload 10
    //   357: invokestatic 182	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   360: invokevirtual 186	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   363: pop
    //   364: aload 20
    //   366: ldc 150
    //   368: invokevirtual 154	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   371: pop
    //   372: aload_1
    //   373: iconst_0
    //   374: aload 20
    //   376: ldc 155
    //   378: invokestatic 161	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   381: astore 23
    //   383: aload 13
    //   385: aload_1
    //   386: aload_1
    //   387: ldc 162
    //   389: invokestatic 123	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   392: aload_1
    //   393: ldc 187
    //   395: invokestatic 123	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   398: aload 23
    //   400: invokevirtual 167	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   403: invokestatic 24	java/lang/System:currentTimeMillis	()J
    //   406: invokestatic 190	com/antivirus/c:a	(J)V
    //   409: aload_1
    //   410: sipush 25000
    //   413: bipush 8
    //   415: invokestatic 196	com/antivirus/widget/update/UpdateWidgetPlugin:k	()Landroid/os/Bundle;
    //   418: invokestatic 201	com/antivirus/AVService:a	(Landroid/content/Context;IILandroid/os/Bundle;)V
    //   421: goto -92 -> 329
    //   424: astore 11
    //   426: aload 11
    //   428: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   431: iconst_0
    //   432: istore 5
    //   434: goto -424 -> 10
    //   437: invokestatic 24	java/lang/System:currentTimeMillis	()J
    //   440: invokestatic 190	com/antivirus/c:a	(J)V
    //   443: iconst_1
    //   444: istore 5
    //   446: goto -436 -> 10
    //
    // Exception table:
    //   from	to	target	type
    //   18	34	101	java/lang/Exception
    //   34	48	114	java/lang/Exception
    //   195	421	424	java/lang/Exception
  }

  public boolean b(Context paramContext)
  {
    String str = new com.avg.toolkit.e.g(paramContext).c();
    if (str.length() > 4)
      str = str.substring(0, -4 + str.length());
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = String.valueOf(this.h.o);
    arrayOfObject[1] = String.valueOf(this.h.p);
    arrayOfObject[2] = str;
    this.f = arrayOfObject;
    return true;
  }

  public int b_()
  {
    return 6001;
  }

  public String c()
  {
    return "AVVersionsArchive.getLatestVersion2";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.e.i
 * JD-Core Version:    0.6.2
 */