final class tl extends Thread
{
  tl(tk paramtk)
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
    //   10: getfield 10	tl:a	Ltk;
    //   13: getfield 30	tk:c	Lsy;
    //   16: ldc2_w 31
    //   19: invokestatic 38	java/lang/Math:random	()D
    //   22: dmul
    //   23: d2i
    //   24: putfield 44	sy:k	I
    //   27: aload_0
    //   28: getfield 10	tl:a	Ltk;
    //   31: getfield 30	tk:c	Lsy;
    //   34: getfield 48	sy:d	Ljp;
    //   37: aload_0
    //   38: getfield 10	tl:a	Ltk;
    //   41: getfield 51	tk:a	Ljava/lang/String;
    //   44: invokevirtual 56	jp:a	(Ljava/lang/String;)Ljava/util/List;
    //   47: astore 9
    //   49: aload 9
    //   51: invokeinterface 62 1 0
    //   56: ifle +426 -> 482
    //   59: iconst_1
    //   60: istore_2
    //   61: iconst_0
    //   62: istore_1
    //   63: iload_2
    //   64: ifeq +490 -> 554
    //   67: aload_0
    //   68: getfield 10	tl:a	Ltk;
    //   71: getfield 30	tk:c	Lsy;
    //   74: iconst_1
    //   75: putfield 66	sy:i	Z
    //   78: aload_0
    //   79: getfield 10	tl:a	Ltk;
    //   82: getfield 30	tk:c	Lsy;
    //   85: getfield 69	sy:j	Z
    //   88: istore 14
    //   90: iconst_0
    //   91: istore_1
    //   92: iload 14
    //   94: iconst_1
    //   95: if_icmpne +20 -> 115
    //   98: aload_0
    //   99: getfield 10	tl:a	Ltk;
    //   102: getfield 30	tk:c	Lsy;
    //   105: iconst_0
    //   106: putfield 69	sy:j	Z
    //   109: ldc2_w 70
    //   112: invokestatic 75	java/lang/Thread:sleep	(J)V
    //   115: aload_0
    //   116: getfield 10	tl:a	Ltk;
    //   119: getfield 30	tk:c	Lsy;
    //   122: iconst_1
    //   123: putfield 69	sy:j	Z
    //   126: aload_0
    //   127: getfield 10	tl:a	Ltk;
    //   130: getfield 30	tk:c	Lsy;
    //   133: getfield 79	sy:l	Landroid/os/Handler;
    //   136: iconst_0
    //   137: invokevirtual 85	android/os/Handler:sendEmptyMessage	(I)Z
    //   140: pop
    //   141: invokestatic 91	java/lang/System:currentTimeMillis	()J
    //   144: lstore 16
    //   146: aload_0
    //   147: getfield 10	tl:a	Ltk;
    //   150: getfield 30	tk:c	Lsy;
    //   153: iconst_5
    //   154: ldc2_w 92
    //   157: invokestatic 38	java/lang/Math:random	()D
    //   160: dmul
    //   161: d2i
    //   162: iadd
    //   163: putfield 44	sy:k	I
    //   166: iconst_0
    //   167: istore 18
    //   169: iconst_0
    //   170: istore_1
    //   171: aload 9
    //   173: ifnull +326 -> 499
    //   176: aload 9
    //   178: invokeinterface 62 1 0
    //   183: istore 25
    //   185: iconst_0
    //   186: istore 18
    //   188: iconst_0
    //   189: istore_1
    //   190: iload 25
    //   192: ifle +307 -> 499
    //   195: aload_0
    //   196: getfield 10	tl:a	Ltk;
    //   199: getfield 30	tk:c	Lsy;
    //   202: getfield 44	sy:k	I
    //   205: istore 26
    //   207: bipush 100
    //   209: aload_0
    //   210: getfield 10	tl:a	Ltk;
    //   213: getfield 30	tk:c	Lsy;
    //   216: getfield 44	sy:k	I
    //   219: isub
    //   220: istore 27
    //   222: aload 9
    //   224: invokeinterface 62 1 0
    //   229: istore 28
    //   231: aload 9
    //   233: invokeinterface 97 1 0
    //   238: astore 29
    //   240: iconst_0
    //   241: istore 30
    //   243: iconst_0
    //   244: istore 31
    //   246: aload 29
    //   248: invokeinterface 103 1 0
    //   253: ifeq +437 -> 690
    //   256: aload 29
    //   258: invokeinterface 107 1 0
    //   263: checkcast 109	mk
    //   266: astore 32
    //   268: aload_0
    //   269: getfield 10	tl:a	Ltk;
    //   272: getfield 30	tk:c	Lsy;
    //   275: getfield 69	sy:j	Z
    //   278: ifeq +412 -> 690
    //   281: iinc 30 1
    //   284: aload_0
    //   285: getfield 10	tl:a	Ltk;
    //   288: getfield 30	tk:c	Lsy;
    //   291: getfield 48	sy:d	Ljp;
    //   294: aload 32
    //   296: invokevirtual 112	jp:a	(Lmk;)Z
    //   299: ifeq +385 -> 684
    //   302: iinc 1 1
    //   305: aload_0
    //   306: getfield 10	tl:a	Ltk;
    //   309: getfield 30	tk:c	Lsy;
    //   312: iload 26
    //   314: i2f
    //   315: iload 27
    //   317: i2f
    //   318: iload 30
    //   320: i2f
    //   321: iload 28
    //   323: i2f
    //   324: fdiv
    //   325: fmul
    //   326: fadd
    //   327: f2i
    //   328: putfield 44	sy:k	I
    //   331: goto -85 -> 246
    //   334: astore_3
    //   335: iload_2
    //   336: ifeq +18 -> 354
    //   339: aload_0
    //   340: getfield 10	tl:a	Ltk;
    //   343: getfield 30	tk:c	Lsy;
    //   346: getfield 79	sy:l	Landroid/os/Handler;
    //   349: iconst_2
    //   350: invokevirtual 85	android/os/Handler:sendEmptyMessage	(I)Z
    //   353: pop
    //   354: aload_3
    //   355: invokevirtual 115	java/lang/Exception:printStackTrace	()V
    //   358: iconst_1
    //   359: istore 4
    //   361: iload_1
    //   362: ifne +277 -> 639
    //   365: aload_0
    //   366: getfield 10	tl:a	Ltk;
    //   369: getfield 30	tk:c	Lsy;
    //   372: getfield 118	sy:a	Landroid/content/Context;
    //   375: ldc 119
    //   377: invokevirtual 125	android/content/Context:getString	(I)Ljava/lang/String;
    //   380: astore 5
    //   382: aload_0
    //   383: getfield 10	tl:a	Ltk;
    //   386: getfield 30	tk:c	Lsy;
    //   389: getfield 118	sy:a	Landroid/content/Context;
    //   392: astore 6
    //   394: iload 4
    //   396: ifeq +7 -> 403
    //   399: iload_1
    //   400: ifle +259 -> 659
    //   403: new 127	java/lang/StringBuilder
    //   406: dup
    //   407: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   410: aload 5
    //   412: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: iload_1
    //   416: invokevirtual 135	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   419: aload_0
    //   420: getfield 10	tl:a	Ltk;
    //   423: getfield 30	tk:c	Lsy;
    //   426: getfield 118	sy:a	Landroid/content/Context;
    //   429: ldc 136
    //   431: invokevirtual 125	android/content/Context:getString	(I)Ljava/lang/String;
    //   434: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: astore 7
    //   442: aload 6
    //   444: aload 7
    //   446: invokestatic 145	ha:c	(Landroid/content/Context;Ljava/lang/String;)V
    //   449: iload 4
    //   451: ifeq +7 -> 458
    //   454: iload_1
    //   455: ifle +26 -> 481
    //   458: aload_0
    //   459: getfield 10	tl:a	Ltk;
    //   462: getfield 149	tk:b	Ldv;
    //   465: ifnull +16 -> 481
    //   468: aload_0
    //   469: getfield 10	tl:a	Ltk;
    //   472: getfield 149	tk:b	Ldv;
    //   475: aconst_null
    //   476: invokeinterface 154 2 0
    //   481: return
    //   482: iconst_0
    //   483: istore_2
    //   484: goto -423 -> 61
    //   487: astore 33
    //   489: aload 33
    //   491: invokevirtual 155	java/lang/InterruptedException:printStackTrace	()V
    //   494: iconst_0
    //   495: istore_1
    //   496: goto -381 -> 115
    //   499: invokestatic 91	java/lang/System:currentTimeMillis	()J
    //   502: lstore 19
    //   504: lload 19
    //   506: lload 16
    //   508: lsub
    //   509: ldc2_w 156
    //   512: lcmp
    //   513: ifge +19 -> 532
    //   516: lload 16
    //   518: ldc2_w 156
    //   521: ladd
    //   522: lload 19
    //   524: lsub
    //   525: lstore 22
    //   527: lload 22
    //   529: invokestatic 75	java/lang/Thread:sleep	(J)V
    //   532: aload_0
    //   533: getfield 10	tl:a	Ltk;
    //   536: getfield 30	tk:c	Lsy;
    //   539: getfield 79	sy:l	Landroid/os/Handler;
    //   542: iconst_2
    //   543: invokevirtual 85	android/os/Handler:sendEmptyMessage	(I)Z
    //   546: pop
    //   547: iload 18
    //   549: istore 4
    //   551: goto -190 -> 361
    //   554: iconst_0
    //   555: istore_1
    //   556: iconst_0
    //   557: istore 10
    //   559: aload 9
    //   561: ifnull +69 -> 630
    //   564: aload 9
    //   566: invokeinterface 62 1 0
    //   571: istore 11
    //   573: iconst_0
    //   574: istore_1
    //   575: iconst_0
    //   576: istore 10
    //   578: iload 11
    //   580: ifle +50 -> 630
    //   583: aload_0
    //   584: getfield 10	tl:a	Ltk;
    //   587: getfield 30	tk:c	Lsy;
    //   590: getfield 48	sy:d	Ljp;
    //   593: aload 9
    //   595: invokevirtual 160	jp:b	(Ljava/util/List;)Z
    //   598: istore 12
    //   600: iconst_0
    //   601: istore_1
    //   602: iload 12
    //   604: ifeq +23 -> 627
    //   607: aload 9
    //   609: invokeinterface 62 1 0
    //   614: istore 13
    //   616: iload 13
    //   618: iconst_0
    //   619: iadd
    //   620: istore_1
    //   621: iconst_0
    //   622: istore 4
    //   624: goto -263 -> 361
    //   627: iconst_1
    //   628: istore 10
    //   630: iload 10
    //   632: istore 4
    //   634: iconst_0
    //   635: istore_1
    //   636: goto -275 -> 361
    //   639: aload_0
    //   640: getfield 10	tl:a	Ltk;
    //   643: getfield 30	tk:c	Lsy;
    //   646: getfield 118	sy:a	Landroid/content/Context;
    //   649: ldc 161
    //   651: invokevirtual 125	android/content/Context:getString	(I)Ljava/lang/String;
    //   654: astore 5
    //   656: goto -274 -> 382
    //   659: aload_0
    //   660: getfield 10	tl:a	Ltk;
    //   663: getfield 30	tk:c	Lsy;
    //   666: getfield 118	sy:a	Landroid/content/Context;
    //   669: ldc 162
    //   671: invokevirtual 125	android/content/Context:getString	(I)Ljava/lang/String;
    //   674: astore 7
    //   676: goto -234 -> 442
    //   679: astore 24
    //   681: goto -149 -> 532
    //   684: iconst_1
    //   685: istore 31
    //   687: goto -441 -> 246
    //   690: iload 31
    //   692: istore 18
    //   694: goto -195 -> 499
    //
    // Exception table:
    //   from	to	target	type
    //   9	109	334	java/lang/Exception
    //   109	115	334	java/lang/Exception
    //   115	331	334	java/lang/Exception
    //   489	504	334	java/lang/Exception
    //   532	616	334	java/lang/Exception
    //   109	115	487	java/lang/InterruptedException
    //   527	532	679	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     tl
 * JD-Core Version:    0.6.2
 */