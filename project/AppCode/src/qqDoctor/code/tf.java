final class tf extends Thread
{
  tf(te paramte)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: bipush 10
    //   2: invokestatic 24	android/os/Process:setThreadPriority	(I)V
    //   5: iconst_0
    //   6: istore_1
    //   7: iconst_0
    //   8: istore_2
    //   9: aload_0
    //   10: getfield 10	tf:a	Lte;
    //   13: getfield 30	te:c	Lsy;
    //   16: ldc2_w 31
    //   19: invokestatic 38	java/lang/Math:random	()D
    //   22: dmul
    //   23: d2i
    //   24: putfield 44	sy:k	I
    //   27: aload_0
    //   28: getfield 10	tf:a	Lte;
    //   31: getfield 30	te:c	Lsy;
    //   34: getfield 47	sy:c	Lhi;
    //   37: aload_0
    //   38: getfield 10	tf:a	Lte;
    //   41: getfield 50	te:a	Ljava/lang/String;
    //   44: invokevirtual 55	hi:a	(Ljava/lang/String;)Ljava/util/List;
    //   47: astore 9
    //   49: aload_0
    //   50: getfield 10	tf:a	Lte;
    //   53: getfield 30	te:c	Lsy;
    //   56: getfield 59	sy:d	Ljp;
    //   59: aload_0
    //   60: getfield 10	tf:a	Lte;
    //   63: getfield 50	te:a	Ljava/lang/String;
    //   66: invokevirtual 62	jp:a	(Ljava/lang/String;)Ljava/util/List;
    //   69: astore 10
    //   71: aload 10
    //   73: invokeinterface 68 1 0
    //   78: ifle +481 -> 559
    //   81: iconst_1
    //   82: istore_2
    //   83: iconst_0
    //   84: istore_1
    //   85: iload_2
    //   86: ifeq +545 -> 631
    //   89: aload_0
    //   90: getfield 10	tf:a	Lte;
    //   93: getfield 30	te:c	Lsy;
    //   96: iconst_1
    //   97: putfield 72	sy:i	Z
    //   100: aload_0
    //   101: getfield 10	tf:a	Lte;
    //   104: getfield 30	te:c	Lsy;
    //   107: getfield 75	sy:j	Z
    //   110: istore 15
    //   112: iconst_0
    //   113: istore_1
    //   114: iload 15
    //   116: iconst_1
    //   117: if_icmpne +20 -> 137
    //   120: aload_0
    //   121: getfield 10	tf:a	Lte;
    //   124: getfield 30	te:c	Lsy;
    //   127: iconst_0
    //   128: putfield 75	sy:j	Z
    //   131: ldc2_w 76
    //   134: invokestatic 81	java/lang/Thread:sleep	(J)V
    //   137: aload_0
    //   138: getfield 10	tf:a	Lte;
    //   141: getfield 30	te:c	Lsy;
    //   144: iconst_1
    //   145: putfield 75	sy:j	Z
    //   148: aload_0
    //   149: getfield 10	tf:a	Lte;
    //   152: getfield 30	te:c	Lsy;
    //   155: getfield 85	sy:l	Landroid/os/Handler;
    //   158: iconst_0
    //   159: invokevirtual 91	android/os/Handler:sendEmptyMessage	(I)Z
    //   162: pop
    //   163: invokestatic 97	java/lang/System:currentTimeMillis	()J
    //   166: lstore 17
    //   168: iconst_0
    //   169: istore 19
    //   171: iconst_0
    //   172: istore_1
    //   173: aload 9
    //   175: ifnull +56 -> 231
    //   178: aload 9
    //   180: invokeinterface 68 1 0
    //   185: istore 34
    //   187: iconst_0
    //   188: istore 19
    //   190: iconst_0
    //   191: istore_1
    //   192: iload 34
    //   194: ifle +37 -> 231
    //   197: aload_0
    //   198: getfield 10	tf:a	Lte;
    //   201: getfield 30	te:c	Lsy;
    //   204: getfield 47	sy:c	Lhi;
    //   207: aload 9
    //   209: invokevirtual 100	hi:c	(Ljava/util/List;)Z
    //   212: istore 35
    //   214: iconst_0
    //   215: istore_1
    //   216: iload 35
    //   218: ifeq +593 -> 811
    //   221: iconst_0
    //   222: aload 9
    //   224: invokeinterface 68 1 0
    //   229: iadd
    //   230: istore_1
    //   231: aload_0
    //   232: getfield 10	tf:a	Lte;
    //   235: getfield 30	te:c	Lsy;
    //   238: iconst_5
    //   239: ldc2_w 101
    //   242: invokestatic 38	java/lang/Math:random	()D
    //   245: dmul
    //   246: d2i
    //   247: iadd
    //   248: putfield 44	sy:k	I
    //   251: aload 10
    //   253: ifnull +323 -> 576
    //   256: aload 10
    //   258: invokeinterface 68 1 0
    //   263: ifle +313 -> 576
    //   266: aload_0
    //   267: getfield 10	tf:a	Lte;
    //   270: getfield 30	te:c	Lsy;
    //   273: getfield 44	sy:k	I
    //   276: istore 26
    //   278: bipush 100
    //   280: aload_0
    //   281: getfield 10	tf:a	Lte;
    //   284: getfield 30	te:c	Lsy;
    //   287: getfield 44	sy:k	I
    //   290: isub
    //   291: istore 27
    //   293: aload 10
    //   295: invokeinterface 68 1 0
    //   300: istore 28
    //   302: aload 10
    //   304: invokeinterface 106 1 0
    //   309: astore 29
    //   311: iconst_0
    //   312: istore 30
    //   314: iload 19
    //   316: istore 31
    //   318: aload 29
    //   320: invokeinterface 112 1 0
    //   325: ifeq +500 -> 825
    //   328: aload 29
    //   330: invokeinterface 116 1 0
    //   335: checkcast 118	mk
    //   338: astore 32
    //   340: aload_0
    //   341: getfield 10	tf:a	Lte;
    //   344: getfield 30	te:c	Lsy;
    //   347: getfield 75	sy:j	Z
    //   350: ifeq +475 -> 825
    //   353: iinc 30 1
    //   356: aload_0
    //   357: getfield 10	tf:a	Lte;
    //   360: getfield 30	te:c	Lsy;
    //   363: getfield 59	sy:d	Ljp;
    //   366: aload 32
    //   368: invokevirtual 121	jp:a	(Lmk;)Z
    //   371: ifeq +448 -> 819
    //   374: iload_1
    //   375: invokestatic 127	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   378: pop
    //   379: iinc 1 1
    //   382: aload_0
    //   383: getfield 10	tf:a	Lte;
    //   386: getfield 30	te:c	Lsy;
    //   389: iload 26
    //   391: i2f
    //   392: iload 27
    //   394: i2f
    //   395: iload 30
    //   397: i2f
    //   398: iload 28
    //   400: i2f
    //   401: fdiv
    //   402: fmul
    //   403: fadd
    //   404: f2i
    //   405: putfield 44	sy:k	I
    //   408: goto -90 -> 318
    //   411: astore_3
    //   412: iload_2
    //   413: ifeq +18 -> 431
    //   416: aload_0
    //   417: getfield 10	tf:a	Lte;
    //   420: getfield 30	te:c	Lsy;
    //   423: getfield 85	sy:l	Landroid/os/Handler;
    //   426: iconst_2
    //   427: invokevirtual 91	android/os/Handler:sendEmptyMessage	(I)Z
    //   430: pop
    //   431: aload_3
    //   432: invokevirtual 130	java/lang/Exception:printStackTrace	()V
    //   435: iconst_1
    //   436: istore 4
    //   438: iload_1
    //   439: ifne +327 -> 766
    //   442: aload_0
    //   443: getfield 10	tf:a	Lte;
    //   446: getfield 30	te:c	Lsy;
    //   449: getfield 133	sy:a	Landroid/content/Context;
    //   452: ldc 134
    //   454: invokevirtual 139	android/content/Context:getString	(I)Ljava/lang/String;
    //   457: astore 5
    //   459: aload_0
    //   460: getfield 10	tf:a	Lte;
    //   463: getfield 30	te:c	Lsy;
    //   466: getfield 133	sy:a	Landroid/content/Context;
    //   469: astore 6
    //   471: iload 4
    //   473: ifeq +7 -> 480
    //   476: iload_1
    //   477: ifle +309 -> 786
    //   480: new 141	java/lang/StringBuilder
    //   483: dup
    //   484: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   487: aload 5
    //   489: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   492: iload_1
    //   493: invokevirtual 149	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   496: aload_0
    //   497: getfield 10	tf:a	Lte;
    //   500: getfield 30	te:c	Lsy;
    //   503: getfield 133	sy:a	Landroid/content/Context;
    //   506: ldc 150
    //   508: invokevirtual 139	android/content/Context:getString	(I)Ljava/lang/String;
    //   511: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   514: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   517: astore 7
    //   519: aload 6
    //   521: aload 7
    //   523: invokestatic 159	ha:c	(Landroid/content/Context;Ljava/lang/String;)V
    //   526: iload 4
    //   528: ifeq +7 -> 535
    //   531: iload_1
    //   532: ifle +26 -> 558
    //   535: aload_0
    //   536: getfield 10	tf:a	Lte;
    //   539: getfield 163	te:b	Ldv;
    //   542: ifnull +16 -> 558
    //   545: aload_0
    //   546: getfield 10	tf:a	Lte;
    //   549: getfield 163	te:b	Ldv;
    //   552: aconst_null
    //   553: invokeinterface 168 2 0
    //   558: return
    //   559: iconst_0
    //   560: istore_2
    //   561: goto -478 -> 83
    //   564: astore 36
    //   566: aload 36
    //   568: invokevirtual 169	java/lang/InterruptedException:printStackTrace	()V
    //   571: iconst_0
    //   572: istore_1
    //   573: goto -436 -> 137
    //   576: invokestatic 97	java/lang/System:currentTimeMillis	()J
    //   579: lstore 20
    //   581: lload 20
    //   583: lload 17
    //   585: lsub
    //   586: ldc2_w 170
    //   589: lcmp
    //   590: ifge +19 -> 609
    //   593: lload 17
    //   595: ldc2_w 170
    //   598: ladd
    //   599: lload 20
    //   601: lsub
    //   602: lstore 23
    //   604: lload 23
    //   606: invokestatic 81	java/lang/Thread:sleep	(J)V
    //   609: aload_0
    //   610: getfield 10	tf:a	Lte;
    //   613: getfield 30	te:c	Lsy;
    //   616: getfield 85	sy:l	Landroid/os/Handler;
    //   619: iconst_2
    //   620: invokevirtual 91	android/os/Handler:sendEmptyMessage	(I)Z
    //   623: pop
    //   624: iload 19
    //   626: istore 4
    //   628: goto -190 -> 438
    //   631: iconst_0
    //   632: istore 11
    //   634: iconst_0
    //   635: istore_1
    //   636: aload 9
    //   638: ifnull +56 -> 694
    //   641: aload 9
    //   643: invokeinterface 68 1 0
    //   648: istore 13
    //   650: iconst_0
    //   651: istore 11
    //   653: iconst_0
    //   654: istore_1
    //   655: iload 13
    //   657: ifle +37 -> 694
    //   660: aload_0
    //   661: getfield 10	tf:a	Lte;
    //   664: getfield 30	te:c	Lsy;
    //   667: getfield 47	sy:c	Lhi;
    //   670: aload 9
    //   672: invokevirtual 100	hi:c	(Ljava/util/List;)Z
    //   675: istore 14
    //   677: iconst_0
    //   678: istore_1
    //   679: iload 14
    //   681: ifeq +67 -> 748
    //   684: iconst_0
    //   685: aload 9
    //   687: invokeinterface 68 1 0
    //   692: iadd
    //   693: istore_1
    //   694: aload 10
    //   696: ifnull +63 -> 759
    //   699: aload 10
    //   701: invokeinterface 68 1 0
    //   706: ifle +53 -> 759
    //   709: aload_0
    //   710: getfield 10	tf:a	Lte;
    //   713: getfield 30	te:c	Lsy;
    //   716: getfield 59	sy:d	Ljp;
    //   719: aload 10
    //   721: invokevirtual 173	jp:b	(Ljava/util/List;)Z
    //   724: ifeq +32 -> 756
    //   727: aload 10
    //   729: invokeinterface 68 1 0
    //   734: istore 12
    //   736: iload_1
    //   737: iload 12
    //   739: iadd
    //   740: istore_1
    //   741: iload 11
    //   743: istore 4
    //   745: goto -307 -> 438
    //   748: iconst_1
    //   749: istore 11
    //   751: iconst_0
    //   752: istore_1
    //   753: goto -59 -> 694
    //   756: iconst_1
    //   757: istore 11
    //   759: iload 11
    //   761: istore 4
    //   763: goto -325 -> 438
    //   766: aload_0
    //   767: getfield 10	tf:a	Lte;
    //   770: getfield 30	te:c	Lsy;
    //   773: getfield 133	sy:a	Landroid/content/Context;
    //   776: ldc 174
    //   778: invokevirtual 139	android/content/Context:getString	(I)Ljava/lang/String;
    //   781: astore 5
    //   783: goto -324 -> 459
    //   786: aload_0
    //   787: getfield 10	tf:a	Lte;
    //   790: getfield 30	te:c	Lsy;
    //   793: getfield 133	sy:a	Landroid/content/Context;
    //   796: ldc 175
    //   798: invokevirtual 139	android/content/Context:getString	(I)Ljava/lang/String;
    //   801: astore 7
    //   803: goto -284 -> 519
    //   806: astore 25
    //   808: goto -199 -> 609
    //   811: iconst_1
    //   812: istore 19
    //   814: iconst_0
    //   815: istore_1
    //   816: goto -585 -> 231
    //   819: iconst_1
    //   820: istore 31
    //   822: goto -504 -> 318
    //   825: iload 31
    //   827: istore 19
    //   829: goto -253 -> 576
    //
    // Exception table:
    //   from	to	target	type
    //   9	131	411	java/lang/Exception
    //   131	137	411	java/lang/Exception
    //   137	408	411	java/lang/Exception
    //   566	581	411	java/lang/Exception
    //   609	736	411	java/lang/Exception
    //   131	137	564	java/lang/InterruptedException
    //   604	609	806	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     tf
 * JD-Core Version:    0.6.2
 */