package com.avast.android.generic.app.account;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.widget.Button;
import com.avast.android.generic.internet.c.a.x;
import com.avast.android.generic.internet.c.g;
import com.avast.android.generic.internet.c.h;
import com.avast.android.generic.internet.c.i;
import com.avast.android.generic.z;

class j extends AsyncTask
{
  private Context b;

  private j(AccountFragment paramAccountFragment)
  {
  }

  private void a(int paramInt)
  {
    if (!isCancelled())
      AccountFragment.s(this.a).post(new k(this, paramInt));
  }

  private void a(g paramg)
  {
    h localh = paramg.a();
    if (localh == null)
      localh = h.h;
    switch (i.a[localh.ordinal()])
    {
    default:
      a(z.cx);
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      a(z.l);
      continue;
      a(z.ba);
      continue;
      a(z.Y);
      continue;
      a(z.bU);
    }
  }

  private void a(i parami)
  {
    x localx = parami.a();
    if (localx == null)
      localx = x.a;
    switch (i.b[localx.ordinal()])
    {
    default:
      AccountFragment localAccountFragment = this.a;
      int i = z.aM;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localx.name();
      a(localAccountFragment.getString(i, arrayOfObject));
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      return;
      a(z.ce);
      continue;
      a(z.s);
      continue;
      a(z.az);
      continue;
      a(z.ae);
    }
  }

  private void a(String paramString)
  {
    if (!isCancelled())
      AccountFragment.s(this.a).post(new l(this, paramString));
  }

  // ERROR //
  protected Boolean a(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/avast/android/generic/app/account/j:a	Lcom/avast/android/generic/app/account/AccountFragment;
    //   4: invokevirtual 149	com/avast/android/generic/app/account/AccountFragment:isAdded	()Z
    //   7: ifne +12 -> 19
    //   10: iconst_0
    //   11: invokestatic 155	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   14: astore 11
    //   16: aload 11
    //   18: areturn
    //   19: aload_1
    //   20: iconst_0
    //   21: aaload
    //   22: astore_2
    //   23: aload_1
    //   24: iconst_1
    //   25: aaload
    //   26: astore_3
    //   27: aload_1
    //   28: iconst_2
    //   29: aaload
    //   30: astore 4
    //   32: aload_1
    //   33: iconst_3
    //   34: aaload
    //   35: astore 5
    //   37: aload_1
    //   38: iconst_4
    //   39: aaload
    //   40: astore 6
    //   42: new 157	android/os/Bundle
    //   45: dup
    //   46: invokespecial 158	android/os/Bundle:<init>	()V
    //   49: astore 7
    //   51: aload 5
    //   53: invokestatic 164	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   56: ifne +12 -> 68
    //   59: aload 7
    //   61: ldc 166
    //   63: aload 5
    //   65: invokevirtual 170	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   68: aconst_null
    //   69: astore 8
    //   71: aload_0
    //   72: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   75: invokestatic 178	com/avast/android/generic/util/z:j	(Landroid/content/Context;)Z
    //   78: istore 30
    //   80: aconst_null
    //   81: astore 8
    //   83: iload 30
    //   85: ifeq +52 -> 137
    //   88: new 144	com/avast/android/generic/internet/c/m
    //   91: dup
    //   92: invokespecial 179	com/avast/android/generic/internet/c/m:<init>	()V
    //   95: athrow
    //   96: astore 27
    //   98: aconst_null
    //   99: astore 28
    //   101: ldc 181
    //   103: ldc 183
    //   105: aload 27
    //   107: invokestatic 188	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   110: pop
    //   111: aload_0
    //   112: getstatic 191	com/avast/android/generic/z:bP	I
    //   115: invokespecial 69	com/avast/android/generic/app/account/j:a	(I)V
    //   118: aload 28
    //   120: ifnull +8 -> 128
    //   123: aload 28
    //   125: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   128: iconst_0
    //   129: invokestatic 155	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   132: astore 11
    //   134: goto -118 -> 16
    //   137: aload_0
    //   138: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   141: invokestatic 197	com/avast/android/generic/util/z:a	(Landroid/content/Context;)Z
    //   144: istore 31
    //   146: aconst_null
    //   147: astore 8
    //   149: iload 31
    //   151: ifeq +62 -> 213
    //   154: aload_0
    //   155: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   158: sipush 4586
    //   161: invokestatic 200	com/avast/android/generic/util/z:a	(Landroid/content/Context;I)Z
    //   164: istore 51
    //   166: aconst_null
    //   167: astore 8
    //   169: iload 51
    //   171: ifne +42 -> 213
    //   174: new 142	com/avast/android/generic/internet/c/n
    //   177: dup
    //   178: invokespecial 201	com/avast/android/generic/internet/c/n:<init>	()V
    //   181: athrow
    //   182: astore 25
    //   184: ldc 181
    //   186: ldc 203
    //   188: aload 25
    //   190: invokestatic 188	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   193: pop
    //   194: aload_0
    //   195: aload 25
    //   197: invokespecial 205	com/avast/android/generic/app/account/j:a	(Lcom/avast/android/generic/internet/c/g;)V
    //   200: aload 8
    //   202: ifnull -74 -> 128
    //   205: aload 8
    //   207: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   210: goto -82 -> 128
    //   213: aload_0
    //   214: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   217: invokestatic 208	com/avast/android/generic/util/z:b	(Landroid/content/Context;)Ljava/lang/String;
    //   220: astore 32
    //   222: aconst_null
    //   223: astore 8
    //   225: aload 32
    //   227: ifnull +62 -> 289
    //   230: aload_0
    //   231: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   234: sipush 4586
    //   237: invokestatic 211	com/avast/android/generic/util/z:b	(Landroid/content/Context;I)Ljava/lang/String;
    //   240: astore 50
    //   242: aconst_null
    //   243: astore 8
    //   245: aload 50
    //   247: ifnonnull +42 -> 289
    //   250: new 140	com/avast/android/generic/internet/c/a
    //   253: dup
    //   254: invokespecial 212	com/avast/android/generic/internet/c/a:<init>	()V
    //   257: athrow
    //   258: astore 23
    //   260: ldc 181
    //   262: ldc 214
    //   264: aload 23
    //   266: invokestatic 188	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   269: pop
    //   270: aload_0
    //   271: aload 23
    //   273: invokespecial 205	com/avast/android/generic/app/account/j:a	(Lcom/avast/android/generic/internet/c/g;)V
    //   276: aload 8
    //   278: ifnull -150 -> 128
    //   281: aload 8
    //   283: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   286: goto -158 -> 128
    //   289: aload_0
    //   290: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   293: invokestatic 217	com/avast/android/generic/util/z:c	(Landroid/content/Context;)Z
    //   296: istore 33
    //   298: aconst_null
    //   299: astore 8
    //   301: iload 33
    //   303: ifeq +62 -> 365
    //   306: aload_0
    //   307: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   310: sipush 4586
    //   313: invokestatic 219	com/avast/android/generic/util/z:c	(Landroid/content/Context;I)Z
    //   316: istore 49
    //   318: aconst_null
    //   319: astore 8
    //   321: iload 49
    //   323: ifne +42 -> 365
    //   326: new 146	com/avast/android/generic/internet/c/j
    //   329: dup
    //   330: invokespecial 220	com/avast/android/generic/internet/c/j:<init>	()V
    //   333: athrow
    //   334: astore 21
    //   336: ldc 181
    //   338: ldc 222
    //   340: aload 21
    //   342: invokestatic 188	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   345: pop
    //   346: aload_0
    //   347: aload 21
    //   349: invokespecial 205	com/avast/android/generic/app/account/j:a	(Lcom/avast/android/generic/internet/c/g;)V
    //   352: aload 8
    //   354: ifnull -226 -> 128
    //   357: aload 8
    //   359: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   362: goto -234 -> 128
    //   365: new 193	com/avast/android/generic/internet/c/c
    //   368: dup
    //   369: aload_0
    //   370: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   373: aload 7
    //   375: invokespecial 225	com/avast/android/generic/internet/c/c:<init>	(Landroid/content/Context;Landroid/os/Bundle;)V
    //   378: astore 34
    //   380: aload 34
    //   382: aload_2
    //   383: aload_3
    //   384: aload 4
    //   386: iconst_0
    //   387: iconst_0
    //   388: iconst_0
    //   389: aload_0
    //   390: getfield 12	com/avast/android/generic/app/account/j:a	Lcom/avast/android/generic/app/account/AccountFragment;
    //   393: invokestatic 228	com/avast/android/generic/app/account/AccountFragment:c	(Lcom/avast/android/generic/app/account/AccountFragment;)Z
    //   396: aload 6
    //   398: invokevirtual 231	com/avast/android/generic/internet/c/c:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)Lcom/avast/android/generic/internet/c/e;
    //   401: astore 47
    //   403: aload_0
    //   404: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   407: ldc 233
    //   409: invokestatic 238	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   412: checkcast 233	com/avast/android/generic/ae
    //   415: aload_0
    //   416: getfield 172	com/avast/android/generic/app/account/j:b	Landroid/content/Context;
    //   419: aload_2
    //   420: aload 47
    //   422: getfield 243	com/avast/android/generic/internet/c/e:a	Ljava/lang/String;
    //   425: aload 47
    //   427: getfield 245	com/avast/android/generic/internet/c/e:b	Ljava/lang/String;
    //   430: aload 47
    //   432: getfield 247	com/avast/android/generic/internet/c/e:c	Ljava/lang/String;
    //   435: aload 47
    //   437: getfield 250	com/avast/android/generic/internet/c/e:d	Ljava/lang/String;
    //   440: aload 6
    //   442: invokevirtual 253	com/avast/android/generic/ae:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   445: iconst_1
    //   446: invokestatic 155	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   449: astore 48
    //   451: aload 34
    //   453: ifnull +8 -> 461
    //   456: aload 34
    //   458: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   461: aload 48
    //   463: astore 11
    //   465: goto -449 -> 16
    //   468: astore 19
    //   470: ldc 181
    //   472: ldc 255
    //   474: aload 19
    //   476: invokestatic 188	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   479: pop
    //   480: aload_0
    //   481: aload 19
    //   483: invokespecial 205	com/avast/android/generic/app/account/j:a	(Lcom/avast/android/generic/internet/c/g;)V
    //   486: aload 8
    //   488: ifnull -360 -> 128
    //   491: aload 8
    //   493: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   496: goto -368 -> 128
    //   499: astore 17
    //   501: ldc 181
    //   503: ldc_w 257
    //   506: aload 17
    //   508: invokestatic 188	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   511: pop
    //   512: aload_0
    //   513: aload 17
    //   515: invokespecial 259	com/avast/android/generic/app/account/j:a	(Lcom/avast/android/generic/internet/c/i;)V
    //   518: aload 8
    //   520: ifnull -392 -> 128
    //   523: aload 8
    //   525: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   528: goto -400 -> 128
    //   531: astore 15
    //   533: ldc 181
    //   535: ldc_w 261
    //   538: aload 15
    //   540: invokestatic 188	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   543: pop
    //   544: aload_0
    //   545: getstatic 191	com/avast/android/generic/z:bP	I
    //   548: invokespecial 69	com/avast/android/generic/app/account/j:a	(I)V
    //   551: aload 8
    //   553: ifnull -425 -> 128
    //   556: aload 8
    //   558: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   561: goto -433 -> 128
    //   564: astore 14
    //   566: aload_0
    //   567: getstatic 264	com/avast/android/generic/z:q	I
    //   570: invokespecial 69	com/avast/android/generic/app/account/j:a	(I)V
    //   573: aload 8
    //   575: ifnull -447 -> 128
    //   578: aload 8
    //   580: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   583: goto -455 -> 128
    //   586: astore 13
    //   588: aload_0
    //   589: getstatic 267	com/avast/android/generic/z:aS	I
    //   592: invokespecial 69	com/avast/android/generic/app/account/j:a	(I)V
    //   595: aload 8
    //   597: ifnull -469 -> 128
    //   600: aload 8
    //   602: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   605: goto -477 -> 128
    //   608: astore 12
    //   610: aload_0
    //   611: getstatic 270	com/avast/android/generic/z:D	I
    //   614: invokespecial 69	com/avast/android/generic/app/account/j:a	(I)V
    //   617: aload 8
    //   619: ifnull -491 -> 128
    //   622: aload 8
    //   624: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   627: goto -499 -> 128
    //   630: astore 10
    //   632: aload_0
    //   633: getstatic 273	com/avast/android/generic/z:aO	I
    //   636: invokespecial 69	com/avast/android/generic/app/account/j:a	(I)V
    //   639: aload 8
    //   641: ifnull -513 -> 128
    //   644: aload 8
    //   646: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   649: goto -521 -> 128
    //   652: astore 9
    //   654: aload 8
    //   656: ifnull +8 -> 664
    //   659: aload 8
    //   661: invokevirtual 195	com/avast/android/generic/internet/c/c:a	()V
    //   664: aload 9
    //   666: athrow
    //   667: astore 46
    //   669: aload 34
    //   671: astore 8
    //   673: aload 46
    //   675: astore 9
    //   677: goto -23 -> 654
    //   680: astore 9
    //   682: aload 28
    //   684: astore 8
    //   686: goto -32 -> 654
    //   689: astore 45
    //   691: aload 34
    //   693: astore 8
    //   695: goto -63 -> 632
    //   698: astore 44
    //   700: aload 34
    //   702: astore 8
    //   704: goto -94 -> 610
    //   707: astore 43
    //   709: aload 34
    //   711: astore 8
    //   713: goto -125 -> 588
    //   716: astore 42
    //   718: aload 34
    //   720: astore 8
    //   722: goto -156 -> 566
    //   725: astore 41
    //   727: aload 34
    //   729: astore 8
    //   731: aload 41
    //   733: astore 15
    //   735: goto -202 -> 533
    //   738: astore 40
    //   740: aload 34
    //   742: astore 8
    //   744: aload 40
    //   746: astore 17
    //   748: goto -247 -> 501
    //   751: astore 39
    //   753: aload 34
    //   755: astore 8
    //   757: aload 39
    //   759: astore 19
    //   761: goto -291 -> 470
    //   764: astore 38
    //   766: aload 34
    //   768: astore 8
    //   770: aload 38
    //   772: astore 21
    //   774: goto -438 -> 336
    //   777: astore 37
    //   779: aload 34
    //   781: astore 8
    //   783: aload 37
    //   785: astore 23
    //   787: goto -527 -> 260
    //   790: astore 36
    //   792: aload 34
    //   794: astore 8
    //   796: aload 36
    //   798: astore 25
    //   800: goto -616 -> 184
    //   803: astore 35
    //   805: aload 34
    //   807: astore 28
    //   809: aload 35
    //   811: astore 27
    //   813: goto -712 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   71	96	96	java/lang/InstantiationException
    //   137	182	96	java/lang/InstantiationException
    //   213	258	96	java/lang/InstantiationException
    //   289	334	96	java/lang/InstantiationException
    //   365	380	96	java/lang/InstantiationException
    //   71	96	182	com/avast/android/generic/internet/c/b
    //   137	182	182	com/avast/android/generic/internet/c/b
    //   213	258	182	com/avast/android/generic/internet/c/b
    //   289	334	182	com/avast/android/generic/internet/c/b
    //   365	380	182	com/avast/android/generic/internet/c/b
    //   71	96	258	com/avast/android/generic/internet/c/k
    //   137	182	258	com/avast/android/generic/internet/c/k
    //   213	258	258	com/avast/android/generic/internet/c/k
    //   289	334	258	com/avast/android/generic/internet/c/k
    //   365	380	258	com/avast/android/generic/internet/c/k
    //   71	96	334	com/avast/android/generic/internet/c/l
    //   137	182	334	com/avast/android/generic/internet/c/l
    //   213	258	334	com/avast/android/generic/internet/c/l
    //   289	334	334	com/avast/android/generic/internet/c/l
    //   365	380	334	com/avast/android/generic/internet/c/l
    //   71	96	468	com/avast/android/generic/internet/c/g
    //   137	182	468	com/avast/android/generic/internet/c/g
    //   213	258	468	com/avast/android/generic/internet/c/g
    //   289	334	468	com/avast/android/generic/internet/c/g
    //   365	380	468	com/avast/android/generic/internet/c/g
    //   71	96	499	com/avast/android/generic/internet/c/i
    //   137	182	499	com/avast/android/generic/internet/c/i
    //   213	258	499	com/avast/android/generic/internet/c/i
    //   289	334	499	com/avast/android/generic/internet/c/i
    //   365	380	499	com/avast/android/generic/internet/c/i
    //   71	96	531	java/io/IOException
    //   137	182	531	java/io/IOException
    //   213	258	531	java/io/IOException
    //   289	334	531	java/io/IOException
    //   365	380	531	java/io/IOException
    //   71	96	564	com/avast/android/generic/internet/c/a
    //   137	182	564	com/avast/android/generic/internet/c/a
    //   213	258	564	com/avast/android/generic/internet/c/a
    //   289	334	564	com/avast/android/generic/internet/c/a
    //   365	380	564	com/avast/android/generic/internet/c/a
    //   71	96	586	com/avast/android/generic/internet/c/n
    //   137	182	586	com/avast/android/generic/internet/c/n
    //   213	258	586	com/avast/android/generic/internet/c/n
    //   289	334	586	com/avast/android/generic/internet/c/n
    //   365	380	586	com/avast/android/generic/internet/c/n
    //   71	96	608	com/avast/android/generic/internet/c/m
    //   137	182	608	com/avast/android/generic/internet/c/m
    //   213	258	608	com/avast/android/generic/internet/c/m
    //   289	334	608	com/avast/android/generic/internet/c/m
    //   365	380	608	com/avast/android/generic/internet/c/m
    //   71	96	630	com/avast/android/generic/internet/c/j
    //   137	182	630	com/avast/android/generic/internet/c/j
    //   213	258	630	com/avast/android/generic/internet/c/j
    //   289	334	630	com/avast/android/generic/internet/c/j
    //   365	380	630	com/avast/android/generic/internet/c/j
    //   71	96	652	finally
    //   137	182	652	finally
    //   184	200	652	finally
    //   213	258	652	finally
    //   260	276	652	finally
    //   289	334	652	finally
    //   336	352	652	finally
    //   365	380	652	finally
    //   470	486	652	finally
    //   501	518	652	finally
    //   533	551	652	finally
    //   566	573	652	finally
    //   588	595	652	finally
    //   610	617	652	finally
    //   632	639	652	finally
    //   380	451	667	finally
    //   101	118	680	finally
    //   380	451	689	com/avast/android/generic/internet/c/j
    //   380	451	698	com/avast/android/generic/internet/c/m
    //   380	451	707	com/avast/android/generic/internet/c/n
    //   380	451	716	com/avast/android/generic/internet/c/a
    //   380	451	725	java/io/IOException
    //   380	451	738	com/avast/android/generic/internet/c/i
    //   380	451	751	com/avast/android/generic/internet/c/g
    //   380	451	764	com/avast/android/generic/internet/c/l
    //   380	451	777	com/avast/android/generic/internet/c/k
    //   380	451	790	com/avast/android/generic/internet/c/b
    //   380	451	803	java/lang/InstantiationException
  }

  protected void a(Boolean paramBoolean)
  {
    AccountFragment.r(this.a);
    if (this.a.isAdded())
      AccountFragment.q(this.a).setEnabled(true);
    AccountFragment.a(this.a, this.b, paramBoolean.booleanValue());
  }

  protected void onCancelled()
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      AccountFragment.q(this.a).setEnabled(true);
    }
  }

  protected void onPreExecute()
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      this.b = this.a.getActivity();
      AccountFragment.q(this.a).setEnabled(false);
      AccountFragment.a(this.a, this);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.j
 * JD-Core Version:    0.6.2
 */