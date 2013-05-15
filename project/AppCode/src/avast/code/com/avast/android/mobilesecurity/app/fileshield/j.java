package com.avast.android.mobilesecurity.app.fileshield;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;

final class j extends Thread
{
  private final Semaphore b = new Semaphore(0);
  private final Map c = new HashMap();
  private final Map d = new HashMap();
  private Handler e;
  private final HandlerThread f = new HandlerThread("AMS-FS$BThread@HThread");

  public j(FileShieldService paramFileShieldService)
  {
    super("AMS-FS$BThread");
    this.f.start();
    this.e = new k(this, this.f.getLooper(), paramFileShieldService);
  }

  // ERROR //
  public void a(java.lang.String paramString, long paramLong)
  {
    // Byte code:
    //   0: lload_2
    //   1: ldc2_w 64
    //   4: lcmp
    //   5: ifne +100 -> 105
    //   8: aload_0
    //   9: getfield 40	com/avast/android/mobilesecurity/app/fileshield/j:d	Ljava/util/Map;
    //   12: astore 11
    //   14: aload 11
    //   16: monitorenter
    //   17: aload_0
    //   18: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   21: astore 13
    //   23: aload 13
    //   25: monitorenter
    //   26: aload_0
    //   27: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   30: aload_1
    //   31: invokeinterface 71 2 0
    //   36: pop
    //   37: aload 13
    //   39: monitorexit
    //   40: aload_0
    //   41: getfield 40	com/avast/android/mobilesecurity/app/fileshield/j:d	Ljava/util/Map;
    //   44: invokeinterface 75 1 0
    //   49: istore 16
    //   51: aload_0
    //   52: getfield 40	com/avast/android/mobilesecurity/app/fileshield/j:d	Ljava/util/Map;
    //   55: aload_1
    //   56: invokestatic 81	java/lang/System:nanoTime	()J
    //   59: invokestatic 87	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   62: invokeinterface 91 3 0
    //   67: pop
    //   68: iload 16
    //   70: ifeq +15 -> 85
    //   73: aload_0
    //   74: getfield 61	com/avast/android/mobilesecurity/app/fileshield/j:e	Landroid/os/Handler;
    //   77: iconst_1
    //   78: ldc2_w 92
    //   81: invokevirtual 99	android/os/Handler:sendEmptyMessageDelayed	(IJ)Z
    //   84: pop
    //   85: aload 11
    //   87: monitorexit
    //   88: return
    //   89: astore 14
    //   91: aload 13
    //   93: monitorexit
    //   94: aload 14
    //   96: athrow
    //   97: astore 12
    //   99: aload 11
    //   101: monitorexit
    //   102: aload 12
    //   104: athrow
    //   105: lload_2
    //   106: ldc2_w 100
    //   109: lcmp
    //   110: ifne -22 -> 88
    //   113: aload_0
    //   114: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   117: astore 4
    //   119: aload 4
    //   121: monitorenter
    //   122: aload_0
    //   123: getfield 40	com/avast/android/mobilesecurity/app/fileshield/j:d	Ljava/util/Map;
    //   126: astore 6
    //   128: aload 6
    //   130: monitorenter
    //   131: aload_0
    //   132: getfield 40	com/avast/android/mobilesecurity/app/fileshield/j:d	Ljava/util/Map;
    //   135: aload_1
    //   136: invokeinterface 104 2 0
    //   141: ifnull +20 -> 161
    //   144: aload 6
    //   146: monitorexit
    //   147: aload 4
    //   149: monitorexit
    //   150: goto -62 -> 88
    //   153: astore 5
    //   155: aload 4
    //   157: monitorexit
    //   158: aload 5
    //   160: athrow
    //   161: aload 6
    //   163: monitorexit
    //   164: aload_0
    //   165: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   168: invokeinterface 75 1 0
    //   173: istore 8
    //   175: aload_0
    //   176: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   179: aload_1
    //   180: invokestatic 81	java/lang/System:nanoTime	()J
    //   183: invokestatic 87	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   186: invokeinterface 91 3 0
    //   191: pop
    //   192: iload 8
    //   194: ifeq +15 -> 209
    //   197: aload_0
    //   198: getfield 61	com/avast/android/mobilesecurity/app/fileshield/j:e	Landroid/os/Handler;
    //   201: iconst_1
    //   202: ldc2_w 105
    //   205: invokevirtual 99	android/os/Handler:sendEmptyMessageDelayed	(IJ)Z
    //   208: pop
    //   209: aload 4
    //   211: monitorexit
    //   212: goto -124 -> 88
    //   215: astore 7
    //   217: aload 6
    //   219: monitorexit
    //   220: aload 7
    //   222: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   26	40	89	finally
    //   91	94	89	finally
    //   17	26	97	finally
    //   40	88	97	finally
    //   94	102	97	finally
    //   122	131	153	finally
    //   147	158	153	finally
    //   164	212	153	finally
    //   220	223	153	finally
    //   131	147	215	finally
    //   161	164	215	finally
    //   217	220	215	finally
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 111	java/lang/Thread:run	()V
    //   4: aload_0
    //   5: getfield 31	com/avast/android/mobilesecurity/app/fileshield/j:b	Ljava/util/concurrent/Semaphore;
    //   8: invokevirtual 114	java/util/concurrent/Semaphore:acquire	()V
    //   11: invokestatic 81	java/lang/System:nanoTime	()J
    //   14: lstore_2
    //   15: aload_0
    //   16: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   19: astore 4
    //   21: aload 4
    //   23: monitorenter
    //   24: aload_0
    //   25: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   28: invokeinterface 118 1 0
    //   33: astore 6
    //   35: aload 6
    //   37: ifnull +148 -> 185
    //   40: aload 6
    //   42: invokeinterface 124 1 0
    //   47: astore 21
    //   49: aload 21
    //   51: invokeinterface 129 1 0
    //   56: ifeq +129 -> 185
    //   59: aload 21
    //   61: invokeinterface 133 1 0
    //   66: checkcast 135	java/util/Map$Entry
    //   69: astore 22
    //   71: ldc2_w 136
    //   74: aload 22
    //   76: invokeinterface 140 1 0
    //   81: checkcast 83	java/lang/Long
    //   84: invokevirtual 143	java/lang/Long:longValue	()J
    //   87: ladd
    //   88: lload_2
    //   89: lcmp
    //   90: ifge -41 -> 49
    //   93: new 145	com/avast/android/mobilesecurity/app/fileshield/a
    //   96: dup
    //   97: new 147	java/io/File
    //   100: dup
    //   101: aload 22
    //   103: invokeinterface 150 1 0
    //   108: checkcast 152	java/lang/String
    //   111: invokespecial 153	java/io/File:<init>	(Ljava/lang/String;)V
    //   114: ldc2_w 154
    //   117: invokespecial 158	com/avast/android/mobilesecurity/app/fileshield/a:<init>	(Ljava/io/File;J)V
    //   120: astore 23
    //   122: aload_0
    //   123: getfield 19	com/avast/android/mobilesecurity/app/fileshield/j:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   126: invokestatic 163	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:a	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/u;
    //   129: aload 23
    //   131: invokevirtual 168	com/avast/android/mobilesecurity/app/fileshield/u:a	(Lcom/avast/android/mobilesecurity/app/fileshield/a;)Ljava/lang/String;
    //   134: astore 24
    //   136: aload_0
    //   137: getfield 19	com/avast/android/mobilesecurity/app/fileshield/j:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   140: invokestatic 172	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:j	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/t;
    //   143: aload 23
    //   145: aload 24
    //   147: invokevirtual 177	com/avast/android/mobilesecurity/app/fileshield/t:a	(Lcom/avast/android/mobilesecurity/app/fileshield/a;Ljava/lang/String;)V
    //   150: aload 21
    //   152: invokeinterface 179 1 0
    //   157: goto -108 -> 49
    //   160: astore 5
    //   162: aload 4
    //   164: monitorexit
    //   165: aload 5
    //   167: athrow
    //   168: astore_1
    //   169: invokestatic 183	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   172: invokevirtual 186	java/lang/Thread:interrupt	()V
    //   175: aload_0
    //   176: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   179: invokeinterface 189 1 0
    //   184: return
    //   185: aload_0
    //   186: getfield 38	com/avast/android/mobilesecurity/app/fileshield/j:c	Ljava/util/Map;
    //   189: invokeinterface 75 1 0
    //   194: ifne +276 -> 470
    //   197: iconst_0
    //   198: istore 7
    //   200: aload 4
    //   202: monitorexit
    //   203: aload_0
    //   204: getfield 40	com/avast/android/mobilesecurity/app/fileshield/j:d	Ljava/util/Map;
    //   207: astore 8
    //   209: aload 8
    //   211: monitorenter
    //   212: aload_0
    //   213: getfield 40	com/avast/android/mobilesecurity/app/fileshield/j:d	Ljava/util/Map;
    //   216: invokeinterface 118 1 0
    //   221: astore 10
    //   223: aload 10
    //   225: ifnull +131 -> 356
    //   228: aload 10
    //   230: invokeinterface 124 1 0
    //   235: astore 17
    //   237: aload 17
    //   239: invokeinterface 129 1 0
    //   244: ifeq +112 -> 356
    //   247: aload 17
    //   249: invokeinterface 133 1 0
    //   254: checkcast 135	java/util/Map$Entry
    //   257: astore 18
    //   259: ldc2_w 190
    //   262: aload 18
    //   264: invokeinterface 140 1 0
    //   269: checkcast 83	java/lang/Long
    //   272: invokevirtual 143	java/lang/Long:longValue	()J
    //   275: ladd
    //   276: lload_2
    //   277: lcmp
    //   278: ifge -41 -> 237
    //   281: new 145	com/avast/android/mobilesecurity/app/fileshield/a
    //   284: dup
    //   285: new 147	java/io/File
    //   288: dup
    //   289: aload 18
    //   291: invokeinterface 150 1 0
    //   296: checkcast 152	java/lang/String
    //   299: invokespecial 153	java/io/File:<init>	(Ljava/lang/String;)V
    //   302: ldc2_w 192
    //   305: invokespecial 158	com/avast/android/mobilesecurity/app/fileshield/a:<init>	(Ljava/io/File;J)V
    //   308: astore 19
    //   310: aload_0
    //   311: getfield 19	com/avast/android/mobilesecurity/app/fileshield/j:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   314: invokestatic 163	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:a	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/u;
    //   317: aload 19
    //   319: invokevirtual 168	com/avast/android/mobilesecurity/app/fileshield/u:a	(Lcom/avast/android/mobilesecurity/app/fileshield/a;)Ljava/lang/String;
    //   322: astore 20
    //   324: aload_0
    //   325: getfield 19	com/avast/android/mobilesecurity/app/fileshield/j:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   328: invokestatic 172	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:j	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/t;
    //   331: aload 19
    //   333: aload 20
    //   335: invokevirtual 177	com/avast/android/mobilesecurity/app/fileshield/t:a	(Lcom/avast/android/mobilesecurity/app/fileshield/a;Ljava/lang/String;)V
    //   338: aload 17
    //   340: invokeinterface 179 1 0
    //   345: goto -108 -> 237
    //   348: astore 9
    //   350: aload 8
    //   352: monitorexit
    //   353: aload 9
    //   355: athrow
    //   356: aload_0
    //   357: getfield 40	com/avast/android/mobilesecurity/app/fileshield/j:d	Ljava/util/Map;
    //   360: invokeinterface 75 1 0
    //   365: ifne +99 -> 464
    //   368: iconst_0
    //   369: istore 11
    //   371: aload 8
    //   373: monitorexit
    //   374: invokestatic 81	java/lang/System:nanoTime	()J
    //   377: lload_2
    //   378: lsub
    //   379: lstore 12
    //   381: lload 12
    //   383: ldc2_w 136
    //   386: lcmp
    //   387: iflt +89 -> 476
    //   390: iload 7
    //   392: ifeq +6 -> 398
    //   395: goto +81 -> 476
    //   398: aload_0
    //   399: getfield 61	com/avast/android/mobilesecurity/app/fileshield/j:e	Landroid/os/Handler;
    //   402: iconst_0
    //   403: invokevirtual 197	android/os/Handler:sendEmptyMessage	(I)Z
    //   406: pop
    //   407: goto -403 -> 4
    //   410: iload 11
    //   412: ifne +25 -> 437
    //   415: aload_0
    //   416: getfield 61	com/avast/android/mobilesecurity/app/fileshield/j:e	Landroid/os/Handler;
    //   419: iconst_0
    //   420: ldc2_w 190
    //   423: lload 12
    //   425: lsub
    //   426: ldc2_w 198
    //   429: ldiv
    //   430: invokevirtual 99	android/os/Handler:sendEmptyMessageDelayed	(IJ)Z
    //   433: pop
    //   434: goto -430 -> 4
    //   437: iload 7
    //   439: ifne -435 -> 4
    //   442: aload_0
    //   443: getfield 61	com/avast/android/mobilesecurity/app/fileshield/j:e	Landroid/os/Handler;
    //   446: iconst_0
    //   447: ldc2_w 136
    //   450: lload 12
    //   452: lsub
    //   453: ldc2_w 198
    //   456: ldiv
    //   457: invokevirtual 99	android/os/Handler:sendEmptyMessageDelayed	(IJ)Z
    //   460: pop
    //   461: goto -457 -> 4
    //   464: iconst_1
    //   465: istore 11
    //   467: goto -96 -> 371
    //   470: iconst_1
    //   471: istore 7
    //   473: goto -273 -> 200
    //   476: lload 12
    //   478: ldc2_w 190
    //   481: lcmp
    //   482: iflt -72 -> 410
    //   485: iload 11
    //   487: ifne -77 -> 410
    //   490: goto -92 -> 398
    //
    // Exception table:
    //   from	to	target	type
    //   24	165	160	finally
    //   185	203	160	finally
    //   4	24	168	java/lang/InterruptedException
    //   165	168	168	java/lang/InterruptedException
    //   203	212	168	java/lang/InterruptedException
    //   353	356	168	java/lang/InterruptedException
    //   374	461	168	java/lang/InterruptedException
    //   212	353	348	finally
    //   356	374	348	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.j
 * JD-Core Version:    0.6.2
 */