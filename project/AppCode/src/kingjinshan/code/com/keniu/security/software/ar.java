package com.keniu.security.software;

import android.os.Handler;

final class ar extends Thread
{
  private Handler b;

  public ar(SoftwareManager2 paramSoftwareManager2, Handler paramHandler)
  {
    this.b = paramHandler;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   4: invokestatic 26	com/keniu/security/software/SoftwareManager2:h	(Lcom/keniu/security/software/SoftwareManager2;)I
    //   7: pop
    //   8: aload_0
    //   9: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   12: invokestatic 29	com/keniu/security/software/SoftwareManager2:i	(Lcom/keniu/security/software/SoftwareManager2;)I
    //   15: pop
    //   16: aload_0
    //   17: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   20: invokestatic 32	com/keniu/security/software/SoftwareManager2:j	(Lcom/keniu/security/software/SoftwareManager2;)I
    //   23: pop
    //   24: aload_0
    //   25: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   28: iconst_0
    //   29: invokestatic 35	com/keniu/security/software/SoftwareManager2:a	(Lcom/keniu/security/software/SoftwareManager2;I)I
    //   32: pop
    //   33: aload_0
    //   34: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   37: invokevirtual 39	com/keniu/security/software/SoftwareManager2:getPackageManager	()Landroid/content/pm/PackageManager;
    //   40: astore 5
    //   42: aload 5
    //   44: sipush 4160
    //   47: invokevirtual 45	android/content/pm/PackageManager:getInstalledPackages	(I)Ljava/util/List;
    //   50: astore 6
    //   52: aload 6
    //   54: invokeinterface 51 1 0
    //   59: astore 7
    //   61: aload 7
    //   63: invokeinterface 57 1 0
    //   68: ifeq +154 -> 222
    //   71: aload 7
    //   73: invokeinterface 61 1 0
    //   78: checkcast 63	android/content/pm/PackageInfo
    //   81: astore 46
    //   83: aload 46
    //   85: getfield 67	android/content/pm/PackageInfo:sharedUserId	Ljava/lang/String;
    //   88: invokestatic 73	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   91: ifne -30 -> 61
    //   94: aload 46
    //   96: getfield 67	android/content/pm/PackageInfo:sharedUserId	Ljava/lang/String;
    //   99: ldc 75
    //   101: invokevirtual 81	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   104: ifeq -43 -> 61
    //   107: aload 46
    //   109: getfield 85	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   112: astore 47
    //   114: aload 47
    //   116: ifnull -55 -> 61
    //   119: aload 47
    //   121: arraylength
    //   122: ifle +888 -> 1010
    //   125: aload 47
    //   127: iconst_0
    //   128: aaload
    //   129: astore 48
    //   131: new 87	java/io/ByteArrayInputStream
    //   134: dup
    //   135: aload 48
    //   137: invokevirtual 93	android/content/pm/Signature:toByteArray	()[B
    //   140: invokespecial 96	java/io/ByteArrayInputStream:<init>	([B)V
    //   143: astore 49
    //   145: ldc 98
    //   147: invokestatic 104	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   150: aload 49
    //   152: invokevirtual 108	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   155: checkcast 110	java/security/cert/X509Certificate
    //   158: astore 51
    //   160: aload_0
    //   161: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   164: aload 51
    //   166: invokevirtual 114	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   169: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   172: iconst_2
    //   173: aload 51
    //   175: invokevirtual 114	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   178: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   181: ldc 122
    //   183: invokevirtual 126	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   186: iadd
    //   187: aload 51
    //   189: invokevirtual 114	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   192: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   195: ldc 128
    //   197: iconst_2
    //   198: aload 51
    //   200: invokevirtual 114	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   203: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   206: ldc 122
    //   208: invokevirtual 126	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   211: iadd
    //   212: invokevirtual 131	java/lang/String:indexOf	(Ljava/lang/String;I)I
    //   215: invokevirtual 135	java/lang/String:substring	(II)Ljava/lang/String;
    //   218: invokestatic 138	com/keniu/security/software/SoftwareManager2:b	(Lcom/keniu/security/software/SoftwareManager2;Ljava/lang/String;)Ljava/lang/String;
    //   221: pop
    //   222: new 140	com/keniu/security/software/o
    //   225: dup
    //   226: invokespecial 141	com/keniu/security/software/o:<init>	()V
    //   229: astore 8
    //   231: aload 8
    //   233: ldc 143
    //   235: invokevirtual 146	com/keniu/security/software/o:b	(Ljava/lang/String;)V
    //   238: aload_0
    //   239: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   242: invokestatic 150	com/keniu/security/software/SoftwareManager2:e	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    //   245: aload 8
    //   247: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   250: pop
    //   251: new 140	com/keniu/security/software/o
    //   254: dup
    //   255: invokespecial 141	com/keniu/security/software/o:<init>	()V
    //   258: astore 10
    //   260: aload 10
    //   262: ldc 158
    //   264: invokevirtual 146	com/keniu/security/software/o:b	(Ljava/lang/String;)V
    //   267: aload_0
    //   268: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   271: invokestatic 161	com/keniu/security/software/SoftwareManager2:f	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    //   274: aload 10
    //   276: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   279: pop
    //   280: new 140	com/keniu/security/software/o
    //   283: dup
    //   284: invokespecial 141	com/keniu/security/software/o:<init>	()V
    //   287: astore 12
    //   289: aload 12
    //   291: ldc 163
    //   293: invokevirtual 146	com/keniu/security/software/o:b	(Ljava/lang/String;)V
    //   296: aload_0
    //   297: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   300: invokestatic 166	com/keniu/security/software/SoftwareManager2:g	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    //   303: aload 12
    //   305: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   308: pop
    //   309: aload 5
    //   311: invokevirtual 170	java/lang/Object:getClass	()Ljava/lang/Class;
    //   314: ldc 172
    //   316: iconst_2
    //   317: anewarray 174	java/lang/Class
    //   320: dup
    //   321: iconst_0
    //   322: ldc 77
    //   324: aastore
    //   325: dup
    //   326: iconst_1
    //   327: ldc 176
    //   329: aastore
    //   330: invokevirtual 180	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   333: astore 45
    //   335: aload 45
    //   337: astore 15
    //   339: aload 6
    //   341: invokeinterface 51 1 0
    //   346: astore 16
    //   348: aconst_null
    //   349: astore 17
    //   351: aload 16
    //   353: invokeinterface 57 1 0
    //   358: ifeq +620 -> 978
    //   361: aload 16
    //   363: invokeinterface 61 1 0
    //   368: checkcast 63	android/content/pm/PackageInfo
    //   371: astore 20
    //   373: aload_0
    //   374: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   377: invokestatic 183	com/keniu/security/software/SoftwareManager2:a	(Lcom/keniu/security/software/SoftwareManager2;)Z
    //   380: ifeq +27 -> 407
    //   383: return
    //   384: astore 50
    //   386: aload 50
    //   388: invokevirtual 186	java/lang/Exception:printStackTrace	()V
    //   391: goto -330 -> 61
    //   394: astore 14
    //   396: aload 14
    //   398: invokevirtual 186	java/lang/Exception:printStackTrace	()V
    //   401: aconst_null
    //   402: astore 15
    //   404: goto -65 -> 339
    //   407: new 140	com/keniu/security/software/o
    //   410: dup
    //   411: invokespecial 141	com/keniu/security/software/o:<init>	()V
    //   414: astore 21
    //   416: aload 20
    //   418: getfield 189	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   421: astore 22
    //   423: aload 22
    //   425: aload_0
    //   426: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   429: invokevirtual 192	com/keniu/security/software/SoftwareManager2:getPackageName	()Ljava/lang/String;
    //   432: invokevirtual 81	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   435: ifne -84 -> 351
    //   438: aload 21
    //   440: aload 22
    //   442: invokevirtual 194	com/keniu/security/software/o:a	(Ljava/lang/String;)V
    //   445: aload 20
    //   447: getfield 198	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   450: astore 23
    //   452: aload 23
    //   454: ifnull -103 -> 351
    //   457: aload 21
    //   459: aload 23
    //   461: getfield 203	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   464: invokevirtual 206	com/keniu/security/software/o:c	(Ljava/lang/String;)V
    //   467: new 208	java/io/File
    //   470: dup
    //   471: aload 21
    //   473: invokevirtual 210	com/keniu/security/software/o:e	()Ljava/lang/String;
    //   476: invokespecial 212	java/io/File:<init>	(Ljava/lang/String;)V
    //   479: invokevirtual 215	java/io/File:exists	()Z
    //   482: ifeq -131 -> 351
    //   485: aload 21
    //   487: aload 23
    //   489: getfield 218	android/content/pm/ApplicationInfo:dataDir	Ljava/lang/String;
    //   492: invokevirtual 221	com/keniu/security/software/o:d	(Ljava/lang/String;)V
    //   495: new 208	java/io/File
    //   498: dup
    //   499: new 223	java/lang/StringBuilder
    //   502: dup
    //   503: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   506: aload 23
    //   508: getfield 218	android/content/pm/ApplicationInfo:dataDir	Ljava/lang/String;
    //   511: invokestatic 229	com/keniu/security/f/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   514: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: ldc 235
    //   519: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   525: invokespecial 212	java/io/File:<init>	(Ljava/lang/String;)V
    //   528: astore 24
    //   530: aload 23
    //   532: getfield 240	android/content/pm/ApplicationInfo:labelRes	I
    //   535: ifeq +132 -> 667
    //   538: aload 21
    //   540: aload 23
    //   542: aload_0
    //   543: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   546: invokevirtual 39	com/keniu/security/software/SoftwareManager2:getPackageManager	()Landroid/content/pm/PackageManager;
    //   549: invokevirtual 244	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   552: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   555: invokevirtual 146	com/keniu/security/software/o:b	(Ljava/lang/String;)V
    //   558: ldc 245
    //   560: aload 23
    //   562: getfield 248	android/content/pm/ApplicationInfo:flags	I
    //   565: iand
    //   566: ifeq +111 -> 677
    //   569: aload 21
    //   571: iconst_1
    //   572: invokevirtual 251	com/keniu/security/software/o:a	(I)V
    //   575: iconst_2
    //   576: anewarray 116	java/lang/Object
    //   579: astore 43
    //   581: aload 43
    //   583: iconst_0
    //   584: aload 21
    //   586: invokevirtual 253	com/keniu/security/software/o:a	()Ljava/lang/String;
    //   589: aastore
    //   590: aload 43
    //   592: iconst_1
    //   593: new 255	com/keniu/security/software/as
    //   596: dup
    //   597: aload_0
    //   598: aload 21
    //   600: invokespecial 258	com/keniu/security/software/as:<init>	(Lcom/keniu/security/software/ar;Lcom/keniu/security/software/o;)V
    //   603: aastore
    //   604: aload 15
    //   606: aload 5
    //   608: aload 43
    //   610: invokevirtual 264	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   613: pop
    //   614: iconst_1
    //   615: aload 23
    //   617: getfield 248	android/content/pm/ApplicationInfo:flags	I
    //   620: iand
    //   621: iconst_1
    //   622: if_icmpeq +84 -> 706
    //   625: aload 24
    //   627: invokevirtual 215	java/io/File:exists	()Z
    //   630: ifeq +67 -> 697
    //   633: aload 21
    //   635: aload 24
    //   637: invokevirtual 268	java/io/File:lastModified	()J
    //   640: invokevirtual 271	com/keniu/security/software/o:b	(J)V
    //   643: aload_0
    //   644: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   647: invokestatic 274	com/keniu/security/software/SoftwareManager2:k	(Lcom/keniu/security/software/SoftwareManager2;)I
    //   650: pop
    //   651: aload_0
    //   652: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   655: invokestatic 150	com/keniu/security/software/SoftwareManager2:e	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    //   658: aload 21
    //   660: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   663: pop
    //   664: goto -313 -> 351
    //   667: aload 21
    //   669: aload 22
    //   671: invokevirtual 146	com/keniu/security/software/o:b	(Ljava/lang/String;)V
    //   674: goto -116 -> 558
    //   677: aload 21
    //   679: iconst_0
    //   680: invokevirtual 251	com/keniu/security/software/o:a	(I)V
    //   683: goto -108 -> 575
    //   686: astore 25
    //   688: aload 21
    //   690: lconst_0
    //   691: invokevirtual 276	com/keniu/security/software/o:a	(J)V
    //   694: goto -80 -> 614
    //   697: aload 21
    //   699: lconst_0
    //   700: invokevirtual 271	com/keniu/security/software/o:b	(J)V
    //   703: goto -60 -> 643
    //   706: aload 20
    //   708: getfield 85	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   711: astore 26
    //   713: aload 26
    //   715: ifnull -364 -> 351
    //   718: aload 26
    //   720: arraylength
    //   721: ifle +9 -> 730
    //   724: aload 26
    //   726: iconst_0
    //   727: aaload
    //   728: astore 17
    //   730: new 87	java/io/ByteArrayInputStream
    //   733: dup
    //   734: aload 17
    //   736: invokevirtual 93	android/content/pm/Signature:toByteArray	()[B
    //   739: invokespecial 96	java/io/ByteArrayInputStream:<init>	([B)V
    //   742: astore 27
    //   744: ldc 98
    //   746: invokestatic 104	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   749: aload 27
    //   751: invokevirtual 108	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   754: checkcast 110	java/security/cert/X509Certificate
    //   757: astore 31
    //   759: aload 31
    //   761: invokevirtual 114	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   764: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   767: iconst_2
    //   768: aload 31
    //   770: invokevirtual 114	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   773: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   776: ldc 122
    //   778: invokevirtual 126	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   781: iadd
    //   782: aload 31
    //   784: invokevirtual 114	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   787: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   790: ldc 128
    //   792: iconst_2
    //   793: aload 31
    //   795: invokevirtual 114	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   798: invokevirtual 120	java/lang/Object:toString	()Ljava/lang/String;
    //   801: ldc 122
    //   803: invokevirtual 126	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   806: iadd
    //   807: invokevirtual 131	java/lang/String:indexOf	(Ljava/lang/String;I)I
    //   810: invokevirtual 135	java/lang/String:substring	(II)Ljava/lang/String;
    //   813: astore 32
    //   815: aload_0
    //   816: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   819: invokestatic 280	com/keniu/security/software/SoftwareManager2:l	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/lang/String;
    //   822: aload 32
    //   824: invokevirtual 81	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   827: ifeq +58 -> 885
    //   830: aload_0
    //   831: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   834: invokestatic 283	com/keniu/security/software/SoftwareManager2:m	(Lcom/keniu/security/software/SoftwareManager2;)I
    //   837: pop
    //   838: aload_0
    //   839: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   842: invokestatic 161	com/keniu/security/software/SoftwareManager2:f	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    //   845: aload 21
    //   847: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   850: pop
    //   851: goto -500 -> 351
    //   854: astore 28
    //   856: aload 28
    //   858: invokevirtual 186	java/lang/Exception:printStackTrace	()V
    //   861: aload_0
    //   862: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   865: invokestatic 286	com/keniu/security/software/SoftwareManager2:o	(Lcom/keniu/security/software/SoftwareManager2;)I
    //   868: pop
    //   869: aload_0
    //   870: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   873: invokestatic 166	com/keniu/security/software/SoftwareManager2:g	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    //   876: aload 21
    //   878: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   881: pop
    //   882: goto -531 -> 351
    //   885: iconst_0
    //   886: istore 33
    //   888: iload 33
    //   890: aload_0
    //   891: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   894: invokestatic 290	com/keniu/security/software/SoftwareManager2:n	(Lcom/keniu/security/software/SoftwareManager2;)[Ljava/lang/String;
    //   897: arraylength
    //   898: if_icmpge +106 -> 1004
    //   901: aload_0
    //   902: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   905: invokestatic 290	com/keniu/security/software/SoftwareManager2:n	(Lcom/keniu/security/software/SoftwareManager2;)[Ljava/lang/String;
    //   908: iload 33
    //   910: aaload
    //   911: aload 32
    //   913: invokevirtual 81	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   916: ifeq +56 -> 972
    //   919: aload_0
    //   920: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   923: invokestatic 283	com/keniu/security/software/SoftwareManager2:m	(Lcom/keniu/security/software/SoftwareManager2;)I
    //   926: pop
    //   927: aload_0
    //   928: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   931: invokestatic 161	com/keniu/security/software/SoftwareManager2:f	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    //   934: aload 21
    //   936: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   939: pop
    //   940: iconst_1
    //   941: istore 34
    //   943: iload 34
    //   945: ifne -594 -> 351
    //   948: aload_0
    //   949: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   952: invokestatic 286	com/keniu/security/software/SoftwareManager2:o	(Lcom/keniu/security/software/SoftwareManager2;)I
    //   955: pop
    //   956: aload_0
    //   957: getfield 12	com/keniu/security/software/ar:a	Lcom/keniu/security/software/SoftwareManager2;
    //   960: invokestatic 166	com/keniu/security/software/SoftwareManager2:g	(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    //   963: aload 21
    //   965: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   968: pop
    //   969: goto -618 -> 351
    //   972: iinc 33 1
    //   975: goto -87 -> 888
    //   978: invokestatic 296	android/os/Message:obtain	()Landroid/os/Message;
    //   981: astore 18
    //   983: aload 18
    //   985: sipush 256
    //   988: putfield 299	android/os/Message:what	I
    //   991: aload_0
    //   992: getfield 17	com/keniu/security/software/ar:b	Landroid/os/Handler;
    //   995: aload 18
    //   997: invokevirtual 305	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1000: pop
    //   1001: goto -618 -> 383
    //   1004: iconst_0
    //   1005: istore 34
    //   1007: goto -64 -> 943
    //   1010: aconst_null
    //   1011: astore 48
    //   1013: goto -882 -> 131
    //
    // Exception table:
    //   from	to	target	type
    //   145	222	384	java/lang/Exception
    //   309	335	394	java/lang/Exception
    //   575	614	686	java/lang/Exception
    //   744	851	854	java/lang/Exception
    //   888	969	854	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.ar
 * JD-Core Version:    0.6.2
 */