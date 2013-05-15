package com.avast.android.mobilesecurity.filebrowser;

final class i extends Thread
{
  public i()
  {
    super("AMS-SFI$CThread");
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 16	java/lang/Thread:run	()V
    //   4: invokestatic 22	com/avast/android/mobilesecurity/filebrowser/h:l	()Ljava/util/concurrent/Semaphore;
    //   7: invokevirtual 27	java/util/concurrent/Semaphore:acquire	()V
    //   10: iconst_1
    //   11: istore_2
    //   12: iload_2
    //   13: ifeq +615 -> 628
    //   16: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   19: astore_3
    //   20: aload_3
    //   21: monitorenter
    //   22: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   25: invokevirtual 37	java/util/Stack:peek	()Ljava/lang/Object;
    //   28: checkcast 39	java/lang/String
    //   31: astore 5
    //   33: aload_3
    //   34: monitorexit
    //   35: aload 5
    //   37: invokestatic 43	com/avast/android/mobilesecurity/filebrowser/h:a	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/filebrowser/h;
    //   40: astore 6
    //   42: lconst_0
    //   43: invokestatic 49	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   46: astore 7
    //   48: lconst_0
    //   49: invokestatic 49	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   52: astore 8
    //   54: new 51	java/util/ArrayList
    //   57: dup
    //   58: invokespecial 53	java/util/ArrayList:<init>	()V
    //   61: astore 9
    //   63: aload 6
    //   65: aconst_null
    //   66: invokevirtual 56	com/avast/android/mobilesecurity/filebrowser/h:a	(Lcom/avast/android/generic/filebrowser/g;)Ljava/lang/Long;
    //   69: ifnull +12 -> 81
    //   72: aload 6
    //   74: aconst_null
    //   75: invokevirtual 59	com/avast/android/mobilesecurity/filebrowser/h:a	(Lcom/avast/android/generic/filebrowser/h;)Ljava/lang/Long;
    //   78: ifnonnull +372 -> 450
    //   81: aload 6
    //   83: invokevirtual 63	com/avast/android/mobilesecurity/filebrowser/h:g	()[Lcom/avast/android/generic/filebrowser/f;
    //   86: astore 10
    //   88: aload 10
    //   90: ifnull +553 -> 643
    //   93: iconst_0
    //   94: istore 36
    //   96: iload 36
    //   98: aload 10
    //   100: arraylength
    //   101: if_icmpge +542 -> 643
    //   104: aload 10
    //   106: iload 36
    //   108: aaload
    //   109: astore 37
    //   111: aload 37
    //   113: invokeinterface 69 1 0
    //   118: ifeq +62 -> 180
    //   121: lconst_1
    //   122: aload 7
    //   124: invokevirtual 73	java/lang/Long:longValue	()J
    //   127: ladd
    //   128: invokestatic 49	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   131: astore 7
    //   133: aload 8
    //   135: invokevirtual 73	java/lang/Long:longValue	()J
    //   138: aload 37
    //   140: aconst_null
    //   141: invokeinterface 74 2 0
    //   146: invokevirtual 73	java/lang/Long:longValue	()J
    //   149: ladd
    //   150: invokestatic 49	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   153: astore 41
    //   155: aload 41
    //   157: astore 8
    //   159: iinc 36 1
    //   162: goto -66 -> 96
    //   165: astore 4
    //   167: aload_3
    //   168: monitorexit
    //   169: aload 4
    //   171: athrow
    //   172: astore_1
    //   173: invokestatic 78	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   176: invokevirtual 81	java/lang/Thread:interrupt	()V
    //   179: return
    //   180: aload 37
    //   182: invokeinterface 84 1 0
    //   187: ifeq -28 -> 159
    //   190: aload 37
    //   192: aconst_null
    //   193: invokeinterface 74 2 0
    //   198: astore 38
    //   200: aload 37
    //   202: aconst_null
    //   203: invokeinterface 85 2 0
    //   208: astore 39
    //   210: aload 38
    //   212: ifnull +8 -> 220
    //   215: aload 39
    //   217: ifnonnull +16 -> 233
    //   220: aload 9
    //   222: aload 37
    //   224: invokeinterface 91 2 0
    //   229: pop
    //   230: goto -71 -> 159
    //   233: aload 7
    //   235: invokevirtual 73	java/lang/Long:longValue	()J
    //   238: aload 39
    //   240: invokevirtual 73	java/lang/Long:longValue	()J
    //   243: ladd
    //   244: invokestatic 49	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   247: astore 7
    //   249: aload 8
    //   251: invokevirtual 73	java/lang/Long:longValue	()J
    //   254: aload 38
    //   256: invokevirtual 73	java/lang/Long:longValue	()J
    //   259: ladd
    //   260: invokestatic 49	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   263: astore 8
    //   265: goto -106 -> 159
    //   268: aload 9
    //   270: invokeinterface 94 1 0
    //   275: ifeq +219 -> 494
    //   278: iload 13
    //   280: ifne +117 -> 397
    //   283: aload 6
    //   285: aload 12
    //   287: invokestatic 97	com/avast/android/mobilesecurity/filebrowser/h:a	(Lcom/avast/android/mobilesecurity/filebrowser/h;Ljava/lang/Long;)Ljava/lang/Long;
    //   290: pop
    //   291: aload 6
    //   293: aload 11
    //   295: invokestatic 100	com/avast/android/mobilesecurity/filebrowser/h:b	(Lcom/avast/android/mobilesecurity/filebrowser/h;Ljava/lang/Long;)Ljava/lang/Long;
    //   298: pop
    //   299: aload 6
    //   301: monitorenter
    //   302: aload 6
    //   304: invokestatic 103	com/avast/android/mobilesecurity/filebrowser/h:a	(Lcom/avast/android/mobilesecurity/filebrowser/h;)Lcom/avast/android/generic/filebrowser/h;
    //   307: astore 29
    //   309: aload 6
    //   311: aconst_null
    //   312: invokestatic 106	com/avast/android/mobilesecurity/filebrowser/h:a	(Lcom/avast/android/mobilesecurity/filebrowser/h;Lcom/avast/android/generic/filebrowser/h;)Lcom/avast/android/generic/filebrowser/h;
    //   315: pop
    //   316: aload 6
    //   318: invokestatic 109	com/avast/android/mobilesecurity/filebrowser/h:b	(Lcom/avast/android/mobilesecurity/filebrowser/h;)Lcom/avast/android/generic/filebrowser/g;
    //   321: astore 31
    //   323: aload 6
    //   325: aconst_null
    //   326: invokestatic 112	com/avast/android/mobilesecurity/filebrowser/h:a	(Lcom/avast/android/mobilesecurity/filebrowser/h;Lcom/avast/android/generic/filebrowser/g;)Lcom/avast/android/generic/filebrowser/g;
    //   329: pop
    //   330: aload 6
    //   332: monitorexit
    //   333: aload 29
    //   335: ifnull +18 -> 353
    //   338: aload 29
    //   340: aload 6
    //   342: invokestatic 116	com/avast/android/mobilesecurity/filebrowser/h:c	(Lcom/avast/android/mobilesecurity/filebrowser/h;)Ljava/lang/Long;
    //   345: invokevirtual 73	java/lang/Long:longValue	()J
    //   348: invokeinterface 121 3 0
    //   353: aload 31
    //   355: ifnull +18 -> 373
    //   358: aload 31
    //   360: aload 6
    //   362: invokestatic 123	com/avast/android/mobilesecurity/filebrowser/h:d	(Lcom/avast/android/mobilesecurity/filebrowser/h;)Ljava/lang/Long;
    //   365: invokevirtual 73	java/lang/Long:longValue	()J
    //   368: invokeinterface 126 3 0
    //   373: invokestatic 130	com/avast/android/mobilesecurity/filebrowser/h:m	()Ljava/util/Map;
    //   376: astore 33
    //   378: aload 33
    //   380: monitorenter
    //   381: invokestatic 130	com/avast/android/mobilesecurity/filebrowser/h:m	()Ljava/util/Map;
    //   384: aload 5
    //   386: aload 6
    //   388: invokeinterface 136 3 0
    //   393: pop
    //   394: aload 33
    //   396: monitorexit
    //   397: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   400: astore 23
    //   402: aload 23
    //   404: monitorenter
    //   405: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   408: invokevirtual 37	java/util/Stack:peek	()Ljava/lang/Object;
    //   411: checkcast 39	java/lang/String
    //   414: aload 5
    //   416: invokevirtual 139	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   419: ifeq +218 -> 637
    //   422: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   425: invokevirtual 142	java/util/Stack:pop	()Ljava/lang/Object;
    //   428: pop
    //   429: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   432: invokevirtual 143	java/util/Stack:isEmpty	()Z
    //   435: ifne +45 -> 480
    //   438: iconst_1
    //   439: istore 18
    //   441: aload 23
    //   443: monitorexit
    //   444: iload 18
    //   446: istore_2
    //   447: goto -435 -> 12
    //   450: aload 7
    //   452: astore 11
    //   454: aload 8
    //   456: astore 12
    //   458: iconst_1
    //   459: istore 13
    //   461: goto -193 -> 268
    //   464: astore 28
    //   466: aload 6
    //   468: monitorexit
    //   469: aload 28
    //   471: athrow
    //   472: astore 34
    //   474: aload 33
    //   476: monitorexit
    //   477: aload 34
    //   479: athrow
    //   480: iconst_0
    //   481: istore 18
    //   483: goto -42 -> 441
    //   486: astore 24
    //   488: aload 23
    //   490: monitorexit
    //   491: aload 24
    //   493: athrow
    //   494: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   497: astore 14
    //   499: aload 14
    //   501: monitorenter
    //   502: new 33	java/util/Stack
    //   505: dup
    //   506: invokespecial 144	java/util/Stack:<init>	()V
    //   509: astore 15
    //   511: aload 5
    //   513: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   516: invokevirtual 37	java/util/Stack:peek	()Ljava/lang/Object;
    //   519: invokevirtual 139	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   522: ifne +26 -> 548
    //   525: aload 15
    //   527: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   530: invokevirtual 142	java/util/Stack:pop	()Ljava/lang/Object;
    //   533: invokevirtual 148	java/util/Stack:push	(Ljava/lang/Object;)Ljava/lang/Object;
    //   536: pop
    //   537: goto -26 -> 511
    //   540: astore 16
    //   542: aload 14
    //   544: monitorexit
    //   545: aload 16
    //   547: athrow
    //   548: aload 9
    //   550: invokeinterface 152 1 0
    //   555: astore 17
    //   557: aload 17
    //   559: invokeinterface 157 1 0
    //   564: ifeq +32 -> 596
    //   567: aload 17
    //   569: invokeinterface 160 1 0
    //   574: checkcast 65	com/avast/android/generic/filebrowser/f
    //   577: astore 20
    //   579: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   582: aload 20
    //   584: invokeinterface 163 1 0
    //   589: invokevirtual 148	java/util/Stack:push	(Ljava/lang/Object;)Ljava/lang/Object;
    //   592: pop
    //   593: goto -36 -> 557
    //   596: aload 15
    //   598: invokevirtual 143	java/util/Stack:isEmpty	()Z
    //   601: ifne +18 -> 619
    //   604: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   607: aload 15
    //   609: invokevirtual 142	java/util/Stack:pop	()Ljava/lang/Object;
    //   612: invokevirtual 148	java/util/Stack:push	(Ljava/lang/Object;)Ljava/lang/Object;
    //   615: pop
    //   616: goto -20 -> 596
    //   619: aload 14
    //   621: monitorexit
    //   622: iload_2
    //   623: istore 18
    //   625: goto -181 -> 444
    //   628: invokestatic 31	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   631: invokevirtual 166	java/util/Stack:clear	()V
    //   634: goto -630 -> 4
    //   637: iload_2
    //   638: istore 18
    //   640: goto -199 -> 441
    //   643: aload 7
    //   645: astore 11
    //   647: aload 8
    //   649: astore 12
    //   651: iconst_0
    //   652: istore 13
    //   654: goto -386 -> 268
    //
    // Exception table:
    //   from	to	target	type
    //   22	35	165	finally
    //   167	169	165	finally
    //   4	22	172	java/lang/InterruptedException
    //   35	155	172	java/lang/InterruptedException
    //   169	172	172	java/lang/InterruptedException
    //   180	302	172	java/lang/InterruptedException
    //   338	381	172	java/lang/InterruptedException
    //   397	405	172	java/lang/InterruptedException
    //   469	472	172	java/lang/InterruptedException
    //   477	480	172	java/lang/InterruptedException
    //   491	502	172	java/lang/InterruptedException
    //   545	548	172	java/lang/InterruptedException
    //   302	333	464	finally
    //   466	469	464	finally
    //   381	397	472	finally
    //   474	477	472	finally
    //   405	444	486	finally
    //   488	491	486	finally
    //   502	545	540	finally
    //   548	622	540	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.i
 * JD-Core Version:    0.6.2
 */