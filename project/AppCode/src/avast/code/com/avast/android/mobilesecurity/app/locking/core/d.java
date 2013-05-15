package com.avast.android.mobilesecurity.app.locking.core;

import android.content.Context;
import android.os.AsyncTask;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.t;
import java.text.SimpleDateFormat;
import java.util.regex.Pattern;

class d extends AsyncTask
{
  private final Pattern b = Pattern.compile("act=([^ ]+)");
  private final Pattern c = Pattern.compile("cmp=([^} ]+)");
  private final Pattern d = Pattern.compile("dat=([^} ]+)");
  private final Pattern e = Pattern.compile("([^ ]+)/([^: ]+)");
  private final SimpleDateFormat f = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
  private Context g;
  private e h;

  public d(AppLockingService paramAppLockingService, Context paramContext)
  {
    this.g = paramContext;
  }

  // ERROR //
  protected Void a(Void[] paramArrayOfVoid)
  {
    // Byte code:
    //   0: invokestatic 68	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   3: ldc 70
    //   5: invokevirtual 74	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   8: astore 5
    //   10: new 76	java/io/BufferedReader
    //   13: dup
    //   14: new 78	java/io/InputStreamReader
    //   17: dup
    //   18: aload 5
    //   20: invokevirtual 84	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   23: invokespecial 87	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   26: invokespecial 90	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   29: astore 6
    //   31: aload_0
    //   32: new 92	com/avast/android/mobilesecurity/app/locking/core/e
    //   35: dup
    //   36: aload_0
    //   37: getfield 57	com/avast/android/mobilesecurity/app/locking/core/d:g	Landroid/content/Context;
    //   40: invokespecial 95	com/avast/android/mobilesecurity/app/locking/core/e:<init>	(Landroid/content/Context;)V
    //   43: putfield 97	com/avast/android/mobilesecurity/app/locking/core/d:h	Lcom/avast/android/mobilesecurity/app/locking/core/e;
    //   46: aload_0
    //   47: getfield 97	com/avast/android/mobilesecurity/app/locking/core/d:h	Lcom/avast/android/mobilesecurity/app/locking/core/e;
    //   50: astore 7
    //   52: iconst_1
    //   53: anewarray 99	java/io/InputStream
    //   56: astore 8
    //   58: aload 8
    //   60: iconst_0
    //   61: aload 5
    //   63: invokevirtual 102	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   66: aastore
    //   67: aload 7
    //   69: aload 8
    //   71: invokestatic 107	com/avast/android/generic/util/b:a	(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    //   74: new 109	java/util/Date
    //   77: dup
    //   78: invokespecial 110	java/util/Date:<init>	()V
    //   81: astore 9
    //   83: iconst_0
    //   84: istore 10
    //   86: aload 6
    //   88: invokevirtual 114	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   91: astore 11
    //   93: aload 11
    //   95: ifnull +731 -> 826
    //   98: aload_0
    //   99: invokevirtual 118	com/avast/android/mobilesecurity/app/locking/core/d:isCancelled	()Z
    //   102: istore 12
    //   104: iload 12
    //   106: ifne +720 -> 826
    //   109: iload 10
    //   111: ifne +769 -> 880
    //   114: aload 11
    //   116: invokevirtual 124	java/lang/String:length	()I
    //   119: bipush 18
    //   121: if_icmplt -35 -> 86
    //   124: aload 11
    //   126: iconst_0
    //   127: bipush 18
    //   129: invokevirtual 128	java/lang/String:substring	(II)Ljava/lang/String;
    //   132: astore 39
    //   134: aload_0
    //   135: getfield 55	com/avast/android/mobilesecurity/app/locking/core/d:f	Ljava/text/SimpleDateFormat;
    //   138: aload 39
    //   140: invokevirtual 132	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   143: astore 40
    //   145: aload 40
    //   147: aload 9
    //   149: invokevirtual 135	java/util/Date:getYear	()I
    //   152: invokevirtual 139	java/util/Date:setYear	(I)V
    //   155: aload 40
    //   157: aload 9
    //   159: invokevirtual 143	java/util/Date:before	(Ljava/util/Date;)Z
    //   162: istore 41
    //   164: iload 41
    //   166: ifne -80 -> 86
    //   169: iconst_1
    //   170: istore 13
    //   172: aload 11
    //   174: ldc 145
    //   176: invokevirtual 149	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   179: ifne +13 -> 192
    //   182: aload 11
    //   184: ldc 151
    //   186: invokevirtual 149	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   189: ifeq +94 -> 283
    //   192: new 153	com/avast/android/mobilesecurity/app/locking/core/App
    //   195: dup
    //   196: invokespecial 154	com/avast/android/mobilesecurity/app/locking/core/App:<init>	()V
    //   199: astore 14
    //   201: aload 14
    //   203: getstatic 157	com/avast/android/mobilesecurity/app/locking/core/App:a	Ljava/lang/String;
    //   206: putfield 159	com/avast/android/mobilesecurity/app/locking/core/App:e	Ljava/lang/String;
    //   209: aload 14
    //   211: iconst_1
    //   212: putfield 163	com/avast/android/mobilesecurity/app/locking/core/App:k	Z
    //   215: aload 14
    //   217: iconst_1
    //   218: putfield 166	com/avast/android/mobilesecurity/app/locking/core/App:i	Z
    //   221: aload 14
    //   223: iconst_1
    //   224: putfield 170	com/avast/android/mobilesecurity/app/locking/core/App:n	I
    //   227: aload_0
    //   228: getfield 42	com/avast/android/mobilesecurity/app/locking/core/d:d	Ljava/util/regex/Pattern;
    //   231: aload 11
    //   233: invokevirtual 174	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   236: astore 15
    //   238: aload 15
    //   240: invokevirtual 179	java/util/regex/Matcher:find	()Z
    //   243: ifeq +653 -> 896
    //   246: aload 15
    //   248: iconst_1
    //   249: invokevirtual 183	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   252: astore 16
    //   254: aload 14
    //   256: aload 16
    //   258: putfield 185	com/avast/android/mobilesecurity/app/locking/core/App:h	Ljava/lang/String;
    //   261: aload 14
    //   263: ldc 187
    //   265: ldc 189
    //   267: invokevirtual 192	com/avast/android/mobilesecurity/app/locking/core/App:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   270: aload_0
    //   271: iconst_1
    //   272: anewarray 153	com/avast/android/mobilesecurity/app/locking/core/App
    //   275: dup
    //   276: iconst_0
    //   277: aload 14
    //   279: aastore
    //   280: invokevirtual 196	com/avast/android/mobilesecurity/app/locking/core/d:publishProgress	([Ljava/lang/Object;)V
    //   283: aload_0
    //   284: getfield 21	com/avast/android/mobilesecurity/app/locking/core/d:a	Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;
    //   287: invokestatic 201	com/avast/android/mobilesecurity/app/locking/core/AppLockingService:a	(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Z
    //   290: ifeq +583 -> 873
    //   293: aload 11
    //   295: ldc 203
    //   297: invokevirtual 149	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   300: ifne +13 -> 313
    //   303: aload 11
    //   305: ldc 205
    //   307: invokevirtual 149	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   310: ifeq +243 -> 553
    //   313: aload 11
    //   315: ldc 207
    //   317: invokevirtual 149	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   320: ifeq +233 -> 553
    //   323: aload_0
    //   324: getfield 34	com/avast/android/mobilesecurity/app/locking/core/d:b	Ljava/util/regex/Pattern;
    //   327: aload 11
    //   329: invokevirtual 174	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   332: astore 27
    //   334: aload_0
    //   335: getfield 38	com/avast/android/mobilesecurity/app/locking/core/d:c	Ljava/util/regex/Pattern;
    //   338: aload 11
    //   340: invokevirtual 174	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   343: astore 28
    //   345: aload_0
    //   346: getfield 42	com/avast/android/mobilesecurity/app/locking/core/d:d	Ljava/util/regex/Pattern;
    //   349: aload 11
    //   351: invokevirtual 174	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   354: astore 29
    //   356: aload 27
    //   358: invokevirtual 179	java/util/regex/Matcher:find	()Z
    //   361: ifeq +543 -> 904
    //   364: aload 27
    //   366: iconst_1
    //   367: invokevirtual 183	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   370: astore 30
    //   372: aload 30
    //   374: invokestatic 212	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   377: ifeq +10 -> 387
    //   380: iload 13
    //   382: istore 10
    //   384: goto -298 -> 86
    //   387: aload 28
    //   389: invokevirtual 179	java/util/regex/Matcher:find	()Z
    //   392: ifeq +518 -> 910
    //   395: aload 28
    //   397: iconst_1
    //   398: invokevirtual 183	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   401: astore 31
    //   403: aload 31
    //   405: invokestatic 212	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   408: ifeq +10 -> 418
    //   411: iload 13
    //   413: istore 10
    //   415: goto -329 -> 86
    //   418: aload 31
    //   420: ldc 214
    //   422: invokevirtual 218	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   425: astore 32
    //   427: aload 32
    //   429: arraylength
    //   430: iconst_2
    //   431: if_icmpge +10 -> 441
    //   434: iload 13
    //   436: istore 10
    //   438: goto -352 -> 86
    //   441: aload 32
    //   443: iconst_0
    //   444: aaload
    //   445: astore 33
    //   447: aload 32
    //   449: iconst_1
    //   450: aaload
    //   451: astore 34
    //   453: aload 29
    //   455: invokevirtual 179	java/util/regex/Matcher:find	()Z
    //   458: ifeq +361 -> 819
    //   461: aload 29
    //   463: iconst_1
    //   464: invokevirtual 183	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   467: astore 35
    //   469: aload 31
    //   471: invokestatic 212	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   474: ifne +79 -> 553
    //   477: aload_0
    //   478: getfield 21	com/avast/android/mobilesecurity/app/locking/core/d:a	Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;
    //   481: aload 33
    //   483: invokestatic 221	com/avast/android/mobilesecurity/app/locking/core/AppLockingService:a	(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    //   486: astore 36
    //   488: aload 36
    //   490: ifnull +63 -> 553
    //   493: aload 36
    //   495: aload 34
    //   497: aload 30
    //   499: aload 35
    //   501: invokevirtual 224	com/avast/android/mobilesecurity/app/locking/core/App:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   504: ldc 226
    //   506: new 228	java/lang/StringBuilder
    //   509: dup
    //   510: invokespecial 229	java/lang/StringBuilder:<init>	()V
    //   513: ldc 231
    //   515: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   518: aload 33
    //   520: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   523: ldc 237
    //   525: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   528: aload 34
    //   530: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   533: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   536: invokestatic 245	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   539: pop
    //   540: aload_0
    //   541: iconst_1
    //   542: anewarray 153	com/avast/android/mobilesecurity/app/locking/core/App
    //   545: dup
    //   546: iconst_0
    //   547: aload 36
    //   549: aastore
    //   550: invokevirtual 196	com/avast/android/mobilesecurity/app/locking/core/d:publishProgress	([Ljava/lang/Object;)V
    //   553: aload 11
    //   555: ldc 247
    //   557: invokevirtual 149	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   560: ifeq +121 -> 681
    //   563: aload_0
    //   564: getfield 46	com/avast/android/mobilesecurity/app/locking/core/d:e	Ljava/util/regex/Pattern;
    //   567: aload 11
    //   569: aload 11
    //   571: ldc 247
    //   573: invokevirtual 251	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   576: invokevirtual 253	java/lang/String:substring	(I)Ljava/lang/String;
    //   579: invokevirtual 174	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   582: astore 22
    //   584: aload 22
    //   586: invokevirtual 179	java/util/regex/Matcher:find	()Z
    //   589: ifeq +92 -> 681
    //   592: aload 22
    //   594: iconst_1
    //   595: invokevirtual 183	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   598: astore 23
    //   600: aload 22
    //   602: iconst_2
    //   603: invokevirtual 183	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   606: astore 24
    //   608: aload_0
    //   609: getfield 21	com/avast/android/mobilesecurity/app/locking/core/d:a	Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;
    //   612: aload 23
    //   614: invokestatic 221	com/avast/android/mobilesecurity/app/locking/core/AppLockingService:a	(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    //   617: astore 25
    //   619: aload 25
    //   621: ifnull +60 -> 681
    //   624: aload 25
    //   626: aload 24
    //   628: aconst_null
    //   629: invokevirtual 192	com/avast/android/mobilesecurity/app/locking/core/App:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   632: ldc 226
    //   634: new 228	java/lang/StringBuilder
    //   637: dup
    //   638: invokespecial 229	java/lang/StringBuilder:<init>	()V
    //   641: ldc 255
    //   643: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   646: aload 23
    //   648: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   651: ldc 237
    //   653: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   656: aload 24
    //   658: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   661: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   664: invokestatic 245	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   667: pop
    //   668: aload_0
    //   669: iconst_1
    //   670: anewarray 153	com/avast/android/mobilesecurity/app/locking/core/App
    //   673: dup
    //   674: iconst_0
    //   675: aload 25
    //   677: aastore
    //   678: invokevirtual 196	com/avast/android/mobilesecurity/app/locking/core/d:publishProgress	([Ljava/lang/Object;)V
    //   681: aload 11
    //   683: ldc_w 257
    //   686: invokevirtual 149	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   689: ifeq +184 -> 873
    //   692: aload_0
    //   693: getfield 46	com/avast/android/mobilesecurity/app/locking/core/d:e	Ljava/util/regex/Pattern;
    //   696: aload 11
    //   698: aload 11
    //   700: ldc_w 257
    //   703: invokevirtual 251	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   706: invokevirtual 253	java/lang/String:substring	(I)Ljava/lang/String;
    //   709: invokevirtual 174	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   712: astore 17
    //   714: aload 17
    //   716: invokevirtual 179	java/util/regex/Matcher:find	()Z
    //   719: ifeq +93 -> 812
    //   722: aload 17
    //   724: iconst_1
    //   725: invokevirtual 183	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   728: astore 18
    //   730: aload 17
    //   732: iconst_2
    //   733: invokevirtual 183	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   736: astore 19
    //   738: aload_0
    //   739: getfield 21	com/avast/android/mobilesecurity/app/locking/core/d:a	Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;
    //   742: aload 18
    //   744: invokestatic 221	com/avast/android/mobilesecurity/app/locking/core/AppLockingService:a	(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    //   747: astore 20
    //   749: aload 20
    //   751: ifnull +61 -> 812
    //   754: aload 20
    //   756: aload 19
    //   758: aconst_null
    //   759: invokevirtual 192	com/avast/android/mobilesecurity/app/locking/core/App:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   762: ldc 226
    //   764: new 228	java/lang/StringBuilder
    //   767: dup
    //   768: invokespecial 229	java/lang/StringBuilder:<init>	()V
    //   771: ldc_w 259
    //   774: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   777: aload 18
    //   779: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   782: ldc 237
    //   784: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   787: aload 19
    //   789: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   792: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   795: invokestatic 245	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   798: pop
    //   799: aload_0
    //   800: iconst_1
    //   801: anewarray 153	com/avast/android/mobilesecurity/app/locking/core/App
    //   804: dup
    //   805: iconst_0
    //   806: aload 20
    //   808: aastore
    //   809: invokevirtual 196	com/avast/android/mobilesecurity/app/locking/core/d:publishProgress	([Ljava/lang/Object;)V
    //   812: iload 13
    //   814: istore 10
    //   816: goto -730 -> 86
    //   819: aconst_null
    //   820: astore 35
    //   822: goto -353 -> 469
    //   825: astore_2
    //   826: aload_0
    //   827: getfield 97	com/avast/android/mobilesecurity/app/locking/core/d:h	Lcom/avast/android/mobilesecurity/app/locking/core/e;
    //   830: ifnull +12 -> 842
    //   833: aload_0
    //   834: getfield 97	com/avast/android/mobilesecurity/app/locking/core/d:h	Lcom/avast/android/mobilesecurity/app/locking/core/e;
    //   837: iconst_1
    //   838: invokevirtual 263	com/avast/android/mobilesecurity/app/locking/core/e:cancel	(Z)Z
    //   841: pop
    //   842: ldc 226
    //   844: new 228	java/lang/StringBuilder
    //   847: dup
    //   848: invokespecial 229	java/lang/StringBuilder:<init>	()V
    //   851: ldc_w 265
    //   854: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   857: aload_0
    //   858: invokevirtual 118	com/avast/android/mobilesecurity/app/locking/core/d:isCancelled	()Z
    //   861: invokevirtual 268	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   864: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   867: invokestatic 245	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   870: pop
    //   871: aconst_null
    //   872: areturn
    //   873: iload 13
    //   875: istore 10
    //   877: goto -791 -> 86
    //   880: iload 10
    //   882: istore 13
    //   884: goto -712 -> 172
    //   887: astore 38
    //   889: iload 10
    //   891: istore 13
    //   893: goto -721 -> 172
    //   896: ldc_w 270
    //   899: astore 16
    //   901: goto -647 -> 254
    //   904: aconst_null
    //   905: astore 30
    //   907: goto -535 -> 372
    //   910: aconst_null
    //   911: astore 31
    //   913: goto -510 -> 403
    //
    // Exception table:
    //   from	to	target	type
    //   0	104	825	java/io/IOException
    //   114	164	825	java/io/IOException
    //   172	812	825	java/io/IOException
    //   114	164	887	java/text/ParseException
  }

  protected void a(Void paramVoid)
  {
    if (((ae)ad.a(this.g, ae.class)).n())
    {
      AppLockingService.a(this.a, new d(this.a, this.g));
      b.a(AppLockingService.b(this.a), new Void[0]);
      this.h = new e(this.g);
      m.b("ApplockingService", "finish LogScannerTask and restart it");
    }
    while (true)
    {
      return;
      m.b("ApplockingService", "finish LogScannerTask, logcat not available");
    }
  }

  protected void a(App[] paramArrayOfApp)
  {
    if ((paramArrayOfApp.length == 0) || (paramArrayOfApp[0] == null));
    while (true)
    {
      return;
      m.b("ApplockingService", "found app start: " + paramArrayOfApp[0].e + "/" + paramArrayOfApp[0].f);
      App localApp = paramArrayOfApp[0];
      t localt = (t)ad.a(this.a.getApplicationContext(), t.class);
      if ((!localt.ab()) && ((!localt.o()) || (!localt.aY())) && ((!localt.ag()) || (!localt.ah())))
        cancel(true);
      else
        AppLockingService.a(this.a, localApp);
    }
  }

  protected void onCancelled()
  {
    super.onCancelled();
    m.b("ApplockingService", "onCancelled");
    this.a.stopSelf();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.d
 * JD-Core Version:    0.6.2
 */