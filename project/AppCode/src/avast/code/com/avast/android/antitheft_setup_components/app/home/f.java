package com.avast.android.antitheft_setup_components.app.home;

import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avast.android.antitheft_setup_components.c;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.util.a;
import com.avast.android.generic.util.an;

class f extends an
{
  private boolean b = false;
  private String c = "";

  f(DownloadFragment paramDownloadFragment)
  {
  }

  // ERROR //
  @android.annotation.SuppressLint({"WorldReadableFiles"})
  public Void a(Void[] paramArrayOfVoid)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   4: invokevirtual 48	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:isAdded	()Z
    //   7: ifne +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: ldc2_w 49
    //   15: invokestatic 56	java/lang/Thread:sleep	(J)V
    //   18: aload_0
    //   19: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   22: invokevirtual 48	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:isAdded	()Z
    //   25: ifeq +1142 -> 1167
    //   28: aload_0
    //   29: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   32: invokevirtual 60	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   35: ifnonnull +6 -> 41
    //   38: goto +1129 -> 1167
    //   41: aload_0
    //   42: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   45: invokevirtual 60	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   48: invokestatic 66	com/avast/android/generic/f/b/a:f	(Landroid/content/Context;)Ljava/lang/String;
    //   51: astore_3
    //   52: aload_3
    //   53: ifnull +12 -> 65
    //   56: aload_3
    //   57: ldc 21
    //   59: invokevirtual 72	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   62: ifeq +68 -> 130
    //   65: aload_0
    //   66: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   69: ldc 74
    //   71: ldc 76
    //   73: ldc 78
    //   75: lconst_0
    //   76: invokevirtual 81	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    //   79: new 36	java/lang/Exception
    //   82: dup
    //   83: aload_0
    //   84: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   87: getstatic 87	com/avast/android/antitheft_setup_components/g:o	I
    //   90: invokevirtual 91	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getString	(I)Ljava/lang/String;
    //   93: invokespecial 94	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   96: athrow
    //   97: astore_2
    //   98: aload_0
    //   99: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   102: ldc 74
    //   104: ldc 76
    //   106: aload_2
    //   107: invokevirtual 98	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   110: lconst_0
    //   111: invokevirtual 81	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    //   114: aload_0
    //   115: iconst_1
    //   116: putfield 19	com/avast/android/antitheft_setup_components/app/home/f:b	Z
    //   119: aload_0
    //   120: aload_2
    //   121: invokevirtual 98	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   124: putfield 23	com/avast/android/antitheft_setup_components/app/home/f:c	Ljava/lang/String;
    //   127: goto -117 -> 10
    //   130: aconst_null
    //   131: astore 4
    //   133: aload_0
    //   134: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   137: invokevirtual 60	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   140: aload_0
    //   141: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   144: invokevirtual 60	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   147: invokestatic 102	com/avast/android/generic/Application:f	()Ljava/lang/String;
    //   150: iconst_0
    //   151: invokestatic 107	com/avast/android/antitheft_setup_components/a/a:a	(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    //   154: invokestatic 110	com/avast/android/antitheft_setup_components/a/a:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   157: astore 27
    //   159: aload 27
    //   161: astore 9
    //   163: aload 9
    //   165: invokevirtual 116	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   168: astore 32
    //   170: aload 32
    //   172: astore 8
    //   174: aload 9
    //   176: invokevirtual 119	java/net/HttpURLConnection:getContentType	()Ljava/lang/String;
    //   179: ldc 121
    //   181: invokevirtual 72	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   184: ifeq +318 -> 502
    //   187: aload_0
    //   188: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   191: new 123	com/avast/android/antitheft_setup_components/app/home/g
    //   194: dup
    //   195: aload_0
    //   196: invokespecial 126	com/avast/android/antitheft_setup_components/app/home/g:<init>	(Lcom/avast/android/antitheft_setup_components/app/home/f;)V
    //   199: invokestatic 131	com/avast/android/generic/util/a:a	(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    //   202: aload 9
    //   204: invokevirtual 135	java/net/HttpURLConnection:getContentLength	()I
    //   207: ifle +219 -> 426
    //   210: aload 9
    //   212: invokevirtual 135	java/net/HttpURLConnection:getContentLength	()I
    //   215: istore 43
    //   217: aload_0
    //   218: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   221: invokevirtual 60	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   224: ldc 137
    //   226: iconst_1
    //   227: invokevirtual 143	android/support/v4/app/FragmentActivity:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   230: astore 44
    //   232: aload 44
    //   234: astore 7
    //   236: sipush 1024
    //   239: newarray byte
    //   241: astore 49
    //   243: iconst_0
    //   244: istore 50
    //   246: iconst_0
    //   247: istore 51
    //   249: aload 8
    //   251: aload 49
    //   253: invokevirtual 149	java/io/InputStream:read	([B)I
    //   256: istore 52
    //   258: aconst_null
    //   259: astore 4
    //   261: iload 52
    //   263: ifle +170 -> 433
    //   266: aload 7
    //   268: aload 49
    //   270: iconst_0
    //   271: iload 52
    //   273: invokevirtual 155	java/io/FileOutputStream:write	([BII)V
    //   276: iload 50
    //   278: iload 52
    //   280: iadd
    //   281: istore 50
    //   283: iinc 51 1
    //   286: aconst_null
    //   287: astore 4
    //   289: iload 51
    //   291: iconst_5
    //   292: if_icmple -43 -> 249
    //   295: aload_0
    //   296: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   299: new 157	com/avast/android/antitheft_setup_components/app/home/h
    //   302: dup
    //   303: aload_0
    //   304: iload 50
    //   306: iload 43
    //   308: invokespecial 160	com/avast/android/antitheft_setup_components/app/home/h:<init>	(Lcom/avast/android/antitheft_setup_components/app/home/f;II)V
    //   311: invokestatic 131	com/avast/android/generic/util/a:a	(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    //   314: iconst_0
    //   315: istore 51
    //   317: goto -68 -> 249
    //   320: astore 48
    //   322: aload 48
    //   324: astore 6
    //   326: aload_0
    //   327: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   330: ldc 74
    //   332: ldc 76
    //   334: aload 6
    //   336: invokevirtual 161	com/avast/android/generic/internet/b/a:getMessage	()Ljava/lang/String;
    //   339: lconst_0
    //   340: invokevirtual 81	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    //   343: new 36	java/lang/Exception
    //   346: dup
    //   347: aload_0
    //   348: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   351: getstatic 164	com/avast/android/antitheft_setup_components/g:af	I
    //   354: invokevirtual 91	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getString	(I)Ljava/lang/String;
    //   357: invokespecial 94	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   360: athrow
    //   361: astore 10
    //   363: aload 9
    //   365: astore 11
    //   367: aload 8
    //   369: astore 12
    //   371: aload 7
    //   373: astore 13
    //   375: iconst_1
    //   376: anewarray 166	java/io/Closeable
    //   379: dup
    //   380: iconst_0
    //   381: aload 4
    //   383: aastore
    //   384: invokestatic 171	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   387: iconst_1
    //   388: anewarray 166	java/io/Closeable
    //   391: dup
    //   392: iconst_0
    //   393: aload 12
    //   395: aastore
    //   396: invokestatic 171	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   399: iconst_1
    //   400: anewarray 166	java/io/Closeable
    //   403: dup
    //   404: iconst_0
    //   405: aload 13
    //   407: aastore
    //   408: invokestatic 171	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   411: iconst_1
    //   412: anewarray 112	java/net/HttpURLConnection
    //   415: dup
    //   416: iconst_0
    //   417: aload 11
    //   419: aastore
    //   420: invokestatic 174	com/avast/android/generic/util/af:a	([Ljava/net/HttpURLConnection;)V
    //   423: aload 10
    //   425: athrow
    //   426: ldc 175
    //   428: istore 43
    //   430: goto -213 -> 217
    //   433: aload 7
    //   435: invokevirtual 178	java/io/FileOutputStream:flush	()V
    //   438: aload_0
    //   439: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   442: ldc 74
    //   444: ldc 180
    //   446: ldc 182
    //   448: lconst_0
    //   449: invokevirtual 81	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    //   452: iconst_1
    //   453: anewarray 166	java/io/Closeable
    //   456: dup
    //   457: iconst_0
    //   458: aconst_null
    //   459: aastore
    //   460: invokestatic 171	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   463: iconst_1
    //   464: anewarray 166	java/io/Closeable
    //   467: dup
    //   468: iconst_0
    //   469: aload 8
    //   471: aastore
    //   472: invokestatic 171	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   475: iconst_1
    //   476: anewarray 166	java/io/Closeable
    //   479: dup
    //   480: iconst_0
    //   481: aload 7
    //   483: aastore
    //   484: invokestatic 171	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   487: iconst_1
    //   488: anewarray 112	java/net/HttpURLConnection
    //   491: dup
    //   492: iconst_0
    //   493: aload 9
    //   495: aastore
    //   496: invokestatic 174	com/avast/android/generic/util/af:a	([Ljava/net/HttpURLConnection;)V
    //   499: goto -372 -> 127
    //   502: new 184	java/io/BufferedReader
    //   505: dup
    //   506: new 186	java/io/InputStreamReader
    //   509: dup
    //   510: aload 8
    //   512: invokespecial 189	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   515: invokespecial 192	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   518: astore 37
    //   520: aload 37
    //   522: invokevirtual 195	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   525: astore 42
    //   527: new 36	java/lang/Exception
    //   530: dup
    //   531: aload_0
    //   532: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   535: getstatic 198	com/avast/android/antitheft_setup_components/g:G	I
    //   538: iconst_1
    //   539: anewarray 200	java/lang/Object
    //   542: dup
    //   543: iconst_0
    //   544: aload 42
    //   546: aastore
    //   547: invokevirtual 203	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   550: invokespecial 94	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   553: athrow
    //   554: astore 41
    //   556: aload 41
    //   558: astore 6
    //   560: aload 37
    //   562: astore 4
    //   564: aconst_null
    //   565: astore 7
    //   567: goto -241 -> 326
    //   570: astore 22
    //   572: aconst_null
    //   573: astore 16
    //   575: aconst_null
    //   576: astore 13
    //   578: aconst_null
    //   579: astore 12
    //   581: aconst_null
    //   582: astore 11
    //   584: aload 22
    //   586: astore 23
    //   588: aload_0
    //   589: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   592: ldc 74
    //   594: ldc 76
    //   596: aload 23
    //   598: invokevirtual 204	com/avast/android/generic/internet/b/b:getMessage	()Ljava/lang/String;
    //   601: lconst_0
    //   602: invokevirtual 81	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    //   605: aload_0
    //   606: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   609: astore 24
    //   611: getstatic 198	com/avast/android/antitheft_setup_components/g:G	I
    //   614: istore 25
    //   616: iconst_1
    //   617: anewarray 200	java/lang/Object
    //   620: astore 26
    //   622: aload 26
    //   624: iconst_0
    //   625: aload_0
    //   626: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   629: aload 23
    //   631: invokestatic 209	com/avast/android/generic/util/q:a	(Landroid/support/v4/app/Fragment;Ljava/lang/Throwable;)Ljava/lang/String;
    //   634: aastore
    //   635: new 36	java/lang/Exception
    //   638: dup
    //   639: aload 24
    //   641: iload 25
    //   643: aload 26
    //   645: invokevirtual 203	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   648: invokespecial 94	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   651: athrow
    //   652: aload_0
    //   653: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   656: ldc 74
    //   658: ldc 76
    //   660: aload 18
    //   662: invokevirtual 210	com/avast/android/generic/internet/b/c:getMessage	()Ljava/lang/String;
    //   665: lconst_0
    //   666: invokevirtual 81	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    //   669: aload_0
    //   670: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   673: astore 19
    //   675: getstatic 212	com/avast/android/antitheft_setup_components/g:I	I
    //   678: istore 20
    //   680: iconst_1
    //   681: anewarray 200	java/lang/Object
    //   684: astore 21
    //   686: aload 21
    //   688: iconst_0
    //   689: aload_0
    //   690: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   693: aload 18
    //   695: invokestatic 209	com/avast/android/generic/util/q:a	(Landroid/support/v4/app/Fragment;Ljava/lang/Throwable;)Ljava/lang/String;
    //   698: aastore
    //   699: new 36	java/lang/Exception
    //   702: dup
    //   703: aload 19
    //   705: iload 20
    //   707: aload 21
    //   709: invokevirtual 203	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   712: invokespecial 94	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   715: athrow
    //   716: aload_0
    //   717: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   720: ldc 74
    //   722: ldc 76
    //   724: aload 15
    //   726: invokevirtual 98	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   729: lconst_0
    //   730: invokevirtual 81	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    //   733: ldc 214
    //   735: ldc 216
    //   737: aload 15
    //   739: invokestatic 221	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   742: new 36	java/lang/Exception
    //   745: dup
    //   746: aload_0
    //   747: getfield 14	com/avast/android/antitheft_setup_components/app/home/f:a	Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
    //   750: getstatic 224	com/avast/android/antitheft_setup_components/g:h	I
    //   753: invokevirtual 91	com/avast/android/antitheft_setup_components/app/home/DownloadFragment:getString	(I)Ljava/lang/String;
    //   756: invokespecial 94	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   759: athrow
    //   760: astore 10
    //   762: aconst_null
    //   763: astore 4
    //   765: aconst_null
    //   766: astore 13
    //   768: aconst_null
    //   769: astore 12
    //   771: aconst_null
    //   772: astore 11
    //   774: goto -399 -> 375
    //   777: astore 10
    //   779: aload 9
    //   781: astore 11
    //   783: aconst_null
    //   784: astore 4
    //   786: aconst_null
    //   787: astore 13
    //   789: aconst_null
    //   790: astore 12
    //   792: goto -417 -> 375
    //   795: astore 10
    //   797: aload 9
    //   799: astore 11
    //   801: aload 8
    //   803: astore 12
    //   805: aconst_null
    //   806: astore 4
    //   808: aconst_null
    //   809: astore 13
    //   811: goto -436 -> 375
    //   814: astore 10
    //   816: aload 37
    //   818: astore 4
    //   820: aload 9
    //   822: astore 11
    //   824: aload 8
    //   826: astore 12
    //   828: aconst_null
    //   829: astore 13
    //   831: goto -456 -> 375
    //   834: astore 31
    //   836: aload 9
    //   838: astore 11
    //   840: aload 31
    //   842: astore 15
    //   844: aconst_null
    //   845: astore 16
    //   847: aconst_null
    //   848: astore 13
    //   850: aconst_null
    //   851: astore 12
    //   853: goto -137 -> 716
    //   856: astore 36
    //   858: aload 9
    //   860: astore 11
    //   862: aload 8
    //   864: astore 12
    //   866: aload 36
    //   868: astore 15
    //   870: aconst_null
    //   871: astore 16
    //   873: aconst_null
    //   874: astore 13
    //   876: goto -160 -> 716
    //   879: astore 47
    //   881: aload 9
    //   883: astore 11
    //   885: aload 8
    //   887: astore 12
    //   889: aload 7
    //   891: astore 13
    //   893: aload 47
    //   895: astore 15
    //   897: aconst_null
    //   898: astore 16
    //   900: goto -184 -> 716
    //   903: astore 40
    //   905: aload 40
    //   907: astore 15
    //   909: aload 37
    //   911: astore 16
    //   913: aload 9
    //   915: astore 11
    //   917: aload 8
    //   919: astore 12
    //   921: aconst_null
    //   922: astore 13
    //   924: goto -208 -> 716
    //   927: astore 30
    //   929: aload 9
    //   931: astore 11
    //   933: aload 30
    //   935: astore 18
    //   937: aconst_null
    //   938: astore 16
    //   940: aconst_null
    //   941: astore 13
    //   943: aconst_null
    //   944: astore 12
    //   946: goto -294 -> 652
    //   949: astore 35
    //   951: aload 9
    //   953: astore 11
    //   955: aload 8
    //   957: astore 12
    //   959: aload 35
    //   961: astore 18
    //   963: aconst_null
    //   964: astore 16
    //   966: aconst_null
    //   967: astore 13
    //   969: goto -317 -> 652
    //   972: astore 46
    //   974: aload 9
    //   976: astore 11
    //   978: aload 8
    //   980: astore 12
    //   982: aload 7
    //   984: astore 13
    //   986: aload 46
    //   988: astore 18
    //   990: aconst_null
    //   991: astore 16
    //   993: goto -341 -> 652
    //   996: astore 39
    //   998: aload 39
    //   1000: astore 18
    //   1002: aload 37
    //   1004: astore 16
    //   1006: aload 9
    //   1008: astore 11
    //   1010: aload 8
    //   1012: astore 12
    //   1014: aconst_null
    //   1015: astore 13
    //   1017: goto -365 -> 652
    //   1020: astore 29
    //   1022: aload 9
    //   1024: astore 11
    //   1026: aload 29
    //   1028: astore 23
    //   1030: aconst_null
    //   1031: astore 16
    //   1033: aconst_null
    //   1034: astore 13
    //   1036: aconst_null
    //   1037: astore 12
    //   1039: goto -451 -> 588
    //   1042: astore 34
    //   1044: aload 9
    //   1046: astore 11
    //   1048: aload 8
    //   1050: astore 12
    //   1052: aload 34
    //   1054: astore 23
    //   1056: aconst_null
    //   1057: astore 16
    //   1059: aconst_null
    //   1060: astore 13
    //   1062: goto -474 -> 588
    //   1065: astore 45
    //   1067: aload 9
    //   1069: astore 11
    //   1071: aload 8
    //   1073: astore 12
    //   1075: aload 7
    //   1077: astore 13
    //   1079: aload 45
    //   1081: astore 23
    //   1083: aconst_null
    //   1084: astore 16
    //   1086: goto -498 -> 588
    //   1089: astore 38
    //   1091: aload 38
    //   1093: astore 23
    //   1095: aload 37
    //   1097: astore 16
    //   1099: aload 9
    //   1101: astore 11
    //   1103: aload 8
    //   1105: astore 12
    //   1107: aconst_null
    //   1108: astore 13
    //   1110: goto -522 -> 588
    //   1113: astore 5
    //   1115: aload 5
    //   1117: astore 6
    //   1119: aconst_null
    //   1120: astore 4
    //   1122: aconst_null
    //   1123: astore 7
    //   1125: aconst_null
    //   1126: astore 8
    //   1128: aconst_null
    //   1129: astore 9
    //   1131: goto -805 -> 326
    //   1134: astore 28
    //   1136: aload 28
    //   1138: astore 6
    //   1140: aconst_null
    //   1141: astore 4
    //   1143: aconst_null
    //   1144: astore 7
    //   1146: aconst_null
    //   1147: astore 8
    //   1149: goto -823 -> 326
    //   1152: astore 33
    //   1154: aload 33
    //   1156: astore 6
    //   1158: aconst_null
    //   1159: astore 4
    //   1161: aconst_null
    //   1162: astore 7
    //   1164: goto -838 -> 326
    //   1167: goto -1157 -> 10
    //   1170: astore 10
    //   1172: aload 16
    //   1174: astore 4
    //   1176: goto -801 -> 375
    //   1179: astore 17
    //   1181: aload 17
    //   1183: astore 18
    //   1185: aconst_null
    //   1186: astore 16
    //   1188: aconst_null
    //   1189: astore 13
    //   1191: aconst_null
    //   1192: astore 12
    //   1194: aconst_null
    //   1195: astore 11
    //   1197: goto -545 -> 652
    //   1200: astore 14
    //   1202: aload 14
    //   1204: astore 15
    //   1206: aconst_null
    //   1207: astore 16
    //   1209: aconst_null
    //   1210: astore 13
    //   1212: aconst_null
    //   1213: astore 12
    //   1215: aconst_null
    //   1216: astore 11
    //   1218: goto -502 -> 716
    //
    // Exception table:
    //   from	to	target	type
    //   12	97	97	java/lang/Exception
    //   375	426	97	java/lang/Exception
    //   452	499	97	java/lang/Exception
    //   236	314	320	com/avast/android/generic/internet/b/a
    //   433	452	320	com/avast/android/generic/internet/b/a
    //   236	314	361	finally
    //   326	361	361	finally
    //   433	452	361	finally
    //   520	554	554	com/avast/android/generic/internet/b/a
    //   133	159	570	com/avast/android/generic/internet/b/b
    //   133	159	760	finally
    //   163	170	777	finally
    //   174	232	795	finally
    //   502	520	795	finally
    //   520	554	814	finally
    //   163	170	834	java/lang/Exception
    //   174	232	856	java/lang/Exception
    //   502	520	856	java/lang/Exception
    //   236	314	879	java/lang/Exception
    //   433	452	879	java/lang/Exception
    //   520	554	903	java/lang/Exception
    //   163	170	927	com/avast/android/generic/internet/b/c
    //   174	232	949	com/avast/android/generic/internet/b/c
    //   502	520	949	com/avast/android/generic/internet/b/c
    //   236	314	972	com/avast/android/generic/internet/b/c
    //   433	452	972	com/avast/android/generic/internet/b/c
    //   520	554	996	com/avast/android/generic/internet/b/c
    //   163	170	1020	com/avast/android/generic/internet/b/b
    //   174	232	1042	com/avast/android/generic/internet/b/b
    //   502	520	1042	com/avast/android/generic/internet/b/b
    //   236	314	1065	com/avast/android/generic/internet/b/b
    //   433	452	1065	com/avast/android/generic/internet/b/b
    //   520	554	1089	com/avast/android/generic/internet/b/b
    //   133	159	1113	com/avast/android/generic/internet/b/a
    //   163	170	1134	com/avast/android/generic/internet/b/a
    //   174	232	1152	com/avast/android/generic/internet/b/a
    //   502	520	1152	com/avast/android/generic/internet/b/a
    //   588	760	1170	finally
    //   133	159	1179	com/avast/android/generic/internet/b/c
    //   133	159	1200	java/lang/Exception
  }

  public void a()
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      DownloadFragment.a(this.a).setText("0%");
      DownloadFragment.b(this.a).setText(this.a.getString(g.X));
      DownloadFragment.b(this.a).setTextColor(-1);
      DownloadFragment.c(this.a).setProgress(0);
      DownloadFragment.d(this.a).setBackgroundResource(c.b);
      DownloadFragment.d(this.a).setEnabled(false);
      DownloadFragment.e(this.a).setEnabled(false);
      this.b = false;
    }
  }

  public void a(Void paramVoid)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      a.a(this.a, new i(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.f
 * JD-Core Version:    0.6.2
 */