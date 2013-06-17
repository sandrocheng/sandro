package com.avg.toolkit.e.a;

import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;

public class h
{
  static final j[] a;
  static final int b;
  static final j[] c = arrayOfj2;
  static final int d = c.length;
  k e;

  static
  {
    j[] arrayOfj1 = new j[1];
    arrayOfj1[0] = new j(1015808, 15, 7562331041294894367L);
    a = arrayOfj1;
    b = a.length;
    j[] arrayOfj2 = new j[1];
    arrayOfj2[0] = new j(1015808, 15, -4627673907431431335L);
  }

  b a(b paramb)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Character.valueOf(paramb.a(14));
    arrayOfObject[1] = Character.valueOf(paramb.a(15));
    byte[] arrayOfByte = a.a.a.a.b.a.b(String.format("%c%c", arrayOfObject));
    int i = 0;
    int j = 0;
    if (j < 21)
    {
      if ((j != 0) && (j != 14) && (j != 15))
      {
        paramb.a(0x1F & arrayOfByte[i] ^ paramb.b(j * 5, 5), j * 5, 5);
        if (i != 15)
          break label113;
      }
      label113: for (i = 0; ; i++)
      {
        j++;
        break;
      }
    }
    return paramb;
  }

  v a(String paramString, v paramv)
  {
    v localv;
    if (this.e != null)
    {
      localv = this.e.a(paramString.charAt(0));
      if (localv == v.d)
        throw new a(4L);
      if (localv != v.a)
        throw new a(3758162951L);
    }
    else
    {
      localv = v.a;
    }
    return localv;
  }

  String a(String paramString)
  {
    return paramString.trim();
  }

  // ERROR //
  public void a(aa paramaa, String paramString, l paraml)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokevirtual 103	com/avg/toolkit/e/a/h:a	(Ljava/lang/String;)Ljava/lang/String;
    //   5: invokevirtual 106	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   8: astore 4
    //   10: getstatic 111	com/avg/toolkit/e/a/o:a	Lcom/avg/toolkit/e/a/o;
    //   13: pop
    //   14: iconst_1
    //   15: anewarray 51	java/lang/String
    //   18: dup
    //   19: iconst_0
    //   20: aload 4
    //   22: aastore
    //   23: astore 6
    //   25: aload 6
    //   27: iconst_0
    //   28: invokestatic 116	com/avg/toolkit/e/a/e:a	([Ljava/lang/String;Z)Lcom/avg/toolkit/e/a/o;
    //   31: astore 7
    //   33: aload 6
    //   35: iconst_0
    //   36: aaload
    //   37: astore 8
    //   39: aload 7
    //   41: getstatic 111	com/avg/toolkit/e/a/o:a	Lcom/avg/toolkit/e/a/o;
    //   44: if_acmpne +14 -> 58
    //   47: new 84	com/avg/toolkit/e/a/a
    //   50: dup
    //   51: ldc2_w 117
    //   54: invokespecial 89	com/avg/toolkit/e/a/a:<init>	(J)V
    //   57: athrow
    //   58: aload 7
    //   60: getstatic 120	com/avg/toolkit/e/a/o:b	Lcom/avg/toolkit/e/a/o;
    //   63: if_acmpeq +11 -> 74
    //   66: aload 7
    //   68: getstatic 122	com/avg/toolkit/e/a/o:c	Lcom/avg/toolkit/e/a/o;
    //   71: if_acmpne +4 -> 75
    //   74: return
    //   75: aload 8
    //   77: invokevirtual 126	java/lang/String:length	()I
    //   80: bipush 26
    //   82: if_icmpge +14 -> 96
    //   85: new 84	com/avg/toolkit/e/a/a
    //   88: dup
    //   89: ldc2_w 127
    //   92: invokespecial 89	com/avg/toolkit/e/a/a:<init>	(J)V
    //   95: athrow
    //   96: aload 7
    //   98: aload 8
    //   100: invokestatic 131	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;
    //   103: astore 9
    //   105: aload_1
    //   106: getfield 136	com/avg/toolkit/e/a/aa:b	Lcom/avg/toolkit/e/a/x;
    //   109: aload 9
    //   111: putfield 142	com/avg/toolkit/e/a/x:p	Ljava/lang/String;
    //   114: aload_1
    //   115: getstatic 147	com/avg/toolkit/e/a/w:a	Lcom/avg/toolkit/e/a/w;
    //   118: putfield 149	com/avg/toolkit/e/a/aa:c	Lcom/avg/toolkit/e/a/w;
    //   121: aload_1
    //   122: getstatic 147	com/avg/toolkit/e/a/w:a	Lcom/avg/toolkit/e/a/w;
    //   125: putfield 151	com/avg/toolkit/e/a/aa:d	Lcom/avg/toolkit/e/a/w;
    //   128: ldc 153
    //   130: astore 10
    //   132: ldc 153
    //   134: astore 11
    //   136: ldc 153
    //   138: astore 12
    //   140: ldc 153
    //   142: astore 13
    //   144: aload 7
    //   146: getstatic 155	com/avg/toolkit/e/a/o:d	Lcom/avg/toolkit/e/a/o;
    //   149: if_acmpeq +11 -> 160
    //   152: aload 7
    //   154: getstatic 157	com/avg/toolkit/e/a/o:e	Lcom/avg/toolkit/e/a/o;
    //   157: if_acmpne +334 -> 491
    //   160: aload 8
    //   162: invokevirtual 126	java/lang/String:length	()I
    //   165: istore 14
    //   167: aload 8
    //   169: iload 14
    //   171: iconst_5
    //   172: isub
    //   173: invokevirtual 72	java/lang/String:charAt	(I)C
    //   176: bipush 45
    //   178: if_icmpne +202 -> 380
    //   181: iload 14
    //   183: bipush 36
    //   185: if_icmplt +195 -> 380
    //   188: iconst_1
    //   189: anewarray 51	java/lang/String
    //   192: dup
    //   193: iconst_0
    //   194: ldc 153
    //   196: aastore
    //   197: astore 43
    //   199: aload 7
    //   201: aload 8
    //   203: ldc 153
    //   205: aload 43
    //   207: invokestatic 160	com/avg/toolkit/e/a/e:b	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   210: aload 43
    //   212: iconst_0
    //   213: aaload
    //   214: astore 13
    //   216: iconst_2
    //   217: anewarray 51	java/lang/String
    //   220: dup
    //   221: iconst_0
    //   222: aload 8
    //   224: aastore
    //   225: dup
    //   226: iconst_1
    //   227: ldc 153
    //   229: aastore
    //   230: astore 44
    //   232: aload 7
    //   234: aload 8
    //   236: ldc 153
    //   238: aload 44
    //   240: invokestatic 162	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   243: aload 44
    //   245: iconst_0
    //   246: aaload
    //   247: astore 11
    //   249: aload 44
    //   251: iconst_1
    //   252: aaload
    //   253: astore 12
    //   255: aload 13
    //   257: astore 10
    //   259: ldc 153
    //   261: astore 15
    //   263: aload 11
    //   265: astore 16
    //   267: aload 10
    //   269: astore 17
    //   271: aload 8
    //   273: astore 18
    //   275: aload 15
    //   277: astore 19
    //   279: aload 12
    //   281: astore 20
    //   283: getstatic 91	com/avg/toolkit/e/a/v:a	Lcom/avg/toolkit/e/a/v;
    //   286: astore 21
    //   288: aload_3
    //   289: getfield 165	com/avg/toolkit/e/a/l:a	Lcom/avg/toolkit/e/a/v;
    //   292: getstatic 82	com/avg/toolkit/e/a/v:d	Lcom/avg/toolkit/e/a/v;
    //   295: if_acmpeq +9 -> 304
    //   298: aload_3
    //   299: getfield 165	com/avg/toolkit/e/a/l:a	Lcom/avg/toolkit/e/a/v;
    //   302: astore 21
    //   304: aload 7
    //   306: getstatic 155	com/avg/toolkit/e/a/o:d	Lcom/avg/toolkit/e/a/o;
    //   309: if_acmpeq +19 -> 328
    //   312: aload 7
    //   314: getstatic 157	com/avg/toolkit/e/a/o:e	Lcom/avg/toolkit/e/a/o;
    //   317: if_acmpeq +11 -> 328
    //   320: aload 7
    //   322: getstatic 168	com/avg/toolkit/e/a/o:f	Lcom/avg/toolkit/e/a/o;
    //   325: if_acmpne +412 -> 737
    //   328: aload 20
    //   330: invokevirtual 126	java/lang/String:length	()I
    //   333: iconst_4
    //   334: if_icmpne +12 -> 346
    //   337: aload 13
    //   339: invokevirtual 126	java/lang/String:length	()I
    //   342: iconst_4
    //   343: if_icmpeq +394 -> 737
    //   346: new 84	com/avg/toolkit/e/a/a
    //   349: dup
    //   350: lconst_1
    //   351: invokespecial 89	com/avg/toolkit/e/a/a:<init>	(J)V
    //   354: athrow
    //   355: astore 22
    //   357: aload 22
    //   359: getfield 171	com/avg/toolkit/e/a/a:a	J
    //   362: ldc2_w 92
    //   365: lcmp
    //   366: ifne +617 -> 983
    //   369: new 84	com/avg/toolkit/e/a/a
    //   372: dup
    //   373: ldc2_w 172
    //   376: invokespecial 89	com/avg/toolkit/e/a/a:<init>	(J)V
    //   379: athrow
    //   380: aload 8
    //   382: iload 14
    //   384: bipush 6
    //   386: isub
    //   387: invokevirtual 72	java/lang/String:charAt	(I)C
    //   390: bipush 45
    //   392: if_icmpne +56 -> 448
    //   395: iload 14
    //   397: bipush 31
    //   399: if_icmplt +49 -> 448
    //   402: iconst_2
    //   403: anewarray 51	java/lang/String
    //   406: dup
    //   407: iconst_0
    //   408: aload 8
    //   410: aastore
    //   411: dup
    //   412: iconst_1
    //   413: ldc 153
    //   415: aastore
    //   416: astore 42
    //   418: aload 7
    //   420: aload 8
    //   422: ldc 153
    //   424: aload 42
    //   426: invokestatic 162	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   429: aload 42
    //   431: iconst_0
    //   432: aaload
    //   433: astore 8
    //   435: aload 42
    //   437: iconst_1
    //   438: aaload
    //   439: astore 10
    //   441: ldc 153
    //   443: astore 15
    //   445: goto -182 -> 263
    //   448: aload 8
    //   450: iload 14
    //   452: iconst_2
    //   453: isub
    //   454: invokevirtual 72	java/lang/String:charAt	(I)C
    //   457: bipush 45
    //   459: if_icmpne +21 -> 480
    //   462: iload 14
    //   464: bipush 27
    //   466: if_icmplt +14 -> 480
    //   469: aload 8
    //   471: astore 15
    //   473: ldc 153
    //   475: astore 8
    //   477: goto -214 -> 263
    //   480: new 84	com/avg/toolkit/e/a/a
    //   483: dup
    //   484: ldc2_w 127
    //   487: invokespecial 89	com/avg/toolkit/e/a/a:<init>	(J)V
    //   490: athrow
    //   491: aload 7
    //   493: getstatic 168	com/avg/toolkit/e/a/o:f	Lcom/avg/toolkit/e/a/o;
    //   496: if_acmpne +725 -> 1221
    //   499: aload 8
    //   501: invokevirtual 126	java/lang/String:length	()I
    //   504: lookupswitch	default:+36->540, 26:+210->714, 31:+148->652, 35:+47->551
    //   541: nop
    //   542: bastore
    //   543: dup
    //   544: ldc2_w 127
    //   547: invokespecial 89	com/avg/toolkit/e/a/a:<init>	(J)V
    //   550: athrow
    //   551: iconst_2
    //   552: anewarray 51	java/lang/String
    //   555: dup
    //   556: iconst_0
    //   557: aload 8
    //   559: aastore
    //   560: dup
    //   561: iconst_1
    //   562: ldc 153
    //   564: aastore
    //   565: astore 48
    //   567: aload 7
    //   569: aload 8
    //   571: ldc 153
    //   573: aload 48
    //   575: invokestatic 160	com/avg/toolkit/e/a/e:b	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   578: aload 48
    //   580: iconst_0
    //   581: aaload
    //   582: astore 49
    //   584: aload 48
    //   586: iconst_1
    //   587: aaload
    //   588: astore 13
    //   590: iconst_2
    //   591: anewarray 51	java/lang/String
    //   594: dup
    //   595: iconst_0
    //   596: aload 49
    //   598: aastore
    //   599: dup
    //   600: iconst_1
    //   601: ldc 153
    //   603: aastore
    //   604: astore 50
    //   606: aload 7
    //   608: aload 49
    //   610: ldc 153
    //   612: aload 50
    //   614: invokestatic 162	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   617: aload 50
    //   619: iconst_0
    //   620: aaload
    //   621: astore 51
    //   623: aload 50
    //   625: iconst_1
    //   626: aaload
    //   627: astore 52
    //   629: aload 51
    //   631: astore 16
    //   633: aload 13
    //   635: astore 17
    //   637: aload 49
    //   639: astore 18
    //   641: ldc 153
    //   643: astore 19
    //   645: aload 52
    //   647: astore 20
    //   649: goto -366 -> 283
    //   652: iconst_2
    //   653: anewarray 51	java/lang/String
    //   656: dup
    //   657: iconst_0
    //   658: aload 8
    //   660: aastore
    //   661: dup
    //   662: iconst_1
    //   663: ldc 153
    //   665: aastore
    //   666: astore 45
    //   668: aload 7
    //   670: aload 8
    //   672: ldc 153
    //   674: aload 45
    //   676: invokestatic 162	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   679: aload 45
    //   681: iconst_0
    //   682: aaload
    //   683: astore 46
    //   685: aload 45
    //   687: iconst_1
    //   688: aaload
    //   689: astore 47
    //   691: aload 11
    //   693: astore 16
    //   695: aload 47
    //   697: astore 17
    //   699: aload 46
    //   701: astore 18
    //   703: ldc 153
    //   705: astore 19
    //   707: aload 12
    //   709: astore 20
    //   711: goto -428 -> 283
    //   714: aload 11
    //   716: astore 16
    //   718: aload 10
    //   720: astore 17
    //   722: ldc 153
    //   724: astore 18
    //   726: aload 8
    //   728: astore 19
    //   730: aload 12
    //   732: astore 20
    //   734: goto -451 -> 283
    //   737: aload_0
    //   738: aload 16
    //   740: aload 21
    //   742: invokevirtual 175	com/avg/toolkit/e/a/h:a	(Ljava/lang/String;Lcom/avg/toolkit/e/a/v;)Lcom/avg/toolkit/e/a/v;
    //   745: astore 31
    //   747: aload_0
    //   748: aload_1
    //   749: getfield 136	com/avg/toolkit/e/a/aa:b	Lcom/avg/toolkit/e/a/x;
    //   752: aload 16
    //   754: invokevirtual 178	com/avg/toolkit/e/a/h:a	(Lcom/avg/toolkit/e/a/x;Ljava/lang/String;)V
    //   757: aload 7
    //   759: aload 16
    //   761: invokestatic 131	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;
    //   764: pop
    //   765: aload 7
    //   767: aload 20
    //   769: invokestatic 131	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;
    //   772: pop
    //   773: aload 7
    //   775: aload 13
    //   777: invokestatic 131	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;
    //   780: pop
    //   781: aload 16
    //   783: invokestatic 181	com/avg/toolkit/e/a/z:a	(Ljava/lang/String;)Ljava/lang/String;
    //   786: astore 35
    //   788: aload 7
    //   790: aload 20
    //   792: invokestatic 186	com/avg/toolkit/e/a/d:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)I
    //   795: istore 36
    //   797: aload 7
    //   799: aload 13
    //   801: invokestatic 186	com/avg/toolkit/e/a/d:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)I
    //   804: istore 37
    //   806: aload_1
    //   807: getfield 136	com/avg/toolkit/e/a/aa:b	Lcom/avg/toolkit/e/a/x;
    //   810: iload 36
    //   812: putfield 189	com/avg/toolkit/e/a/x:o	I
    //   815: aload_1
    //   816: getstatic 190	com/avg/toolkit/e/a/w:c	Lcom/avg/toolkit/e/a/w;
    //   819: putfield 149	com/avg/toolkit/e/a/aa:c	Lcom/avg/toolkit/e/a/w;
    //   822: iconst_0
    //   823: istore 41
    //   825: iload 41
    //   827: getstatic 27	com/avg/toolkit/e/a/h:b	I
    //   830: if_icmpge +53 -> 883
    //   833: aload_0
    //   834: aload 35
    //   836: iload 36
    //   838: getstatic 25	com/avg/toolkit/e/a/h:a	[Lcom/avg/toolkit/e/a/j;
    //   841: iload 41
    //   843: aaload
    //   844: getfield 192	com/avg/toolkit/e/a/j:a	I
    //   847: getstatic 25	com/avg/toolkit/e/a/h:a	[Lcom/avg/toolkit/e/a/j;
    //   850: iload 41
    //   852: aaload
    //   853: getfield 193	com/avg/toolkit/e/a/j:b	I
    //   856: getstatic 25	com/avg/toolkit/e/a/h:a	[Lcom/avg/toolkit/e/a/j;
    //   859: iload 41
    //   861: aaload
    //   862: getfield 195	com/avg/toolkit/e/a/j:c	J
    //   865: invokevirtual 198	com/avg/toolkit/e/a/h:a	(Ljava/lang/String;IIIJ)V
    //   868: iload 41
    //   870: ifne +374 -> 1244
    //   873: aload_1
    //   874: getstatic 199	com/avg/toolkit/e/a/w:d	Lcom/avg/toolkit/e/a/w;
    //   877: putfield 149	com/avg/toolkit/e/a/aa:c	Lcom/avg/toolkit/e/a/w;
    //   880: goto +364 -> 1244
    //   883: aload_1
    //   884: getstatic 201	com/avg/toolkit/e/a/w:b	Lcom/avg/toolkit/e/a/w;
    //   887: putfield 149	com/avg/toolkit/e/a/aa:c	Lcom/avg/toolkit/e/a/w;
    //   890: aload_1
    //   891: getstatic 190	com/avg/toolkit/e/a/w:c	Lcom/avg/toolkit/e/a/w;
    //   894: putfield 151	com/avg/toolkit/e/a/aa:d	Lcom/avg/toolkit/e/a/w;
    //   897: iconst_0
    //   898: istore 40
    //   900: iload 40
    //   902: getstatic 33	com/avg/toolkit/e/a/h:d	I
    //   905: if_icmpge +53 -> 958
    //   908: aload_0
    //   909: aload 35
    //   911: iload 37
    //   913: getstatic 31	com/avg/toolkit/e/a/h:c	[Lcom/avg/toolkit/e/a/j;
    //   916: iload 40
    //   918: aaload
    //   919: getfield 192	com/avg/toolkit/e/a/j:a	I
    //   922: getstatic 31	com/avg/toolkit/e/a/h:c	[Lcom/avg/toolkit/e/a/j;
    //   925: iload 40
    //   927: aaload
    //   928: getfield 193	com/avg/toolkit/e/a/j:b	I
    //   931: getstatic 31	com/avg/toolkit/e/a/h:c	[Lcom/avg/toolkit/e/a/j;
    //   934: iload 40
    //   936: aaload
    //   937: getfield 195	com/avg/toolkit/e/a/j:c	J
    //   940: invokevirtual 198	com/avg/toolkit/e/a/h:a	(Ljava/lang/String;IIIJ)V
    //   943: iload 40
    //   945: ifne +305 -> 1250
    //   948: aload_1
    //   949: getstatic 199	com/avg/toolkit/e/a/w:d	Lcom/avg/toolkit/e/a/w;
    //   952: putfield 151	com/avg/toolkit/e/a/aa:d	Lcom/avg/toolkit/e/a/w;
    //   955: goto +295 -> 1250
    //   958: aload_1
    //   959: getstatic 201	com/avg/toolkit/e/a/w:b	Lcom/avg/toolkit/e/a/w;
    //   962: putfield 151	com/avg/toolkit/e/a/aa:d	Lcom/avg/toolkit/e/a/w;
    //   965: aload_1
    //   966: aload 16
    //   968: putfield 203	com/avg/toolkit/e/a/aa:a	Ljava/lang/String;
    //   971: goto -897 -> 74
    //   974: astore 22
    //   976: aload 31
    //   978: astore 21
    //   980: goto -623 -> 357
    //   983: aload 17
    //   985: invokevirtual 126	java/lang/String:length	()I
    //   988: iconst_4
    //   989: if_icmpeq +37 -> 1026
    //   992: new 84	com/avg/toolkit/e/a/a
    //   995: dup
    //   996: lconst_1
    //   997: invokespecial 89	com/avg/toolkit/e/a/a:<init>	(J)V
    //   1000: athrow
    //   1001: astore 23
    //   1003: aload 23
    //   1005: getfield 171	com/avg/toolkit/e/a/a:a	J
    //   1008: ldc2_w 92
    //   1011: lcmp
    //   1012: ifne +166 -> 1178
    //   1015: new 84	com/avg/toolkit/e/a/a
    //   1018: dup
    //   1019: ldc2_w 172
    //   1022: invokespecial 89	com/avg/toolkit/e/a/a:<init>	(J)V
    //   1025: athrow
    //   1026: aload_0
    //   1027: aload 18
    //   1029: aload 21
    //   1031: invokevirtual 175	com/avg/toolkit/e/a/h:a	(Ljava/lang/String;Lcom/avg/toolkit/e/a/v;)Lcom/avg/toolkit/e/a/v;
    //   1034: astore 25
    //   1036: aload_0
    //   1037: aload_1
    //   1038: getfield 136	com/avg/toolkit/e/a/aa:b	Lcom/avg/toolkit/e/a/x;
    //   1041: aload 18
    //   1043: invokevirtual 178	com/avg/toolkit/e/a/h:a	(Lcom/avg/toolkit/e/a/x;Ljava/lang/String;)V
    //   1046: aload 7
    //   1048: aload 18
    //   1050: invokestatic 131	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;
    //   1053: astore 26
    //   1055: aload 7
    //   1057: aload 7
    //   1059: aload 17
    //   1061: invokestatic 131	com/avg/toolkit/e/a/e:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;
    //   1064: invokestatic 186	com/avg/toolkit/e/a/d:a	(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)I
    //   1067: istore 27
    //   1069: aload_1
    //   1070: getfield 136	com/avg/toolkit/e/a/aa:b	Lcom/avg/toolkit/e/a/x;
    //   1073: iload 27
    //   1075: putfield 189	com/avg/toolkit/e/a/x:o	I
    //   1078: aload 26
    //   1080: invokestatic 181	com/avg/toolkit/e/a/z:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1083: astore 28
    //   1085: aload_1
    //   1086: getstatic 190	com/avg/toolkit/e/a/w:c	Lcom/avg/toolkit/e/a/w;
    //   1089: putfield 149	com/avg/toolkit/e/a/aa:c	Lcom/avg/toolkit/e/a/w;
    //   1092: iconst_0
    //   1093: istore 30
    //   1095: iload 30
    //   1097: getstatic 27	com/avg/toolkit/e/a/h:b	I
    //   1100: if_icmpge +53 -> 1153
    //   1103: aload_0
    //   1104: aload 28
    //   1106: iload 27
    //   1108: getstatic 25	com/avg/toolkit/e/a/h:a	[Lcom/avg/toolkit/e/a/j;
    //   1111: iload 30
    //   1113: aaload
    //   1114: getfield 192	com/avg/toolkit/e/a/j:a	I
    //   1117: getstatic 25	com/avg/toolkit/e/a/h:a	[Lcom/avg/toolkit/e/a/j;
    //   1120: iload 30
    //   1122: aaload
    //   1123: getfield 193	com/avg/toolkit/e/a/j:b	I
    //   1126: getstatic 25	com/avg/toolkit/e/a/h:a	[Lcom/avg/toolkit/e/a/j;
    //   1129: iload 30
    //   1131: aaload
    //   1132: getfield 195	com/avg/toolkit/e/a/j:c	J
    //   1135: invokevirtual 198	com/avg/toolkit/e/a/h:a	(Ljava/lang/String;IIIJ)V
    //   1138: iload 30
    //   1140: ifne +116 -> 1256
    //   1143: aload_1
    //   1144: getstatic 199	com/avg/toolkit/e/a/w:d	Lcom/avg/toolkit/e/a/w;
    //   1147: putfield 149	com/avg/toolkit/e/a/aa:c	Lcom/avg/toolkit/e/a/w;
    //   1150: goto +106 -> 1256
    //   1153: aload_1
    //   1154: getstatic 201	com/avg/toolkit/e/a/w:b	Lcom/avg/toolkit/e/a/w;
    //   1157: putfield 149	com/avg/toolkit/e/a/aa:c	Lcom/avg/toolkit/e/a/w;
    //   1160: aload_1
    //   1161: aload 18
    //   1163: putfield 203	com/avg/toolkit/e/a/aa:a	Ljava/lang/String;
    //   1166: goto -1092 -> 74
    //   1169: astore 23
    //   1171: aload 25
    //   1173: astore 21
    //   1175: goto -172 -> 1003
    //   1178: aload_0
    //   1179: aload 19
    //   1181: aload 21
    //   1183: invokevirtual 175	com/avg/toolkit/e/a/h:a	(Ljava/lang/String;Lcom/avg/toolkit/e/a/v;)Lcom/avg/toolkit/e/a/v;
    //   1186: pop
    //   1187: aload_0
    //   1188: aload_1
    //   1189: getfield 136	com/avg/toolkit/e/a/aa:b	Lcom/avg/toolkit/e/a/x;
    //   1192: aload 19
    //   1194: invokevirtual 178	com/avg/toolkit/e/a/h:a	(Lcom/avg/toolkit/e/a/x;Ljava/lang/String;)V
    //   1197: aload_1
    //   1198: aload 19
    //   1200: putfield 203	com/avg/toolkit/e/a/aa:a	Ljava/lang/String;
    //   1203: goto -1129 -> 74
    //   1206: astore 29
    //   1208: goto -48 -> 1160
    //   1211: astore 39
    //   1213: goto -248 -> 965
    //   1216: astore 38
    //   1218: goto -328 -> 890
    //   1221: aload 11
    //   1223: astore 16
    //   1225: aload 10
    //   1227: astore 17
    //   1229: ldc 153
    //   1231: astore 18
    //   1233: ldc 153
    //   1235: astore 19
    //   1237: aload 12
    //   1239: astore 20
    //   1241: goto -958 -> 283
    //   1244: iinc 41 1
    //   1247: goto -422 -> 825
    //   1250: iinc 40 1
    //   1253: goto -353 -> 900
    //   1256: iinc 30 1
    //   1259: goto -164 -> 1095
    //
    // Exception table:
    //   from	to	target	type
    //   304	355	355	com/avg/toolkit/e/a/a
    //   737	747	355	com/avg/toolkit/e/a/a
    //   747	815	974	com/avg/toolkit/e/a/a
    //   815	890	974	com/avg/toolkit/e/a/a
    //   890	965	974	com/avg/toolkit/e/a/a
    //   965	971	974	com/avg/toolkit/e/a/a
    //   983	1001	1001	com/avg/toolkit/e/a/a
    //   1026	1036	1001	com/avg/toolkit/e/a/a
    //   1036	1085	1169	com/avg/toolkit/e/a/a
    //   1085	1160	1169	com/avg/toolkit/e/a/a
    //   1160	1166	1169	com/avg/toolkit/e/a/a
    //   1085	1160	1206	java/lang/Exception
    //   890	965	1211	java/lang/Exception
    //   815	890	1216	java/lang/Exception
  }

  void a(x paramx, ab paramab, b paramb)
  {
    b localb = new b(paramx.a);
    x localx = new x();
    localx.a(paramx);
    localb.a(paramb);
    a(localb);
    int i = localb.b(0, 2);
    if ((i != 0) && (i != 1))
      throw new a(999L);
    localx.b = Byte.valueOf((byte)i);
    int j = localb.b(2, 3);
    if (j >= g.e)
      throw new a(999L);
    localx.d = g.d[j].a;
    localx.j = g.d[j].b;
    localx.m = g.d[j].c;
    paramab.c = true;
    int k = localb.b(5, 10);
    if (k > 670)
      throw new a(999L);
    label239: u localu;
    if (k <= 100)
    {
      localx.s = k;
      paramab.f = true;
      if (localx.d != s.b)
        break label732;
      localx.g = r.a;
      localx.h = 0;
      localx.i = 9223372036854775807L;
      paramab.d = true;
      localx.f = localb.b(28, 6);
      switch (localb.b(34, 9))
      {
      default:
        localu = u.a;
      case 251:
      case 256:
      case 261:
      case 301:
      case 302:
      case 303:
      case 276:
      case 305:
      case 308:
      case 309:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      }
    }
    while (true)
    {
      paramab.e = true;
      localx.a(localu);
      localx.l = localb.b(43, 10);
      paramab.b = true;
      int m = localb.b(53, 7);
      localx.k.clear();
      if (m != 0)
        localx.k.add(Integer.valueOf(m - 1));
      int n = localb.b(60, 7);
      if (n != 0)
        localx.k.add(Integer.valueOf(n - 1));
      int i1 = localb.b(67, 7);
      if (i1 != 0)
        localx.k.add(Integer.valueOf(i1 - 1));
      localx.t = localb.b(74, 28);
      int i2 = localb.b(102, 2);
      localx.n = p.values()[i2];
      localx.a(paramx);
      return;
      if ((k > 100) && (k <= 280))
      {
        localx.s = (100 + 5 * (k - 100));
        break;
      }
      if ((k > 280) && (k <= 460))
      {
        localx.s = (1000 + 50 * (k - 280));
        break;
      }
      if ((k > 460) && (k <= 640))
      {
        localx.s = (10000 + 500 * (k - 460));
        break;
      }
      if ((k <= 640) || (k > 670))
        break;
      localx.s = (100000 + 5000 * (k - 640));
      break;
      label732: if (localb.b(15, 1) == 0)
      {
        localx.g = r.b;
        if (localx.b.byteValue() == 0)
        {
          localx.h = localb.b(16, 7);
          localx.i = 9223372036854775807L;
          break label239;
        }
        if (localx.b.byteValue() != 1)
          break label239;
        localx.h = localb.b(16, 7);
        if (localb.b(23, 1) == 1);
        for (int i3 = 1; ; i3 = 0)
        {
          if (i3 != 0)
            localx.h = (135 + 15 * localx.h);
          localx.i = 9223372036854775807L;
          break;
        }
      }
      localx.g = r.c;
      long l1 = 864000000000L * localb.b(16, 12);
      if (localx.a == o.f);
      for (long l2 = 129067776000000000L; ; l2 = 128436192000000000L)
      {
        localx.i = (l2 + l1);
        localx.h = 0;
        break;
      }
      localu = u.b;
      continue;
      localu = u.c;
      continue;
      localu = u.d;
      continue;
      localu = u.e;
      continue;
      localu = u.f;
      continue;
      localu = u.g;
      continue;
      localu = u.h;
      continue;
      localu = u.i;
      continue;
      localu = u.j;
      continue;
      localu = u.k;
      continue;
      localu = u.l;
      continue;
      localu = u.m;
      continue;
      localu = u.n;
      continue;
      localu = u.o;
      continue;
      localu = u.p;
      continue;
      localu = u.q;
    }
  }

  void a(x paramx, String paramString)
  {
    ab localab = new ab();
    paramx.a = e.a(new String[] { paramString }, false);
    String[] arrayOfString1 = { paramString };
    paramx.a = e.a(arrayOfString1, true);
    String str1 = arrayOfString1[0];
    if (paramx.a == o.a)
      throw new a(3L);
    localab.a = m.a(paramx.a, paramx.b.byteValue());
    String str2;
    String str3;
    switch (i.a[paramx.a.ordinal()])
    {
    default:
      str2 = e.a(paramx.a, str1);
      str3 = e.a(paramx.a, paramString);
      switch (i.a[paramx.a.ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      }
      break;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      paramx.a();
      paramx.q = str3;
      return;
      String[] arrayOfString5 = { str1 };
      paramx.c = e.b(arrayOfString5);
      str1 = arrayOfString5[0];
      break;
      String[] arrayOfString2 = { str1 };
      paramx.c = e.a(arrayOfString2, 1);
      str1 = arrayOfString2[0];
      break;
      b localb = new b(paramx.a);
      int i;
      String str4;
      if ((paramx.a == o.d) || (paramx.a == o.e))
      {
        if (str2.length() != 26)
          throw new a(3L);
        i = 0;
        str4 = str2;
      }
      for (int j = 0; ; j++)
      {
        if (TextUtils.isEmpty(str4))
          break label449;
        if ((j + i) % 5 == 0)
        {
          String[] arrayOfString3 = { str4 };
          if (e.a(arrayOfString3) != '-')
          {
            throw new a(3L);
            if (str2.length() != 25)
              throw new a(3L);
            i = 1;
            break;
          }
          str4 = arrayOfString3[0];
        }
        String[] arrayOfString4 = { str4 };
        char c1 = e.a(arrayOfString4);
        str4 = arrayOfString4[0];
        localb.a(e.a(paramx.a, c1));
      }
      label449: if (localb.a() != 105)
        throw new a(3L);
      a(paramx, localab, localb);
    }
  }

  void a(String paramString, int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    if ((paramInt2 & a(paramString, a(paramLong))[0] << paramInt3) != (paramInt1 & paramInt2))
      throw new a(3L);
  }

  public final byte[] a(long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    arrayOfByte[7] = ((byte)(int)(paramLong >>> 56));
    arrayOfByte[6] = ((byte)(int)(paramLong >>> 48));
    arrayOfByte[5] = ((byte)(int)(paramLong >>> 40));
    arrayOfByte[4] = ((byte)(int)(paramLong >>> 32));
    arrayOfByte[3] = ((byte)(int)(paramLong >>> 24));
    arrayOfByte[2] = ((byte)(int)(paramLong >>> 16));
    arrayOfByte[1] = ((byte)(int)(paramLong >>> 8));
    arrayOfByte[0] = ((byte)(int)(paramLong >>> 0));
    return arrayOfByte;
  }

  byte[] a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramArrayOfByte);
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte2 = localMessageDigest.digest();
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a("noalg");
        byte[] arrayOfByte1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.e.a.h
 * JD-Core Version:    0.6.2
 */