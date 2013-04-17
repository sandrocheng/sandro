import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.os.Handler;
import com.tencent.qqpim.receiver.SyncStatusReceiver;
import com.tencent.tccsync.ITccSyncDbAdapter;
import com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType;
import com.tencent.tccsync.RemoteSync.SyncType;
import com.tencent.tccsync.RemoteSyncObserver;
import com.tencent.tccsync.SyncException;
import java.io.File;
import java.util.Vector;

public final class cl extends RemoteSyncObserver
  implements cf
{
  public static boolean a = false;
  public static boolean b = false;
  private long A;
  private boolean B = false;
  private boolean C = false;
  private String D;
  private SyncStatusReceiver E;
  private boolean F = false;
  private Handler G = null;
  private ay H = null;
  private RemoteSync.SyncType c;
  private ITccSyncDbAdapter.DbAdapterType d;
  private Vector<ITccSyncDbAdapter> e = new Vector();
  private Vector<String> f = new Vector();
  private String g;
  private int h = -1;
  private int i = 0;
  private int j = 0;
  private int k = 0;
  private int l = 0;
  private int m = 0;
  private int n = 0;
  private int o = 0;
  private int p = 0;
  private int q = 0;
  private long r = 0L;
  private long s = 0L;
  private boolean t = false;
  private Thread u = null;
  private String v = "[SYNCMODEL]Network Connection Problem";
  private String w = "[SYNCMODEL]Sync Exception";
  private String x = "[SYNCMODEL]SYNC ENGINE ERROR, ERROR CODE: ";
  private ck y;
  private Context z;

  public cl(Context paramContext)
  {
    this.z = paramContext;
    this.y = new ck(paramContext);
    this.G = null;
    this.H = null;
    int i1;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      i1 = bool;
      if (i1 == 0)
        break label211;
      label185: this.C = bool;
      if (de.a != null)
        break label216;
    }
    label211: label216: for (String str = null; ; str = de.a + ".lock")
    {
      this.D = str;
      return;
      i1 = 0;
      break;
      bool = false;
      break label185;
    }
  }

  private void a(int paramInt1, long paramLong, int paramInt2, int paramInt3)
  {
    while (true)
    {
      try
      {
        boolean bool = this.B;
        if (bool)
          return;
        if (this.c == null)
          continue;
        switch (m()[this.c.ordinal()])
        {
        case 4:
          switch (n()[this.d.ordinal()])
          {
          case 3:
            long l1 = System.currentTimeMillis();
            ck localck = this.y;
            String str = cw.d().f();
            if (i1 != 0)
              break label490;
            i3 = this.j;
            if (i1 != 0)
              break label499;
            i4 = this.k;
            if (i1 != 0)
              break label508;
            i5 = this.l;
            long l2 = this.r;
            long l3 = this.s;
            int i6 = this.n;
            int i7 = this.o;
            int i8 = this.p;
            int i9 = this.j;
            int i10 = this.k;
            int i11 = this.l;
            bw localbw = bw.a(localck.a);
            if (localbw != null)
            {
              cs localcs = new cs();
              localcs.a = str;
              localcs.b = i2;
              localcs.c = paramLong;
              localcs.d = l1;
              localcs.e = i3;
              localcs.f = i4;
              localcs.g = i5;
              localcs.h = i1;
              localcs.i = l2;
              localcs.j = l3;
              localcs.k = paramInt1;
              localcs.m = i6;
              localcs.n = i7;
              localcs.o = i8;
              localcs.p = i9;
              localcs.q = i10;
              localcs.r = i11;
              localcs.s = 0;
              localcs.t = paramInt3;
              localcs.l = -1;
              localbw.a(localcs);
            }
            this.B = true;
            continue;
          case 5:
          case 7:
          case 8:
          case 13:
          case 14:
          case 4:
          case 6:
          case 9:
          case 10:
          case 11:
          case 12:
          }
          break;
        case 5:
        case 9:
        case 6:
        case 7:
        case 8:
        case 2:
        case 3:
        }
      }
      finally
      {
      }
      int i1 = 0;
      continue;
      i1 = 1;
      continue;
      i1 = 2;
      continue;
      int i2 = 0;
      continue;
      i2 = 1;
      continue;
      i2 = 2;
      continue;
      i2 = 3;
      continue;
      i2 = 5;
      continue;
      i2 = 6;
      continue;
      label490: int i3 = this.n;
      continue;
      label499: int i4 = this.o;
      continue;
      label508: int i5 = this.p;
      continue;
      i1 = 0;
      continue;
      i2 = -1;
    }
  }

  private void a(Context paramContext, ITccSyncDbAdapter.DbAdapterType paramDbAdapterType, RemoteSync.SyncType paramSyncType, cb paramcb)
  {
    dk.b("SyncModel", "addAdapter(), DbAdapterType=" + paramDbAdapterType.toInt() + " opType=" + paramSyncType.toInt());
    this.d = paramDbAdapterType;
    int i1 = n()[paramDbAdapterType.ordinal()];
    Object localObject = null;
    switch (i1)
    {
    case 4:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    default:
    case 3:
    case 5:
    case 7:
    case 8:
    case 13:
    case 14:
    }
    while (true)
    {
      this.f.add(localObject);
      return;
      this.e.add(cu.a(paramContext, paramDbAdapterType, paramSyncType, paramcb));
      localObject = de.c(this.C);
      continue;
      this.e.add(cu.a(paramContext, paramDbAdapterType, paramSyncType, paramcb, null, false));
      localObject = de.d(this.C);
      if ((RemoteSync.SyncType.SYNC_ONE_WAY_FROM_SERVER.toInt() == paramSyncType.toInt()) || (RemoteSync.SyncType.SYNC_REFRESH_FROM_SERVER.toInt() == paramSyncType.toInt()) || (RemoteSync.SyncType.SYNC_RESTORE_FROM_SERVER.toInt() == paramSyncType.toInt()))
      {
        this.F = true;
        continue;
        this.e.add(cu.a(paramContext, paramDbAdapterType, paramSyncType, paramcb));
        localObject = de.e(this.C);
        continue;
        this.e.add(cu.a(paramContext, paramDbAdapterType, paramSyncType, paramcb));
        localObject = de.f(this.C);
        continue;
        this.e.add(cu.a(paramContext, paramDbAdapterType, paramSyncType, paramcb));
        localObject = de.g(this.C);
        continue;
        this.e.add(cu.a(paramContext, paramDbAdapterType, paramSyncType, paramcb));
        localObject = de.h(this.C);
      }
    }
  }

  private cf.a h()
  {
    a = true;
    this.E = new SyncStatusReceiver();
    de.b.registerReceiver(this.E, new IntentFilter("com.tencent.qqpim.action_req_is_sync_working"));
    de.b.registerReceiver(this.E, new IntentFilter("com.tencent.qqpim.action_resp_sync_is_working"));
    this.A = System.currentTimeMillis();
    try
    {
      cf.a locala2 = l();
      if (locala2 == cf.a.a)
        a(1, this.A, 0, this.h);
      while (true)
      {
        if ((this.F) && (cf.a.e != locala2))
          ((bt)bt.a(this.z)).b();
        if (this.E != null)
        {
          de.b.unregisterReceiver(this.E);
          this.E = null;
        }
        a = false;
        locala1 = locala2;
        return locala1;
        if (locala2 != cf.a.d)
          a(0, this.A, 0, this.h);
      }
    }
    catch (SyncException localSyncException)
    {
      while (true)
        if (this.t)
        {
          locala1 = cf.a.d;
        }
        else
        {
          this.g = localSyncException.getMessage();
          if (this.g == null)
            this.g = "unknown exception(SyncException), its getMessage() is null";
          dk.c("SyncModel", "safeWork(), " + this.g);
          a(0, this.A, 0, this.h);
          locala1 = cf.a.c;
        }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        cf.a locala1;
        if (this.t)
        {
          locala1 = cf.a.d;
        }
        else
        {
          this.g = localThrowable.getMessage();
          if (this.g == null)
            this.g = "unknown exception(Throwable), its getMessage() is null";
          dk.c("SyncModel", "safeWork(), " + this.g);
          a(0, this.A, 0, this.h);
          locala1 = cf.a.c;
        }
      }
    }
  }

  // ERROR //
  private boolean i()
  {
    // Byte code:
    //   0: new 369	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 151	cl:D	Ljava/lang/String;
    //   8: invokespecial 370	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_1
    //   12: aload_1
    //   13: invokevirtual 373	java/io/File:exists	()Z
    //   16: ifne +46 -> 62
    //   19: aload_1
    //   20: invokevirtual 377	java/io/File:getParentFile	()Ljava/io/File;
    //   23: invokevirtual 380	java/io/File:mkdirs	()Z
    //   26: pop
    //   27: aload_1
    //   28: invokevirtual 383	java/io/File:createNewFile	()Z
    //   31: istore 10
    //   33: new 385	java/io/FileOutputStream
    //   36: dup
    //   37: aload_1
    //   38: invokespecial 388	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   41: astore_3
    //   42: aload_3
    //   43: iconst_0
    //   44: invokevirtual 392	java/io/FileOutputStream:write	(I)V
    //   47: iload 10
    //   49: istore 6
    //   51: aload_3
    //   52: ifnull +7 -> 59
    //   55: aload_3
    //   56: invokevirtual 395	java/io/FileOutputStream:close	()V
    //   59: iload 6
    //   61: ireturn
    //   62: iconst_0
    //   63: istore 6
    //   65: aconst_null
    //   66: astore_3
    //   67: goto -16 -> 51
    //   70: astore 8
    //   72: ldc 248
    //   74: new 153	java/lang/StringBuilder
    //   77: dup
    //   78: ldc_w 397
    //   81: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload 8
    //   86: invokevirtual 398	java/io/IOException:toString	()Ljava/lang/String;
    //   89: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   95: invokestatic 361	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   98: goto -39 -> 59
    //   101: astore 5
    //   103: aconst_null
    //   104: astore_3
    //   105: ldc 248
    //   107: new 153	java/lang/StringBuilder
    //   110: dup
    //   111: ldc_w 397
    //   114: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   117: aload 5
    //   119: invokevirtual 399	java/lang/Throwable:toString	()Ljava/lang/String;
    //   122: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 361	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   131: iconst_0
    //   132: istore 6
    //   134: aload_3
    //   135: ifnull -76 -> 59
    //   138: aload_3
    //   139: invokevirtual 395	java/io/FileOutputStream:close	()V
    //   142: iconst_0
    //   143: istore 6
    //   145: goto -86 -> 59
    //   148: astore 7
    //   150: ldc 248
    //   152: new 153	java/lang/StringBuilder
    //   155: dup
    //   156: ldc_w 397
    //   159: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   162: aload 7
    //   164: invokevirtual 398	java/io/IOException:toString	()Ljava/lang/String;
    //   167: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokestatic 361	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: iconst_0
    //   177: istore 6
    //   179: goto -120 -> 59
    //   182: astore_2
    //   183: aconst_null
    //   184: astore_3
    //   185: aload_3
    //   186: ifnull +7 -> 193
    //   189: aload_3
    //   190: invokevirtual 395	java/io/FileOutputStream:close	()V
    //   193: aload_2
    //   194: athrow
    //   195: astore 4
    //   197: ldc 248
    //   199: new 153	java/lang/StringBuilder
    //   202: dup
    //   203: ldc_w 397
    //   206: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   209: aload 4
    //   211: invokevirtual 398	java/io/IOException:toString	()Ljava/lang/String;
    //   214: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   220: invokestatic 361	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   223: goto -30 -> 193
    //   226: astore_2
    //   227: goto -42 -> 185
    //   230: astore 5
    //   232: goto -127 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   55	59	70	java/io/IOException
    //   0	42	101	java/lang/Throwable
    //   138	142	148	java/io/IOException
    //   0	42	182	finally
    //   189	193	195	java/io/IOException
    //   42	47	226	finally
    //   105	131	226	finally
    //   42	47	230	java/lang/Throwable
  }

  private boolean j()
  {
    File localFile = new File(this.D);
    boolean bool1 = localFile.exists();
    boolean bool2 = false;
    if (bool1);
    try
    {
      boolean bool3 = localFile.delete();
      bool2 = bool3;
      return bool2;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        dk.c("SyncModel", "releaseLockFile(), " + localThrowable.toString());
        bool2 = false;
      }
    }
  }

  private boolean k()
  {
    b = false;
    Intent localIntent = new Intent();
    localIntent.setAction("com.tencent.qqpim.action_req_is_sync_working");
    localIntent.putExtra("package_name", de.b.getPackageName());
    de.b.sendBroadcast(localIntent);
    try
    {
      Thread.sleep(3000L);
      boolean bool1 = b;
      bool2 = false;
      if (bool1)
        return bool2;
    }
    catch (Exception localException)
    {
      while (true)
      {
        dk.c("SyncModel", "syncSendBroadcastAndCheckIfRemoteSyncRunning(), " + localException.toString());
        continue;
        j();
        boolean bool2 = true;
      }
    }
  }

  // ERROR //
  private cf.a l()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 117	cl:C	Z
    //   4: ifeq +30 -> 34
    //   7: aload_0
    //   8: invokespecial 441	cl:i	()Z
    //   11: ifne +8 -> 19
    //   14: aload_0
    //   15: invokespecial 443	cl:k	()Z
    //   18: pop
    //   19: aload_0
    //   20: invokespecial 443	cl:k	()Z
    //   23: ifne +11 -> 34
    //   26: getstatic 337	cf$a:e	Lcf$a;
    //   29: astore 25
    //   31: aload 25
    //   33: areturn
    //   34: iconst_0
    //   35: putstatic 445	de:c	Z
    //   38: aload_0
    //   39: invokestatic 449	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   42: putfield 101	cl:u	Ljava/lang/Thread;
    //   45: aload_0
    //   46: lconst_0
    //   47: putfield 97	cl:s	J
    //   50: aload_0
    //   51: lconst_0
    //   52: putfield 95	cl:r	J
    //   55: aload_0
    //   56: getfield 117	cl:C	Z
    //   59: invokestatic 452	de:b	(Z)Z
    //   62: ifne +11 -> 73
    //   65: getstatic 327	cf$a:c	Lcf$a;
    //   68: astore 25
    //   70: goto -39 -> 31
    //   73: new 454	com/tencent/tccsync/RemoteSync
    //   76: dup
    //   77: invokespecial 455	com/tencent/tccsync/RemoteSync:<init>	()V
    //   80: astore_1
    //   81: invokestatic 199	cw:d	()Lcw;
    //   84: invokevirtual 457	cw:e	()Ljava/lang/String;
    //   87: astore_2
    //   88: invokestatic 199	cw:d	()Lcw;
    //   91: invokevirtual 201	cw:f	()Ljava/lang/String;
    //   94: astore_3
    //   95: invokestatic 459	de:b	()Ljava/lang/String;
    //   98: astore 4
    //   100: aload_0
    //   101: getfield 117	cl:C	Z
    //   104: invokestatic 461	de:a	(Z)Ljava/lang/String;
    //   107: astore 5
    //   109: getstatic 333	cf$a:a	Lcf$a;
    //   112: astore 6
    //   114: aload_1
    //   115: aload 4
    //   117: aload_3
    //   118: aload_2
    //   119: aload 5
    //   121: aload_0
    //   122: ldc_w 462
    //   125: sipush 272
    //   128: invokevirtual 466	com/tencent/tccsync/RemoteSync:setConfigure	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tccsync/RemoteSyncObserver;II)V
    //   131: iconst_0
    //   132: istore 7
    //   134: iload 7
    //   136: aload_0
    //   137: getfield 73	cl:f	Ljava/util/Vector;
    //   140: invokevirtual 469	java/util/Vector:size	()I
    //   143: if_icmplt +163 -> 306
    //   146: ldc 248
    //   148: new 153	java/lang/StringBuilder
    //   151: dup
    //   152: ldc_w 471
    //   155: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: aload_3
    //   159: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   168: aload_1
    //   169: invokevirtual 474	com/tencent/tccsync/RemoteSync:start	()I
    //   172: istore 11
    //   174: aconst_null
    //   175: astore 12
    //   177: iload 11
    //   179: istore 13
    //   181: iconst_0
    //   182: istore 14
    //   184: iload 13
    //   186: ifeq +239 -> 425
    //   189: aload 6
    //   191: astore 25
    //   193: ldc 248
    //   195: new 153	java/lang/StringBuilder
    //   198: dup
    //   199: ldc_w 476
    //   202: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   205: invokestatic 194	java/lang/System:currentTimeMillis	()J
    //   208: invokestatic 479	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   211: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   220: aload_0
    //   221: getfield 99	cl:t	Z
    //   224: ifeq +981 -> 1205
    //   227: getstatic 350	cf$a:d	Lcf$a;
    //   230: astore 25
    //   232: invokestatic 194	java/lang/System:currentTimeMillis	()J
    //   235: lstore 27
    //   237: aload_1
    //   238: invokevirtual 482	com/tencent/tccsync/RemoteSync:end	()V
    //   241: invokestatic 194	java/lang/System:currentTimeMillis	()J
    //   244: lload 27
    //   246: lsub
    //   247: lstore 29
    //   249: aload_0
    //   250: aconst_null
    //   251: putfield 101	cl:u	Ljava/lang/Thread;
    //   254: aload_0
    //   255: getfield 99	cl:t	Z
    //   258: ifeq +8 -> 266
    //   261: getstatic 350	cf$a:d	Lcf$a;
    //   264: astore 25
    //   266: ldc 248
    //   268: new 153	java/lang/StringBuilder
    //   271: dup
    //   272: ldc_w 484
    //   275: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   278: lload 29
    //   280: invokestatic 479	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   283: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: ldc_w 486
    //   289: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: aload 25
    //   294: invokevirtual 489	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   297: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   303: goto -272 -> 31
    //   306: aload_0
    //   307: getfield 71	cl:e	Ljava/util/Vector;
    //   310: iload 7
    //   312: invokevirtual 493	java/util/Vector:get	(I)Ljava/lang/Object;
    //   315: checkcast 495	com/tencent/tccsync/ITccSyncDbAdapter
    //   318: astore 8
    //   320: aload_0
    //   321: getfield 73	cl:f	Ljava/util/Vector;
    //   324: iload 7
    //   326: invokevirtual 493	java/util/Vector:get	(I)Ljava/lang/Object;
    //   329: checkcast 141	java/lang/String
    //   332: astore 9
    //   334: aload 8
    //   336: ifnull +1039 -> 1375
    //   339: aload 8
    //   341: invokeinterface 499 1 0
    //   346: astore 10
    //   348: aload 10
    //   350: ifnull +17 -> 367
    //   353: aload 10
    //   355: invokevirtual 259	com/tencent/tccsync/RemoteSync$SyncType:toInt	()I
    //   358: getstatic 502	com/tencent/tccsync/RemoteSync$SyncType:SYNC_NONE	Lcom/tencent/tccsync/RemoteSync$SyncType;
    //   361: invokevirtual 259	com/tencent/tccsync/RemoteSync$SyncType:toInt	()I
    //   364: if_icmpne +9 -> 373
    //   367: aload_0
    //   368: getfield 172	cl:c	Lcom/tencent/tccsync/RemoteSync$SyncType;
    //   371: astore 10
    //   373: ldc 248
    //   375: new 153	java/lang/StringBuilder
    //   378: dup
    //   379: ldc_w 504
    //   382: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   385: aload 10
    //   387: invokevirtual 259	com/tencent/tccsync/RemoteSync$SyncType:toInt	()I
    //   390: invokevirtual 256	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   393: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   399: aload 9
    //   401: ifnonnull +8 -> 409
    //   404: ldc_w 506
    //   407: astore 9
    //   409: aload_1
    //   410: aload 10
    //   412: aload 8
    //   414: aload 9
    //   416: invokevirtual 510	com/tencent/tccsync/RemoteSync:addDataSource	(Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;)V
    //   419: iinc 7 1
    //   422: goto -288 -> 134
    //   425: aload_0
    //   426: getfield 99	cl:t	Z
    //   429: ifne -240 -> 189
    //   432: ldc 248
    //   434: new 153	java/lang/StringBuilder
    //   437: dup
    //   438: ldc_w 512
    //   441: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   444: invokestatic 194	java/lang/System:currentTimeMillis	()J
    //   447: invokestatic 479	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   450: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   453: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   456: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   459: iload 14
    //   461: iconst_1
    //   462: iadd
    //   463: istore 15
    //   465: aload_1
    //   466: invokevirtual 515	com/tencent/tccsync/RemoteSync:getPostUrl	()Ljava/lang/String;
    //   469: astore 16
    //   471: aload_1
    //   472: invokevirtual 519	com/tencent/tccsync/RemoteSync:GetPostBuf	()[B
    //   475: astore 37
    //   477: aload 37
    //   479: astore 18
    //   481: aload 18
    //   483: ifnonnull +147 -> 630
    //   486: ldc 248
    //   488: ldc_w 521
    //   491: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   494: iconst_1
    //   495: newarray byte
    //   497: dup
    //   498: iconst_0
    //   499: iconst_1
    //   500: bastore
    //   501: astore 18
    //   503: invokestatic 526	cj:a	()Lcj;
    //   506: aload 16
    //   508: invokevirtual 529	cj:a	(Ljava/lang/String;)Ldd;
    //   511: astore 31
    //   513: aload 31
    //   515: astore 23
    //   517: aload 23
    //   519: ifnonnull +137 -> 656
    //   522: getstatic 327	cf$a:c	Lcf$a;
    //   525: astore 24
    //   527: aload_0
    //   528: aload_0
    //   529: getfield 105	cl:v	Ljava/lang/String;
    //   532: putfield 355	cl:g	Ljava/lang/String;
    //   535: ldc 248
    //   537: new 153	java/lang/StringBuilder
    //   540: dup
    //   541: ldc_w 531
    //   544: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   547: aload_0
    //   548: getfield 105	cl:v	Ljava/lang/String;
    //   551: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   554: ldc_w 533
    //   557: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   563: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   566: aload 23
    //   568: ifnull +789 -> 1357
    //   571: aload 23
    //   573: invokevirtual 537	dd:d	()V
    //   576: invokestatic 526	cj:a	()Lcj;
    //   579: aload 23
    //   581: invokevirtual 540	cj:a	(Ldd;)V
    //   584: aload 24
    //   586: astore 25
    //   588: iload 15
    //   590: istore 14
    //   592: goto -399 -> 193
    //   595: astore 17
    //   597: ldc 248
    //   599: new 153	java/lang/StringBuilder
    //   602: dup
    //   603: ldc_w 542
    //   606: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   609: aload 17
    //   611: invokevirtual 399	java/lang/Throwable:toString	()Ljava/lang/String;
    //   614: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   617: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   620: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   623: aload 12
    //   625: astore 18
    //   627: goto -146 -> 481
    //   630: aload 18
    //   632: arraylength
    //   633: ifne -130 -> 503
    //   636: ldc 248
    //   638: ldc_w 544
    //   641: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   644: iconst_1
    //   645: newarray byte
    //   647: dup
    //   648: iconst_0
    //   649: iconst_2
    //   650: bastore
    //   651: astore 18
    //   653: goto -150 -> 503
    //   656: aload 23
    //   658: bipush 6
    //   660: invokevirtual 546	dd:a	(I)V
    //   663: aload 23
    //   665: aload 18
    //   667: invokevirtual 549	dd:a	([B)I
    //   670: pop
    //   671: aload 23
    //   673: invokevirtual 551	dd:a	()I
    //   676: istore 34
    //   678: sipush 200
    //   681: iload 34
    //   683: if_icmpeq +146 -> 829
    //   686: getstatic 327	cf$a:c	Lcf$a;
    //   689: astore 24
    //   691: aload_0
    //   692: aload_0
    //   693: getfield 105	cl:v	Ljava/lang/String;
    //   696: putfield 355	cl:g	Ljava/lang/String;
    //   699: ldc 248
    //   701: new 153	java/lang/StringBuilder
    //   704: dup
    //   705: ldc_w 531
    //   708: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   711: aload_0
    //   712: getfield 105	cl:v	Ljava/lang/String;
    //   715: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   718: ldc_w 553
    //   721: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   724: iload 34
    //   726: invokevirtual 256	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   729: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   732: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   735: goto -169 -> 566
    //   738: astore 32
    //   740: aload 23
    //   742: astore 21
    //   744: aload 32
    //   746: astore 20
    //   748: getstatic 327	cf$a:c	Lcf$a;
    //   751: astore 24
    //   753: aload_0
    //   754: aload_0
    //   755: getfield 105	cl:v	Ljava/lang/String;
    //   758: putfield 355	cl:g	Ljava/lang/String;
    //   761: ldc 248
    //   763: new 153	java/lang/StringBuilder
    //   766: dup
    //   767: ldc_w 555
    //   770: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   773: aload_0
    //   774: getfield 105	cl:v	Ljava/lang/String;
    //   777: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   780: ldc_w 557
    //   783: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   786: aload 20
    //   788: invokevirtual 437	java/lang/Exception:toString	()Ljava/lang/String;
    //   791: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   794: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   797: invokestatic 361	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   800: aload 21
    //   802: ifnull +555 -> 1357
    //   805: aload 21
    //   807: invokevirtual 537	dd:d	()V
    //   810: invokestatic 526	cj:a	()Lcj;
    //   813: aload 21
    //   815: invokevirtual 540	cj:a	(Ldd;)V
    //   818: aload 24
    //   820: astore 25
    //   822: iload 15
    //   824: istore 14
    //   826: goto -633 -> 193
    //   829: ldc 248
    //   831: new 153	java/lang/StringBuilder
    //   834: dup
    //   835: ldc_w 559
    //   838: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   841: invokestatic 194	java/lang/System:currentTimeMillis	()J
    //   844: invokestatic 479	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   847: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   850: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   853: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   856: aload_0
    //   857: aload_0
    //   858: getfield 95	cl:r	J
    //   861: aload 18
    //   863: arraylength
    //   864: i2l
    //   865: ladd
    //   866: putfield 95	cl:r	J
    //   869: ldc 248
    //   871: new 153	java/lang/StringBuilder
    //   874: dup
    //   875: ldc_w 561
    //   878: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   881: new 563	java/lang/Long
    //   884: dup
    //   885: aload_0
    //   886: getfield 95	cl:r	J
    //   889: invokespecial 565	java/lang/Long:<init>	(J)V
    //   892: invokevirtual 566	java/lang/Long:toString	()Ljava/lang/String;
    //   895: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   898: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   901: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   904: aload_0
    //   905: getfield 99	cl:t	Z
    //   908: ifne +460 -> 1368
    //   911: aload 23
    //   913: invokevirtual 568	dd:c	()[B
    //   916: astore 35
    //   918: aload 35
    //   920: ifnonnull +73 -> 993
    //   923: getstatic 327	cf$a:c	Lcf$a;
    //   926: astore 24
    //   928: aload_0
    //   929: aload_0
    //   930: getfield 105	cl:v	Ljava/lang/String;
    //   933: putfield 355	cl:g	Ljava/lang/String;
    //   936: ldc 248
    //   938: new 153	java/lang/StringBuilder
    //   941: dup
    //   942: ldc_w 531
    //   945: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   948: aload_0
    //   949: getfield 105	cl:v	Ljava/lang/String;
    //   952: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   955: ldc_w 570
    //   958: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   961: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   964: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   967: goto -401 -> 566
    //   970: astore 22
    //   972: aload 23
    //   974: ifnull +16 -> 990
    //   977: aload 23
    //   979: invokevirtual 537	dd:d	()V
    //   982: invokestatic 526	cj:a	()Lcj;
    //   985: aload 23
    //   987: invokevirtual 540	cj:a	(Ldd;)V
    //   990: aload 22
    //   992: athrow
    //   993: aload_0
    //   994: aload_0
    //   995: getfield 97	cl:s	J
    //   998: aload 35
    //   1000: arraylength
    //   1001: i2l
    //   1002: ladd
    //   1003: putfield 97	cl:s	J
    //   1006: ldc 248
    //   1008: new 153	java/lang/StringBuilder
    //   1011: dup
    //   1012: ldc_w 572
    //   1015: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1018: new 563	java/lang/Long
    //   1021: dup
    //   1022: aload_0
    //   1023: getfield 97	cl:s	J
    //   1026: invokespecial 565	java/lang/Long:<init>	(J)V
    //   1029: invokevirtual 566	java/lang/Long:toString	()Ljava/lang/String;
    //   1032: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1035: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1038: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1041: aload 23
    //   1043: ifnull +16 -> 1059
    //   1046: aload 23
    //   1048: invokevirtual 537	dd:d	()V
    //   1051: invokestatic 526	cj:a	()Lcj;
    //   1054: aload 23
    //   1056: invokevirtual 540	cj:a	(Ldd;)V
    //   1059: ldc 248
    //   1061: new 153	java/lang/StringBuilder
    //   1064: dup
    //   1065: ldc_w 574
    //   1068: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1071: invokestatic 194	java/lang/System:currentTimeMillis	()J
    //   1074: invokestatic 479	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   1077: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1080: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1083: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1086: aload_1
    //   1087: aload 35
    //   1089: invokevirtual 578	com/tencent/tccsync/RemoteSync:writeBackRecvBuf	([B)V
    //   1092: ldc 248
    //   1094: new 153	java/lang/StringBuilder
    //   1097: dup
    //   1098: ldc_w 580
    //   1101: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1104: invokestatic 194	java/lang/System:currentTimeMillis	()J
    //   1107: invokestatic 479	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   1110: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1113: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1116: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1119: ldc 248
    //   1121: new 153	java/lang/StringBuilder
    //   1124: dup
    //   1125: ldc_w 582
    //   1128: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1131: invokestatic 194	java/lang/System:currentTimeMillis	()J
    //   1134: invokestatic 479	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   1137: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1140: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1143: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1146: aload_1
    //   1147: invokevirtual 585	com/tencent/tccsync/RemoteSync:next	()I
    //   1150: istore 36
    //   1152: ldc 248
    //   1154: new 153	java/lang/StringBuilder
    //   1157: dup
    //   1158: ldc_w 587
    //   1161: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1164: iload 36
    //   1166: invokevirtual 256	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1169: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1172: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1175: iconst_3
    //   1176: iload 36
    //   1178: if_icmpeq +18 -> 1196
    //   1181: iload 36
    //   1183: istore 13
    //   1185: aload 18
    //   1187: astore 12
    //   1189: iload 15
    //   1191: istore 14
    //   1193: goto -1009 -> 184
    //   1196: aload_1
    //   1197: invokevirtual 590	com/tencent/tccsync/RemoteSync:nextStep	()I
    //   1200: istore 36
    //   1202: goto -27 -> 1175
    //   1205: aload_1
    //   1206: invokevirtual 593	com/tencent/tccsync/RemoteSync:getLastError	()I
    //   1209: istore 26
    //   1211: ldc 248
    //   1213: new 153	java/lang/StringBuilder
    //   1216: dup
    //   1217: ldc_w 555
    //   1220: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1223: aload_0
    //   1224: getfield 113	cl:x	Ljava/lang/String;
    //   1227: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1230: iload 26
    //   1232: invokevirtual 256	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1235: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1238: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1241: iload 14
    //   1243: iconst_1
    //   1244: if_icmpne +25 -> 1269
    //   1247: iload 26
    //   1249: sipush -32215
    //   1252: if_icmpne +17 -> 1269
    //   1255: getstatic 595	cf$a:b	Lcf$a;
    //   1258: astore 25
    //   1260: invokestatic 199	cw:d	()Lcw;
    //   1263: invokevirtual 597	cw:a	()V
    //   1266: goto -1034 -> 232
    //   1269: aload 25
    //   1271: getstatic 327	cf$a:c	Lcf$a;
    //   1274: if_acmpeq -1042 -> 232
    //   1277: iload 26
    //   1279: ifeq -1047 -> 232
    //   1282: getstatic 327	cf$a:c	Lcf$a;
    //   1285: astore 25
    //   1287: aload_0
    //   1288: aload_0
    //   1289: getfield 109	cl:w	Ljava/lang/String;
    //   1292: putfield 355	cl:g	Ljava/lang/String;
    //   1295: ldc 248
    //   1297: new 153	java/lang/StringBuilder
    //   1300: dup
    //   1301: ldc_w 555
    //   1304: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1307: aload_0
    //   1308: getfield 113	cl:x	Ljava/lang/String;
    //   1311: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1314: iload 26
    //   1316: invokevirtual 256	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1319: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1322: invokestatic 264	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1325: goto -1093 -> 232
    //   1328: astore 22
    //   1330: aconst_null
    //   1331: astore 23
    //   1333: goto -361 -> 972
    //   1336: astore 22
    //   1338: aload 21
    //   1340: astore 23
    //   1342: goto -370 -> 972
    //   1345: astore 19
    //   1347: aload 19
    //   1349: astore 20
    //   1351: aconst_null
    //   1352: astore 21
    //   1354: goto -606 -> 748
    //   1357: aload 24
    //   1359: astore 25
    //   1361: iload 15
    //   1363: istore 14
    //   1365: goto -1172 -> 193
    //   1368: aload 6
    //   1370: astore 24
    //   1372: goto -806 -> 566
    //   1375: aconst_null
    //   1376: astore 10
    //   1378: goto -1005 -> 373
    //
    // Exception table:
    //   from	to	target	type
    //   471	477	595	java/lang/Throwable
    //   522	566	738	java/lang/Exception
    //   656	735	738	java/lang/Exception
    //   829	967	738	java/lang/Exception
    //   993	1041	738	java/lang/Exception
    //   522	566	970	finally
    //   656	735	970	finally
    //   829	967	970	finally
    //   993	1041	970	finally
    //   503	513	1328	finally
    //   748	800	1336	finally
    //   503	513	1345	java/lang/Exception
  }

  public final void a(Context paramContext)
  {
    a(paramContext, ITccSyncDbAdapter.DbAdapterType.CONTACT, RemoteSync.SyncType.SYNC_NONE, null);
  }

  public final void a(Context paramContext, ITccSyncDbAdapter.DbAdapterType paramDbAdapterType, cb paramcb)
  {
    a(paramContext, paramDbAdapterType, RemoteSync.SyncType.SYNC_NONE, paramcb);
  }

  public final boolean a()
  {
    return cw.d().b();
  }

  public final cf.a b()
  {
    this.c = RemoteSync.SyncType.SYNC_RESTORE_FROM_SERVER;
    return h();
  }

  public final cf.a c()
  {
    this.c = RemoteSync.SyncType.SYNC_ONE_WAY_FROM_SERVER;
    return h();
  }

  public final cf.a d()
  {
    this.c = RemoteSync.SyncType.SYNC_REFRESH_FROM_CLIENT;
    return h();
  }

  public final cf.a e()
  {
    this.c = RemoteSync.SyncType.SYNC_ONE_WAY_FROM_CLIENT;
    return h();
  }

  public final void f()
  {
    if (this.u != null)
      this.u.interrupt();
    this.t = true;
    de.c = true;
    a(2, this.A, 0, this.h);
  }

  public final int g()
  {
    return this.q;
  }

  public final void handleESyncProgressNotify(int paramInt1, int paramInt2)
  {
    this.q = paramInt1;
  }

  public final void handleESyncShDbBeginScan(int paramInt1, int paramInt2)
  {
  }

  public final void handleESyncShDbClientAdd(int paramInt1, int paramInt2)
  {
    this.n = (paramInt2 + this.n);
    dk.b("SyncModel", "handleESyncShDbClientAdd(), clientAddedNum=" + this.n + " param1=" + paramInt1 + " param2=" + paramInt2);
  }

  public final void handleESyncShDbClientDel(int paramInt1, int paramInt2)
  {
    this.p = (1 + this.p);
    dk.b("SyncModel", "handleESyncShDbClientDel() clientDeletedNum=" + this.p + " param1=" + paramInt1 + " param2=" + paramInt2);
  }

  public final void handleESyncShDbClientMdf(int paramInt1, int paramInt2)
  {
    this.o = (1 + this.o);
    dk.b("SyncModel", "handleESyncShDbClientMdf() clientModifiedNum=" + this.o + " param1=" + paramInt1 + " param2=" + paramInt2);
  }

  public final void handleESyncShDbScanOkNotify(int paramInt1, int paramInt2)
  {
    this.i = (1 + this.i);
  }

  public final void handleESyncShDbServerActionNotify(int paramInt1, int paramInt2)
  {
    this.m = (paramInt2 + this.m);
  }

  public final void handleESyncShDbServerAdd(int paramInt1, int paramInt2)
  {
    this.j = (1 + this.j);
    dk.b("SyncModel", "handleESyncShDbServerAdd() serverAddedNum=" + this.j + " param1=" + paramInt1 + " param2=" + paramInt2);
  }

  public final void handleESyncShDbServerDel(int paramInt1, int paramInt2)
  {
    this.l = (1 + this.l);
    dk.b("SyncModel", "handleESyncShDbServerDel() serverDeletedNum=" + this.l + " param1=" + paramInt1 + " param2=" + paramInt2);
  }

  public final void handleESyncShDbServerMdf(int paramInt1, int paramInt2)
  {
    this.k = (1 + this.k);
    dk.b("SyncModel", "handleESyncShDbServerMdf() serverModifiedNum=" + this.k + " param1=" + paramInt1 + " param2=" + paramInt2);
  }

  public final void handleESyncShDbServerNumOfChange(int paramInt1, int paramInt2)
  {
  }

  public final void handleESyncShMapServerRefresh(int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cl
 * JD-Core Version:    0.6.2
 */