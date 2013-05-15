package com.avast.android.mobilesecurity.app.fileshield;

import com.avast.android.generic.util.ad;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Semaphore;

final class u extends Thread
{
  private final Semaphore b = new Semaphore(0);
  private ad c = new ad();
  private final List d = new LinkedList();

  public u(FileShieldService paramFileShieldService)
  {
    super("AMS-SS$SCDThread");
  }

  public String a(a parama)
  {
    String str;
    synchronized (this.d)
    {
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        str = ((File)localIterator.next()).getAbsolutePath();
        if (parama.b().getAbsolutePath().startsWith(str))
          break label76;
      }
      str = null;
    }
    label76: return str;
  }

  // ERROR //
  public void a(android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +113 -> 114
    //   4: aload_1
    //   5: invokevirtual 81	android/content/Intent:getData	()Landroid/net/Uri;
    //   8: ifnull +106 -> 114
    //   11: aload_1
    //   12: invokevirtual 81	android/content/Intent:getData	()Landroid/net/Uri;
    //   15: invokevirtual 86	android/net/Uri:getPath	()Ljava/lang/String;
    //   18: astore_2
    //   19: aload_2
    //   20: ifnull +86 -> 106
    //   23: ldc 88
    //   25: aload_1
    //   26: invokevirtual 91	android/content/Intent:getAction	()Ljava/lang/String;
    //   29: invokevirtual 95	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   32: ifeq +74 -> 106
    //   35: aload_0
    //   36: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   39: astore_3
    //   40: aload_3
    //   41: monitorenter
    //   42: aload_0
    //   43: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   46: invokeinterface 47 1 0
    //   51: astore 5
    //   53: aload 5
    //   55: invokeinterface 53 1 0
    //   60: ifeq +44 -> 104
    //   63: aload 5
    //   65: invokeinterface 57 1 0
    //   70: checkcast 59	java/io/File
    //   73: invokevirtual 63	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   76: aload_2
    //   77: invokevirtual 95	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   80: ifeq -27 -> 53
    //   83: aload_0
    //   84: getfield 16	com/avast/android/mobilesecurity/app/fileshield/u:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   87: invokestatic 101	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:f	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/c;
    //   90: aload_2
    //   91: invokevirtual 105	com/avast/android/mobilesecurity/app/fileshield/c:a	(Ljava/lang/String;)V
    //   94: goto -41 -> 53
    //   97: astore 4
    //   99: aload_3
    //   100: monitorexit
    //   101: aload 4
    //   103: athrow
    //   104: aload_3
    //   105: monitorexit
    //   106: aload_0
    //   107: getfield 28	com/avast/android/mobilesecurity/app/fileshield/u:b	Ljava/util/concurrent/Semaphore;
    //   110: invokevirtual 108	java/util/concurrent/Semaphore:release	()V
    //   113: return
    //   114: aconst_null
    //   115: astore_2
    //   116: goto -97 -> 19
    //
    // Exception table:
    //   from	to	target	type
    //   42	101	97	finally
    //   104	106	97	finally
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 113	java/lang/Thread:run	()V
    //   4: aload_0
    //   5: getfield 28	com/avast/android/mobilesecurity/app/fileshield/u:b	Ljava/util/concurrent/Semaphore;
    //   8: invokevirtual 116	java/util/concurrent/Semaphore:acquire	()V
    //   11: aload_0
    //   12: getfield 35	com/avast/android/mobilesecurity/app/fileshield/u:c	Lcom/avast/android/generic/util/ad;
    //   15: invokevirtual 119	com/avast/android/generic/util/ad:c	()Ljava/util/List;
    //   18: astore_2
    //   19: aload_2
    //   20: invokeinterface 47 1 0
    //   25: astore_3
    //   26: aload_3
    //   27: invokeinterface 53 1 0
    //   32: ifeq +54 -> 86
    //   35: new 59	java/io/File
    //   38: dup
    //   39: aload_3
    //   40: invokeinterface 57 1 0
    //   45: checkcast 70	java/lang/String
    //   48: invokespecial 120	java/io/File:<init>	(Ljava/lang/String;)V
    //   51: astore 4
    //   53: aload 4
    //   55: invokevirtual 123	java/io/File:exists	()Z
    //   58: ifeq +11 -> 69
    //   61: aload 4
    //   63: invokevirtual 126	java/io/File:canRead	()Z
    //   66: ifne -40 -> 26
    //   69: aload_3
    //   70: invokeinterface 129 1 0
    //   75: goto -49 -> 26
    //   78: astore_1
    //   79: invokestatic 133	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   82: invokevirtual 136	java/lang/Thread:interrupt	()V
    //   85: return
    //   86: aload_0
    //   87: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   90: astore 5
    //   92: aload 5
    //   94: monitorenter
    //   95: aload_2
    //   96: invokeinterface 47 1 0
    //   101: astore 7
    //   103: aload 7
    //   105: invokeinterface 53 1 0
    //   110: ifeq +124 -> 234
    //   113: aload 7
    //   115: invokeinterface 57 1 0
    //   120: checkcast 70	java/lang/String
    //   123: astore 29
    //   125: aload_0
    //   126: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   129: invokeinterface 47 1 0
    //   134: astore 30
    //   136: iconst_0
    //   137: istore 31
    //   139: aload 30
    //   141: invokeinterface 53 1 0
    //   146: ifeq +30 -> 176
    //   149: aload 30
    //   151: invokeinterface 57 1 0
    //   156: checkcast 59	java/io/File
    //   159: invokevirtual 63	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   162: aload 29
    //   164: invokevirtual 95	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   167: ifeq +445 -> 612
    //   170: iconst_1
    //   171: istore 34
    //   173: goto +443 -> 616
    //   176: iload 31
    //   178: ifne -75 -> 103
    //   181: aload_0
    //   182: getfield 16	com/avast/android/mobilesecurity/app/fileshield/u:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   185: invokestatic 101	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:f	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/c;
    //   188: aload 29
    //   190: invokevirtual 138	com/avast/android/mobilesecurity/app/fileshield/c:b	(Ljava/lang/String;)V
    //   193: new 140	com/avast/android/mobilesecurity/app/fileshield/l
    //   196: dup
    //   197: aload_0
    //   198: getfield 16	com/avast/android/mobilesecurity/app/fileshield/u:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   201: aload 29
    //   203: invokespecial 143	com/avast/android/mobilesecurity/app/fileshield/l:<init>	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;)V
    //   206: astore 32
    //   208: aload_0
    //   209: getfield 16	com/avast/android/mobilesecurity/app/fileshield/u:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   212: invokestatic 146	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:b	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/concurrent/BlockingQueue;
    //   215: aload 32
    //   217: invokeinterface 151 2 0
    //   222: pop
    //   223: goto -120 -> 103
    //   226: astore 6
    //   228: aload 5
    //   230: monitorexit
    //   231: aload 6
    //   233: athrow
    //   234: aload 5
    //   236: monitorexit
    //   237: aload_0
    //   238: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   241: astore 8
    //   243: aload 8
    //   245: monitorenter
    //   246: aload_0
    //   247: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   250: invokeinterface 47 1 0
    //   255: astore 10
    //   257: aload 10
    //   259: invokeinterface 53 1 0
    //   264: ifeq +247 -> 511
    //   267: aload 10
    //   269: invokeinterface 57 1 0
    //   274: checkcast 59	java/io/File
    //   277: astore 16
    //   279: aload_2
    //   280: invokeinterface 47 1 0
    //   285: astore 17
    //   287: iconst_1
    //   288: istore 18
    //   290: aload 17
    //   292: invokeinterface 53 1 0
    //   297: ifeq +34 -> 331
    //   300: aload 17
    //   302: invokeinterface 57 1 0
    //   307: checkcast 70	java/lang/String
    //   310: astore 27
    //   312: aload 16
    //   314: invokevirtual 63	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   317: aload 27
    //   319: invokevirtual 95	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   322: ifeq +283 -> 605
    //   325: iconst_0
    //   326: istore 28
    //   328: goto +295 -> 623
    //   331: iload 18
    //   333: ifeq -76 -> 257
    //   336: aload_0
    //   337: getfield 16	com/avast/android/mobilesecurity/app/fileshield/u:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   340: invokestatic 101	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:f	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/c;
    //   343: aload 16
    //   345: invokevirtual 63	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   348: invokevirtual 105	com/avast/android/mobilesecurity/app/fileshield/c:a	(Ljava/lang/String;)V
    //   351: aload_0
    //   352: getfield 16	com/avast/android/mobilesecurity/app/fileshield/u:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   355: invokestatic 155	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   358: astore 19
    //   360: aload 19
    //   362: monitorenter
    //   363: aload_0
    //   364: getfield 16	com/avast/android/mobilesecurity/app/fileshield/u:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   367: invokestatic 155	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   370: invokevirtual 161	java/util/HashMap:keySet	()Ljava/util/Set;
    //   373: invokeinterface 164 1 0
    //   378: astore 21
    //   380: new 37	java/util/LinkedList
    //   383: dup
    //   384: invokespecial 38	java/util/LinkedList:<init>	()V
    //   387: astore 22
    //   389: aload 21
    //   391: invokeinterface 53 1 0
    //   396: ifeq +57 -> 453
    //   399: aload 21
    //   401: invokeinterface 57 1 0
    //   406: checkcast 70	java/lang/String
    //   409: astore 25
    //   411: aload 25
    //   413: aload 16
    //   415: invokevirtual 63	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   418: invokevirtual 74	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   421: ifeq -32 -> 389
    //   424: aload 22
    //   426: aload 25
    //   428: invokeinterface 167 2 0
    //   433: pop
    //   434: goto -45 -> 389
    //   437: astore 20
    //   439: aload 19
    //   441: monitorexit
    //   442: aload 20
    //   444: athrow
    //   445: astore 9
    //   447: aload 8
    //   449: monitorexit
    //   450: aload 9
    //   452: athrow
    //   453: aload 22
    //   455: invokeinterface 47 1 0
    //   460: astore 23
    //   462: aload 23
    //   464: invokeinterface 53 1 0
    //   469: ifeq +36 -> 505
    //   472: aload 23
    //   474: invokeinterface 57 1 0
    //   479: checkcast 70	java/lang/String
    //   482: astore 24
    //   484: aload_0
    //   485: getfield 16	com/avast/android/mobilesecurity/app/fileshield/u:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   488: invokestatic 155	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   491: aload 24
    //   493: invokevirtual 170	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   496: checkcast 172	com/avast/android/mobilesecurity/app/fileshield/d
    //   499: invokevirtual 175	com/avast/android/mobilesecurity/app/fileshield/d:stopWatching	()V
    //   502: goto -40 -> 462
    //   505: aload 19
    //   507: monitorexit
    //   508: goto -251 -> 257
    //   511: aload 8
    //   513: monitorexit
    //   514: aload_0
    //   515: getfield 35	com/avast/android/mobilesecurity/app/fileshield/u:c	Lcom/avast/android/generic/util/ad;
    //   518: invokevirtual 177	com/avast/android/generic/util/ad:b	()V
    //   521: aload_0
    //   522: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   525: astore 11
    //   527: aload 11
    //   529: monitorenter
    //   530: aload_0
    //   531: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   534: invokeinterface 180 1 0
    //   539: aload_2
    //   540: invokeinterface 47 1 0
    //   545: astore 13
    //   547: aload 13
    //   549: invokeinterface 53 1 0
    //   554: ifeq +45 -> 599
    //   557: aload 13
    //   559: invokeinterface 57 1 0
    //   564: checkcast 70	java/lang/String
    //   567: astore 14
    //   569: aload_0
    //   570: getfield 40	com/avast/android/mobilesecurity/app/fileshield/u:d	Ljava/util/List;
    //   573: new 59	java/io/File
    //   576: dup
    //   577: aload 14
    //   579: invokespecial 120	java/io/File:<init>	(Ljava/lang/String;)V
    //   582: invokeinterface 167 2 0
    //   587: pop
    //   588: goto -41 -> 547
    //   591: astore 12
    //   593: aload 11
    //   595: monitorexit
    //   596: aload 12
    //   598: athrow
    //   599: aload 11
    //   601: monitorexit
    //   602: goto -598 -> 4
    //   605: iload 18
    //   607: istore 28
    //   609: goto +14 -> 623
    //   612: iload 31
    //   614: istore 34
    //   616: iload 34
    //   618: istore 31
    //   620: goto -481 -> 139
    //   623: iload 28
    //   625: istore 18
    //   627: goto -337 -> 290
    //
    // Exception table:
    //   from	to	target	type
    //   4	75	78	java/lang/InterruptedException
    //   86	95	78	java/lang/InterruptedException
    //   231	234	78	java/lang/InterruptedException
    //   237	246	78	java/lang/InterruptedException
    //   450	453	78	java/lang/InterruptedException
    //   514	530	78	java/lang/InterruptedException
    //   596	599	78	java/lang/InterruptedException
    //   95	231	226	finally
    //   234	237	226	finally
    //   363	442	437	finally
    //   453	508	437	finally
    //   246	363	445	finally
    //   442	450	445	finally
    //   511	514	445	finally
    //   530	596	591	finally
    //   599	602	591	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.u
 * JD-Core Version:    0.6.2
 */