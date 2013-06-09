package org.antivirus.core.d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;
import org.antivirus.core.observers.SiteContentObserver;

public final class e
{
  final String a = "http://lvb.avg.com/api.aspx";
  final String b = "Thl&2!uHi?mI";
  final String c = "b1559c0f42c744528a5a41609dbeda52";
  final String d = "335378936";
  final String e = "0";
  final String f = "103";
  final String g = "81";
  final String h = "b1559c0f42c744528a5a41609dbeda52Thl&2!uHi?mI813353789360%s335378936103";
  final b i;
  public a j = new a();
  private final int k = 100;
  private f l;
  private String m = null;
  private String n = null;
  private SiteContentObserver o;
  private Callable p;

  public e(Callable paramCallable)
  {
    this.p = paramCallable;
    this.i = new b("http://lvb.avg.com/api.aspx");
    this.i.a("ver", "2");
    this.i.a("pv", "10");
    this.i.a("il", "en");
    this.i.a("adv", "0");
    this.i.a("icv", "0");
    this.i.a("iv", "1.0");
    this.i.a("p", "0");
    this.i.a("idp", "0");
    this.i.a("lt", "0");
    this.i.a("pt", "0");
    this.i.a("st", "CloudClientTest");
    this.i.a("phdv", "0");
    this.i.a("lsurldv", "0");
    this.i.a("dv", "0");
    this.i.a("uid", "b1559c0f42c744528a5a41609dbeda52");
    this.i.a("l", "cs-CZ");
    this.i.a("tz", "+0100");
    this.i.a("os", "Google(R)+Android(R)+AVG+Mobilation+LinkScanner,+0.0.0001+Service+Pack+0+Build+00001");
    this.i.a("sp", "2+0");
    this.i.a("p1", "103");
    this.i.a("p2", "81");
    this.i.a("sid", "0");
    this.i.a("rt", "0");
    this.i.a("vs", "1");
    this.i.a("m", "0");
    this.i.a("mid", "b1559c0f42c744528a5a41609dbeda52");
    this.i.a("did", "0");
    this.i.a("rc", "0");
    this.i.a("ts", "335378936");
    this.i.a("cx", "60");
  }

  private static boolean a()
  {
    try
    {
      MessageDigest.getInstance("MD5");
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
        bool = false;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        boolean bool = false;
    }
  }

  private void b(Context paramContext, String paramString, Class paramClass)
  {
    if ((paramClass != null) && (this.m != null) && (!paramString.equals(this.n)))
    {
      this.n = paramString;
      Intent localIntent = new Intent(paramContext, paramClass);
      localIntent.setFlags(469762048);
      localIntent.putExtra("md5sum", paramString);
      paramContext.startActivity(localIntent);
    }
  }

  // ERROR //
  public final String a(Context paramContext, String paramString, Class paramClass)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: invokestatic 213	org/antivirus/core/d/e:a	()Z
    //   6: ifne +7 -> 13
    //   9: aconst_null
    //   10: astore_2
    //   11: aload_2
    //   12: areturn
    //   13: aload_0
    //   14: getfield 68	org/antivirus/core/d/e:m	Ljava/lang/String;
    //   17: ifnull +23 -> 40
    //   20: aload_2
    //   21: ifnull +19 -> 40
    //   24: aload_2
    //   25: aload_0
    //   26: getfield 68	org/antivirus/core/d/e:m	Ljava/lang/String;
    //   29: invokevirtual 186	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   32: ifeq +8 -> 40
    //   35: aconst_null
    //   36: astore_2
    //   37: goto -26 -> 11
    //   40: aload_0
    //   41: aload_2
    //   42: putfield 68	org/antivirus/core/d/e:m	Ljava/lang/String;
    //   45: aload_2
    //   46: invokestatic 219	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   49: ifeq +8 -> 57
    //   52: aconst_null
    //   53: astore_2
    //   54: goto -43 -> 11
    //   57: aload_2
    //   58: invokestatic 225	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   61: invokevirtual 229	android/net/Uri:getHost	()Ljava/lang/String;
    //   64: astore 5
    //   66: aload 5
    //   68: invokestatic 219	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   71: ifeq +8 -> 79
    //   74: aconst_null
    //   75: astore_2
    //   76: goto -65 -> 11
    //   79: aload 5
    //   81: ldc 231
    //   83: invokevirtual 235	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   86: istore 6
    //   88: iload 6
    //   90: iconst_m1
    //   91: if_icmpeq +1312 -> 1403
    //   94: aload 5
    //   96: ldc 231
    //   98: iload 6
    //   100: iconst_1
    //   101: isub
    //   102: invokevirtual 238	java/lang/String:lastIndexOf	(Ljava/lang/String;I)I
    //   105: istore 53
    //   107: iload 53
    //   109: iconst_m1
    //   110: if_icmpeq +1293 -> 1403
    //   113: aload 5
    //   115: iload 53
    //   117: iconst_1
    //   118: iadd
    //   119: invokevirtual 242	java/lang/String:substring	(I)Ljava/lang/String;
    //   122: astore 7
    //   124: aload 7
    //   126: invokestatic 219	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   129: ifne +344 -> 473
    //   132: aload_0
    //   133: getfield 244	org/antivirus/core/d/e:l	Lorg/antivirus/core/d/f;
    //   136: ifnonnull +14 -> 150
    //   139: aload_0
    //   140: new 246	org/antivirus/core/d/f
    //   143: dup
    //   144: invokespecial 247	org/antivirus/core/d/f:<init>	()V
    //   147: putfield 244	org/antivirus/core/d/e:l	Lorg/antivirus/core/d/f;
    //   150: aload_0
    //   151: getfield 244	org/antivirus/core/d/e:l	Lorg/antivirus/core/d/f;
    //   154: ifnull +319 -> 473
    //   157: aload_0
    //   158: getfield 244	org/antivirus/core/d/e:l	Lorg/antivirus/core/d/f;
    //   161: astore 33
    //   163: aload_0
    //   164: getfield 77	org/antivirus/core/d/e:p	Ljava/util/concurrent/Callable;
    //   167: astore 34
    //   169: aload 33
    //   171: getfield 250	org/antivirus/core/d/f:a	Landroid/content/SharedPreferences;
    //   174: ifnonnull +15 -> 189
    //   177: aload 33
    //   179: aload_1
    //   180: ldc 252
    //   182: iconst_0
    //   183: invokevirtual 256	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   186: putfield 250	org/antivirus/core/d/f:a	Landroid/content/SharedPreferences;
    //   189: aload 33
    //   191: getfield 250	org/antivirus/core/d/f:a	Landroid/content/SharedPreferences;
    //   194: ifnull +1203 -> 1397
    //   197: aload 33
    //   199: getfield 250	org/antivirus/core/d/f:a	Landroid/content/SharedPreferences;
    //   202: invokeinterface 262 1 0
    //   207: invokeinterface 268 1 0
    //   212: bipush 10
    //   214: if_icmpge +130 -> 344
    //   217: new 270	java/io/File
    //   220: dup
    //   221: aload_1
    //   222: invokevirtual 274	android/content/Context:getFilesDir	()Ljava/io/File;
    //   225: invokevirtual 277	java/io/File:getParent	()Ljava/lang/String;
    //   228: ldc_w 279
    //   231: invokevirtual 283	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   234: ldc_w 285
    //   237: invokespecial 287	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   240: astore 36
    //   242: aload 36
    //   244: invokevirtual 290	java/io/File:exists	()Z
    //   247: ifne +85 -> 332
    //   250: aload 34
    //   252: invokeinterface 296 1 0
    //   257: checkcast 298	java/io/InputStream
    //   260: astore 46
    //   262: new 300	java/io/FileOutputStream
    //   265: dup
    //   266: aload 36
    //   268: invokespecial 303	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   271: astore 38
    //   273: sipush 512
    //   276: newarray byte
    //   278: astore 49
    //   280: aload 46
    //   282: aload 49
    //   284: invokevirtual 307	java/io/InputStream:read	([B)I
    //   287: istore 50
    //   289: iload 50
    //   291: iconst_m1
    //   292: if_icmpeq +25 -> 317
    //   295: aload 38
    //   297: aload 49
    //   299: iconst_0
    //   300: iload 50
    //   302: invokevirtual 313	java/io/OutputStream:write	([BII)V
    //   305: aload 46
    //   307: aload 49
    //   309: invokevirtual 307	java/io/InputStream:read	([B)I
    //   312: istore 50
    //   314: goto -25 -> 289
    //   317: aload 46
    //   319: invokevirtual 316	java/io/InputStream:close	()V
    //   322: aload 38
    //   324: invokevirtual 319	java/io/OutputStream:flush	()V
    //   327: aload 38
    //   329: invokevirtual 320	java/io/OutputStream:close	()V
    //   332: aload 33
    //   334: aload_1
    //   335: ldc 252
    //   337: iconst_0
    //   338: invokevirtual 256	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   341: putfield 250	org/antivirus/core/d/f:a	Landroid/content/SharedPreferences;
    //   344: aload 33
    //   346: getfield 250	org/antivirus/core/d/f:a	Landroid/content/SharedPreferences;
    //   349: aload 7
    //   351: iconst_0
    //   352: invokeinterface 324 3 0
    //   357: istore 35
    //   359: iload 35
    //   361: ifeq +112 -> 473
    //   364: aconst_null
    //   365: astore_2
    //   366: goto -355 -> 11
    //   369: astore 41
    //   371: aconst_null
    //   372: astore 42
    //   374: aconst_null
    //   375: astore 43
    //   377: aload 41
    //   379: invokestatic 330	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   382: aload 43
    //   384: ifnull +8 -> 392
    //   387: aload 43
    //   389: invokevirtual 316	java/io/InputStream:close	()V
    //   392: aload 42
    //   394: ifnull -62 -> 332
    //   397: aload 42
    //   399: invokevirtual 320	java/io/OutputStream:close	()V
    //   402: goto -70 -> 332
    //   405: astore 44
    //   407: aload 44
    //   409: invokestatic 330	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   412: goto -80 -> 332
    //   415: astore 45
    //   417: aload 45
    //   419: invokestatic 330	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   422: goto -30 -> 392
    //   425: astore 37
    //   427: aconst_null
    //   428: astore 38
    //   430: aload 4
    //   432: ifnull +8 -> 440
    //   435: aload 4
    //   437: invokevirtual 316	java/io/InputStream:close	()V
    //   440: aload 38
    //   442: ifnull +8 -> 450
    //   445: aload 38
    //   447: invokevirtual 320	java/io/OutputStream:close	()V
    //   450: aload 37
    //   452: athrow
    //   453: astore 40
    //   455: aload 40
    //   457: invokestatic 330	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   460: goto -20 -> 440
    //   463: astore 39
    //   465: aload 39
    //   467: invokestatic 330	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   470: goto -20 -> 450
    //   473: aload_2
    //   474: ldc_w 332
    //   477: invokevirtual 336	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   480: ifeq +15 -> 495
    //   483: aload_2
    //   484: iconst_0
    //   485: iconst_m1
    //   486: aload_2
    //   487: invokevirtual 339	java/lang/String:length	()I
    //   490: iadd
    //   491: invokevirtual 342	java/lang/String:substring	(II)Ljava/lang/String;
    //   494: astore_2
    //   495: ldc 62
    //   497: iconst_1
    //   498: anewarray 4	java/lang/Object
    //   501: dup
    //   502: iconst_0
    //   503: aload_2
    //   504: aastore
    //   505: invokestatic 346	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   508: invokestatic 350	org/a/a/a/b/a:b	(Ljava/lang/String;)Ljava/lang/String;
    //   511: astore 8
    //   513: aload_0
    //   514: getfield 75	org/antivirus/core/d/e:j	Lorg/antivirus/core/d/a;
    //   517: aload 8
    //   519: invokevirtual 353	org/antivirus/core/d/a:containsKey	(Ljava/lang/Object;)Z
    //   522: ifeq +34 -> 556
    //   525: aload_0
    //   526: getfield 75	org/antivirus/core/d/e:j	Lorg/antivirus/core/d/a;
    //   529: aload 8
    //   531: invokevirtual 357	org/antivirus/core/d/a:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   534: checkcast 359	java/lang/Boolean
    //   537: invokevirtual 362	java/lang/Boolean:booleanValue	()Z
    //   540: ifne +11 -> 551
    //   543: aload_0
    //   544: aload_1
    //   545: aload 8
    //   547: aload_3
    //   548: invokespecial 364	org/antivirus/core/d/e:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    //   551: aconst_null
    //   552: astore_2
    //   553: goto -542 -> 11
    //   556: aload_0
    //   557: getfield 84	org/antivirus/core/d/e:i	Lorg/antivirus/core/d/b;
    //   560: getfield 367	org/antivirus/core/d/b:b	Ljava/util/ArrayList;
    //   563: invokevirtual 372	java/util/ArrayList:clear	()V
    //   566: aload_0
    //   567: getfield 84	org/antivirus/core/d/e:i	Lorg/antivirus/core/d/b;
    //   570: ldc_w 374
    //   573: aload_2
    //   574: invokevirtual 376	org/antivirus/core/d/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   577: aload_0
    //   578: getfield 84	org/antivirus/core/d/e:i	Lorg/antivirus/core/d/b;
    //   581: ldc_w 378
    //   584: aload 8
    //   586: invokevirtual 376	org/antivirus/core/d/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   589: aload_0
    //   590: getfield 84	org/antivirus/core/d/e:i	Lorg/antivirus/core/d/b;
    //   593: astore 10
    //   595: getstatic 383	org/antivirus/core/d/d:b	Lorg/antivirus/core/d/d;
    //   598: astore 11
    //   600: getstatic 388	org/antivirus/core/d/c:a	[I
    //   603: aload 11
    //   605: invokevirtual 391	org/antivirus/core/d/d:ordinal	()I
    //   608: iaload
    //   609: tableswitch	default:+23 -> 632, 1:+99->708, 2:+533->1142
    //   633: getfield 84	org/antivirus/core/d/e:i	Lorg/antivirus/core/d/b;
    //   636: getfield 392	org/antivirus/core/d/b:f	Ljava/lang/String;
    //   639: astore 15
    //   641: aload_0
    //   642: getfield 84	org/antivirus/core/d/e:i	Lorg/antivirus/core/d/b;
    //   645: getfield 395	org/antivirus/core/d/b:e	Z
    //   648: ifeq +637 -> 1285
    //   651: aload 15
    //   653: ldc_w 397
    //   656: invokevirtual 400	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   659: ifne +14 -> 673
    //   662: aload 15
    //   664: ldc_w 402
    //   667: invokevirtual 400	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   670: ifeq +615 -> 1285
    //   673: aload_0
    //   674: aload_1
    //   675: aload 8
    //   677: aload_3
    //   678: invokespecial 364	org/antivirus/core/d/e:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    //   681: aload_0
    //   682: getfield 75	org/antivirus/core/d/e:j	Lorg/antivirus/core/d/a;
    //   685: aload 8
    //   687: iconst_0
    //   688: invokestatic 406	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   691: invokevirtual 410	org/antivirus/core/d/a:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   694: pop
    //   695: goto -684 -> 11
    //   698: astore 9
    //   700: aload 9
    //   702: invokestatic 330	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   705: goto -154 -> 551
    //   708: ldc_w 412
    //   711: astore 21
    //   713: aload 10
    //   715: getfield 414	org/antivirus/core/d/b:a	Ljava/util/ArrayList;
    //   718: invokevirtual 416	java/util/ArrayList:isEmpty	()Z
    //   721: ifne +319 -> 1040
    //   724: new 418	java/lang/StringBuilder
    //   727: dup
    //   728: invokespecial 419	java/lang/StringBuilder:<init>	()V
    //   731: aload 21
    //   733: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   736: ldc_w 425
    //   739: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   742: invokevirtual 428	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   745: astore 26
    //   747: aload 10
    //   749: getfield 414	org/antivirus/core/d/b:a	Ljava/util/ArrayList;
    //   752: invokevirtual 432	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   755: astore 27
    //   757: aload 27
    //   759: invokeinterface 437 1 0
    //   764: ifeq +124 -> 888
    //   767: aload 27
    //   769: invokeinterface 440 1 0
    //   774: checkcast 442	org/apache/http/NameValuePair
    //   777: astore 31
    //   779: new 418	java/lang/StringBuilder
    //   782: dup
    //   783: invokespecial 419	java/lang/StringBuilder:<init>	()V
    //   786: aload 31
    //   788: invokeinterface 445 1 0
    //   793: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   796: ldc_w 447
    //   799: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   802: aload 31
    //   804: invokeinterface 450 1 0
    //   809: ldc_w 452
    //   812: invokestatic 458	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   815: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   818: invokevirtual 428	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   821: astore 32
    //   823: aload 26
    //   825: invokevirtual 339	java/lang/String:length	()I
    //   828: iconst_1
    //   829: if_icmple +34 -> 863
    //   832: new 418	java/lang/StringBuilder
    //   835: dup
    //   836: invokespecial 419	java/lang/StringBuilder:<init>	()V
    //   839: aload 26
    //   841: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   844: ldc_w 460
    //   847: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   850: aload 32
    //   852: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   855: invokevirtual 428	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   858: astore 26
    //   860: goto -103 -> 757
    //   863: new 418	java/lang/StringBuilder
    //   866: dup
    //   867: invokespecial 419	java/lang/StringBuilder:<init>	()V
    //   870: aload 26
    //   872: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   875: aload 32
    //   877: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   880: invokevirtual 428	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   883: astore 26
    //   885: goto -128 -> 757
    //   888: aload 10
    //   890: getfield 367	org/antivirus/core/d/b:b	Ljava/util/ArrayList;
    //   893: invokevirtual 416	java/util/ArrayList:isEmpty	()Z
    //   896: ifne +514 -> 1410
    //   899: aload 10
    //   901: getfield 367	org/antivirus/core/d/b:b	Ljava/util/ArrayList;
    //   904: invokevirtual 432	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   907: astore 28
    //   909: aload 28
    //   911: invokeinterface 437 1 0
    //   916: ifeq +494 -> 1410
    //   919: aload 28
    //   921: invokeinterface 440 1 0
    //   926: checkcast 442	org/apache/http/NameValuePair
    //   929: astore 29
    //   931: new 418	java/lang/StringBuilder
    //   934: dup
    //   935: invokespecial 419	java/lang/StringBuilder:<init>	()V
    //   938: aload 29
    //   940: invokeinterface 445 1 0
    //   945: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   948: ldc_w 447
    //   951: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   954: aload 29
    //   956: invokeinterface 450 1 0
    //   961: ldc_w 452
    //   964: invokestatic 458	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   967: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   970: invokevirtual 428	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   973: astore 30
    //   975: aload 26
    //   977: invokevirtual 339	java/lang/String:length	()I
    //   980: iconst_1
    //   981: if_icmple +34 -> 1015
    //   984: new 418	java/lang/StringBuilder
    //   987: dup
    //   988: invokespecial 419	java/lang/StringBuilder:<init>	()V
    //   991: aload 26
    //   993: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   996: ldc_w 460
    //   999: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1002: aload 30
    //   1004: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1007: invokevirtual 428	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1010: astore 26
    //   1012: goto -103 -> 909
    //   1015: new 418	java/lang/StringBuilder
    //   1018: dup
    //   1019: invokespecial 419	java/lang/StringBuilder:<init>	()V
    //   1022: aload 26
    //   1024: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1027: aload 30
    //   1029: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1032: invokevirtual 428	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1035: astore 26
    //   1037: goto -128 -> 909
    //   1040: new 462	org/apache/http/client/methods/HttpGet
    //   1043: dup
    //   1044: new 418	java/lang/StringBuilder
    //   1047: dup
    //   1048: invokespecial 419	java/lang/StringBuilder:<init>	()V
    //   1051: aload 10
    //   1053: getfield 463	org/antivirus/core/d/b:d	Ljava/lang/String;
    //   1056: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1059: aload 21
    //   1061: invokevirtual 423	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1064: invokevirtual 428	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1067: invokespecial 464	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   1070: astore 22
    //   1072: aload 10
    //   1074: getfield 466	org/antivirus/core/d/b:c	Ljava/util/ArrayList;
    //   1077: invokevirtual 432	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   1080: astore 23
    //   1082: aload 23
    //   1084: invokeinterface 437 1 0
    //   1089: ifeq +37 -> 1126
    //   1092: aload 23
    //   1094: invokeinterface 440 1 0
    //   1099: checkcast 442	org/apache/http/NameValuePair
    //   1102: astore 25
    //   1104: aload 22
    //   1106: aload 25
    //   1108: invokeinterface 445 1 0
    //   1113: aload 25
    //   1115: invokeinterface 450 1 0
    //   1120: invokevirtual 469	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   1123: goto -41 -> 1082
    //   1126: aload 10
    //   1128: getfield 463	org/antivirus/core/d/b:d	Ljava/lang/String;
    //   1131: pop
    //   1132: aload 10
    //   1134: aload 22
    //   1136: invokevirtual 472	org/antivirus/core/d/b:a	(Lorg/apache/http/client/methods/HttpUriRequest;)V
    //   1139: goto -507 -> 632
    //   1142: new 474	org/apache/http/client/methods/HttpPost
    //   1145: dup
    //   1146: aload 10
    //   1148: getfield 463	org/antivirus/core/d/b:d	Ljava/lang/String;
    //   1151: invokespecial 475	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   1154: astore 12
    //   1156: aload 10
    //   1158: getfield 466	org/antivirus/core/d/b:c	Ljava/util/ArrayList;
    //   1161: invokevirtual 432	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   1164: astore 13
    //   1166: aload 13
    //   1168: invokeinterface 437 1 0
    //   1173: ifeq +37 -> 1210
    //   1176: aload 13
    //   1178: invokeinterface 440 1 0
    //   1183: checkcast 442	org/apache/http/NameValuePair
    //   1186: astore 20
    //   1188: aload 12
    //   1190: aload 20
    //   1192: invokeinterface 445 1 0
    //   1197: aload 20
    //   1199: invokeinterface 450 1 0
    //   1204: invokevirtual 476	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   1207: goto -41 -> 1166
    //   1210: aload 10
    //   1212: getfield 414	org/antivirus/core/d/b:a	Ljava/util/ArrayList;
    //   1215: invokevirtual 416	java/util/ArrayList:isEmpty	()Z
    //   1218: ifne +51 -> 1269
    //   1221: aload 10
    //   1223: getfield 414	org/antivirus/core/d/b:a	Ljava/util/ArrayList;
    //   1226: aload 10
    //   1228: getfield 367	org/antivirus/core/d/b:b	Ljava/util/ArrayList;
    //   1231: invokevirtual 480	java/util/ArrayList:addAll	(Ljava/util/Collection;)Z
    //   1234: pop
    //   1235: aload 12
    //   1237: new 482	org/apache/http/client/entity/UrlEncodedFormEntity
    //   1240: dup
    //   1241: aload 10
    //   1243: getfield 414	org/antivirus/core/d/b:a	Ljava/util/ArrayList;
    //   1246: ldc_w 452
    //   1249: invokespecial 485	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   1252: invokevirtual 489	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   1255: aload 10
    //   1257: getfield 414	org/antivirus/core/d/b:a	Ljava/util/ArrayList;
    //   1260: aload 10
    //   1262: getfield 367	org/antivirus/core/d/b:b	Ljava/util/ArrayList;
    //   1265: invokevirtual 492	java/util/ArrayList:removeAll	(Ljava/util/Collection;)Z
    //   1268: pop
    //   1269: aload 10
    //   1271: getfield 463	org/antivirus/core/d/b:d	Ljava/lang/String;
    //   1274: pop
    //   1275: aload 10
    //   1277: aload 12
    //   1279: invokevirtual 472	org/antivirus/core/d/b:a	(Lorg/apache/http/client/methods/HttpUriRequest;)V
    //   1282: goto -650 -> 632
    //   1285: aload_0
    //   1286: getfield 75	org/antivirus/core/d/e:j	Lorg/antivirus/core/d/a;
    //   1289: aload 8
    //   1291: iconst_1
    //   1292: invokestatic 406	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   1295: invokevirtual 410	org/antivirus/core/d/a:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1298: pop
    //   1299: goto -748 -> 551
    //   1302: astore 52
    //   1304: aload 46
    //   1306: astore 4
    //   1308: aload 52
    //   1310: astore 37
    //   1312: aconst_null
    //   1313: astore 38
    //   1315: goto -885 -> 430
    //   1318: astore 48
    //   1320: aload 46
    //   1322: astore 4
    //   1324: aload 48
    //   1326: astore 37
    //   1328: goto -898 -> 430
    //   1331: astore 37
    //   1333: aconst_null
    //   1334: astore 4
    //   1336: goto -906 -> 430
    //   1339: astore 37
    //   1341: aload 43
    //   1343: astore 4
    //   1345: aload 42
    //   1347: astore 38
    //   1349: goto -919 -> 430
    //   1352: astore 51
    //   1354: aload 46
    //   1356: astore 43
    //   1358: aload 51
    //   1360: astore 41
    //   1362: aconst_null
    //   1363: astore 42
    //   1365: goto -988 -> 377
    //   1368: astore 47
    //   1370: aload 38
    //   1372: astore 42
    //   1374: aload 46
    //   1376: astore 43
    //   1378: aload 47
    //   1380: astore 41
    //   1382: goto -1005 -> 377
    //   1385: astore 41
    //   1387: aload 38
    //   1389: astore 42
    //   1391: aconst_null
    //   1392: astore 43
    //   1394: goto -1017 -> 377
    //   1397: iconst_0
    //   1398: istore 35
    //   1400: goto -1041 -> 359
    //   1403: aload 5
    //   1405: astore 7
    //   1407: goto -1283 -> 124
    //   1410: aload 26
    //   1412: astore 21
    //   1414: goto -374 -> 1040
    //
    // Exception table:
    //   from	to	target	type
    //   250	262	369	java/lang/Exception
    //   397	402	405	java/io/IOException
    //   387	392	415	java/io/IOException
    //   250	262	425	finally
    //   435	440	453	java/io/IOException
    //   445	450	463	java/io/IOException
    //   589	695	698	java/lang/Exception
    //   708	1299	698	java/lang/Exception
    //   262	273	1302	finally
    //   273	322	1318	finally
    //   322	332	1331	finally
    //   377	382	1339	finally
    //   262	273	1352	java/lang/Exception
    //   273	322	1368	java/lang/Exception
    //   322	332	1385	java/lang/Exception
  }

  public final void a(Context paramContext)
  {
    if (this.o != null)
    {
      paramContext.getContentResolver().unregisterContentObserver(this.o);
      this.o.discnnectContext();
      this.o = null;
    }
  }

  public final void a(Context paramContext, Handler paramHandler)
  {
    if (this.o == null)
    {
      this.o = new SiteContentObserver(paramContext, paramHandler);
      if (Build.VERSION.SDK_INT <= 13)
        break label48;
      paramContext.getContentResolver().registerContentObserver(this.o.HistUri, true, this.o);
    }
    while (true)
    {
      return;
      label48: paramContext.getContentResolver().registerContentObserver(this.o.UrlUri, true, this.o);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.d.e
 * JD-Core Version:    0.6.2
 */