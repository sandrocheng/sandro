package com.antivirus.apploader;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avg.toolkit.e;
import com.avg.toolkit.e.a;
import java.util.List;

public class d
  implements e
{
  Context a;

  public d(Context paramContext)
  {
    this.a = paramContext;
  }

  public static void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, AppLoaderAlarmReceiver.class);
    localIntent.setAction("com.droidsec.apploaderalarm");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 134217728);
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.setInexactRepeating(1, AppLoaderService.a(), 86400000L, localPendingIntent);
  }

  // ERROR //
  public static boolean a(Context paramContext, java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 69	java/io/File:canRead	()Z
    //   4: ifeq +3 -> 7
    //   7: new 71	org/apache/http/impl/client/DefaultHttpClient
    //   10: dup
    //   11: invokespecial 72	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   14: astore 15
    //   16: aload 15
    //   18: invokeinterface 78 1 0
    //   23: ldc 80
    //   25: getstatic 86	org/apache/http/HttpVersion:HTTP_1_1	Lorg/apache/http/HttpVersion;
    //   28: invokeinterface 92 3 0
    //   33: pop
    //   34: new 94	org/apache/http/client/methods/HttpPost
    //   37: dup
    //   38: ldc 96
    //   40: invokespecial 99	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   43: astore 17
    //   45: new 101	java/io/FileInputStream
    //   48: dup
    //   49: aload_1
    //   50: invokespecial 104	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   53: astore 5
    //   55: new 106	org/apache/http/entity/InputStreamEntity
    //   58: dup
    //   59: aload 5
    //   61: aload_1
    //   62: invokevirtual 109	java/io/File:length	()J
    //   65: invokespecial 112	org/apache/http/entity/InputStreamEntity:<init>	(Ljava/io/InputStream;J)V
    //   68: astore 18
    //   70: aload 18
    //   72: ldc 114
    //   74: invokevirtual 117	org/apache/http/entity/InputStreamEntity:setContentType	(Ljava/lang/String;)V
    //   77: aload 18
    //   79: iconst_1
    //   80: invokevirtual 121	org/apache/http/entity/InputStreamEntity:setChunked	(Z)V
    //   83: aload 17
    //   85: aload 18
    //   87: invokevirtual 125	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   90: aload 15
    //   92: aload 17
    //   94: invokeinterface 129 2 0
    //   99: astore 21
    //   101: aload 21
    //   103: astore 4
    //   105: aload 4
    //   107: invokeinterface 135 1 0
    //   112: invokeinterface 141 1 0
    //   117: sipush 200
    //   120: if_icmpne +127 -> 247
    //   123: new 143	java/io/BufferedReader
    //   126: dup
    //   127: new 145	java/io/InputStreamReader
    //   130: dup
    //   131: aload 4
    //   133: invokeinterface 149 1 0
    //   138: invokeinterface 155 1 0
    //   143: ldc 157
    //   145: invokespecial 160	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   148: sipush 128
    //   151: invokespecial 163	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   154: astore_3
    //   155: aload_3
    //   156: invokevirtual 167	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   159: astore 25
    //   161: aload 25
    //   163: ifnull +360 -> 523
    //   166: aload 25
    //   168: ldc 169
    //   170: invokevirtual 175	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   173: istore 30
    //   175: iload 30
    //   177: ifeq +346 -> 523
    //   180: iconst_1
    //   181: istore 11
    //   183: aload_3
    //   184: invokevirtual 178	java/io/BufferedReader:close	()V
    //   187: aload 4
    //   189: invokeinterface 149 1 0
    //   194: invokeinterface 181 1 0
    //   199: aload 5
    //   201: ifnull +8 -> 209
    //   204: aload 5
    //   206: invokevirtual 182	java/io/FileInputStream:close	()V
    //   209: aload_3
    //   210: ifnull +7 -> 217
    //   213: aload_3
    //   214: invokevirtual 178	java/io/BufferedReader:close	()V
    //   217: aload 4
    //   219: ifnull +25 -> 244
    //   222: aload 4
    //   224: invokeinterface 149 1 0
    //   229: ifnull +15 -> 244
    //   232: aload 4
    //   234: invokeinterface 149 1 0
    //   239: invokeinterface 181 1 0
    //   244: iload 11
    //   246: ireturn
    //   247: aload 4
    //   249: invokeinterface 186 1 0
    //   254: astore 31
    //   256: aload 31
    //   258: arraylength
    //   259: istore 32
    //   261: iconst_0
    //   262: istore 33
    //   264: iload 33
    //   266: iload 32
    //   268: if_icmpge +247 -> 515
    //   271: aload 31
    //   273: iload 33
    //   275: aaload
    //   276: pop
    //   277: iinc 33 1
    //   280: goto -16 -> 264
    //   283: astore 10
    //   285: aconst_null
    //   286: astore 5
    //   288: aconst_null
    //   289: astore_3
    //   290: aconst_null
    //   291: astore 4
    //   293: iconst_0
    //   294: istore 11
    //   296: aload 5
    //   298: ifnull +8 -> 306
    //   301: aload 5
    //   303: invokevirtual 182	java/io/FileInputStream:close	()V
    //   306: aload_3
    //   307: ifnull +7 -> 314
    //   310: aload_3
    //   311: invokevirtual 178	java/io/BufferedReader:close	()V
    //   314: aload 4
    //   316: ifnull -72 -> 244
    //   319: aload 4
    //   321: invokeinterface 149 1 0
    //   326: ifnull -82 -> 244
    //   329: aload 4
    //   331: invokeinterface 149 1 0
    //   336: invokeinterface 181 1 0
    //   341: goto -97 -> 244
    //   344: astore 12
    //   346: goto -102 -> 244
    //   349: astore_2
    //   350: aconst_null
    //   351: astore_3
    //   352: aconst_null
    //   353: astore 4
    //   355: aconst_null
    //   356: astore 5
    //   358: aload_2
    //   359: astore 6
    //   361: aload 5
    //   363: ifnull +8 -> 371
    //   366: aload 5
    //   368: invokevirtual 182	java/io/FileInputStream:close	()V
    //   371: aload_3
    //   372: ifnull +7 -> 379
    //   375: aload_3
    //   376: invokevirtual 178	java/io/BufferedReader:close	()V
    //   379: aload 4
    //   381: ifnull +25 -> 406
    //   384: aload 4
    //   386: invokeinterface 149 1 0
    //   391: ifnull +15 -> 406
    //   394: aload 4
    //   396: invokeinterface 149 1 0
    //   401: invokeinterface 181 1 0
    //   406: aload 6
    //   408: athrow
    //   409: astore 29
    //   411: goto -202 -> 209
    //   414: astore 28
    //   416: goto -199 -> 217
    //   419: astore 14
    //   421: goto -115 -> 306
    //   424: astore 13
    //   426: goto -112 -> 314
    //   429: astore 9
    //   431: goto -60 -> 371
    //   434: astore 8
    //   436: goto -57 -> 379
    //   439: astore 7
    //   441: goto -35 -> 406
    //   444: astore 20
    //   446: aload 20
    //   448: astore 6
    //   450: aconst_null
    //   451: astore_3
    //   452: aconst_null
    //   453: astore 4
    //   455: goto -94 -> 361
    //   458: astore 23
    //   460: aload 23
    //   462: astore 6
    //   464: aconst_null
    //   465: astore_3
    //   466: goto -105 -> 361
    //   469: astore 6
    //   471: goto -110 -> 361
    //   474: astore 19
    //   476: iconst_0
    //   477: istore 11
    //   479: aconst_null
    //   480: astore_3
    //   481: aconst_null
    //   482: astore 4
    //   484: goto -188 -> 296
    //   487: astore 22
    //   489: iconst_0
    //   490: istore 11
    //   492: aconst_null
    //   493: astore_3
    //   494: goto -198 -> 296
    //   497: astore 24
    //   499: iconst_0
    //   500: istore 11
    //   502: goto -206 -> 296
    //   505: astore 26
    //   507: goto -211 -> 296
    //   510: astore 27
    //   512: goto -268 -> 244
    //   515: iconst_0
    //   516: istore 11
    //   518: aconst_null
    //   519: astore_3
    //   520: goto -333 -> 187
    //   523: iconst_0
    //   524: istore 11
    //   526: goto -343 -> 183
    //
    // Exception table:
    //   from	to	target	type
    //   0	55	283	java/lang/Exception
    //   319	341	344	java/lang/Exception
    //   0	55	349	finally
    //   204	209	409	java/lang/Exception
    //   213	217	414	java/lang/Exception
    //   301	306	419	java/lang/Exception
    //   310	314	424	java/lang/Exception
    //   366	371	429	java/lang/Exception
    //   375	379	434	java/lang/Exception
    //   384	406	439	java/lang/Exception
    //   55	101	444	finally
    //   105	155	458	finally
    //   247	277	458	finally
    //   155	175	469	finally
    //   183	199	469	finally
    //   55	101	474	java/lang/Exception
    //   105	155	487	java/lang/Exception
    //   247	277	487	java/lang/Exception
    //   155	175	497	java/lang/Exception
    //   183	199	505	java/lang/Exception
    //   222	244	510	java/lang/Exception
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    a(this.a);
  }

  public int b()
  {
    return 18000;
  }

  public void b(Bundle paramBundle)
  {
  }

  public void b(a parama)
  {
  }

  public void onDestroy()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.apploader.d
 * JD-Core Version:    0.6.2
 */