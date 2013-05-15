package com.avast.android.generic.internet;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.b.a;
import com.avast.android.generic.b.k;
import com.avast.android.generic.b.r;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.t;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class HttpSender
{
  private AvastService a = null;
  private ae b = null;
  private ae c = null;
  private boolean d = true;
  private Thread e = null;
  private boolean f = false;
  private b g;
  private Object h = new Object();
  private Object i = new Object();
  private HttpSender.HttpStatusChangedBroadcastReceiver j = null;
  private ConnectivityManager k = null;
  private LinkedList l = new LinkedList();

  public HttpSender(AvastService paramAvastService)
  {
    t.a("AvastComms", paramAvastService, "Initializing HTTP sender...");
    this.a = paramAvastService;
    this.k = ((ConnectivityManager)paramAvastService.getSystemService("connectivity"));
    this.g = ((b)ad.a(paramAvastService, b.class));
    this.b = ((ae)ad.a(paramAvastService, ag.class));
    this.c = ((ae)ad.a(paramAvastService, ah.class));
    synchronized (this.h)
    {
      this.e = null;
      this.d = false;
    }
    synchronized (this.i)
    {
      this.j = new HttpSender.HttpStatusChangedBroadcastReceiver(this);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
      paramAvastService.registerReceiver(this.j, localIntentFilter);
      t.a("AvastComms", paramAvastService, "Initialized HTTP sender");
      return;
      localObject2 = finally;
      throw localObject2;
    }
  }

  private void a(h paramh)
  {
    synchronized (this.l)
    {
      t.a("AvastComms", this.a, "HTTP sender is queueing HTTP traffic...");
      this.l.add(paramh);
      Collections.sort(this.l);
      t.a("AvastComms", this.a, "HTTP sender queued HTTP traffic (length " + this.l.size() + ")");
      return;
    }
  }

  private boolean b(h paramh)
  {
    synchronized (this.l)
    {
      this.l.remove(paramh);
      paramh.g = (1 + paramh.g);
      if (paramh.g <= 3)
      {
        long l1 = 2000 * (paramh.g * paramh.g);
        t.a("AvastComms", this.a, "HTTP sender is requeueing reliable HTTP descriptor (retry count " + paramh.g + ", timeout " + l1 + "ms)...");
        paramh.h = (l1 + new Date().getTime());
        a(paramh);
        bool = false;
        break label225;
      }
      if (!AvastService.b(this.a))
      {
        t.a("AvastComms", this.a, "HTTP sender is not able to forward reliable HTTP descriptor because SMS permission is missing");
        d locald = paramh.c;
        if (locald != null);
        try
        {
          paramh.c.a(null);
          bool = true;
        }
        catch (Exception localException)
        {
          while (true)
            t.a("AvastComms", this.a, "HTTP sender error callback error", localException);
        }
      }
    }
    t.a("AvastComms", this.a, "HTTP sender is SMSing reliable HTTP descriptor because of too much failures");
    paramh.g = 0;
    c(paramh);
    boolean bool = true;
    label225: return bool;
  }

  private void c(h paramh)
  {
    a locala = paramh.d;
    if ((locala != null) && (!locala.b()) && (paramh.d.e().A()))
      if (locala.f() != null);
    while (true)
    {
      return;
      if ((!locala.e().c()) || (!TextUtils.isEmpty(locala.f())))
      {
        locala.b(true);
        try
        {
          if (locala.j())
          {
            if (paramh.e)
              locala.m();
            while (true)
            {
              t.a("AvastComms", this.a, "HTTP sender finished SMS forwarding");
              break;
              locala.k();
            }
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            t.a("AvastComms", this.a, "HTTP sender error in handler handling", localException2);
            continue;
            locala.l();
          }
        }
        t.a("AvastComms", this.a, "HTTP sender, SMSing is disabled");
        if (paramh.c != null)
          try
          {
            paramh.c.a(null);
          }
          catch (Exception localException1)
          {
            t.a("AvastComms", this.a, "HTTP sender error callback error", localException1);
          }
      }
    }
  }

  private void f()
  {
    synchronized (this.l)
    {
      int m = this.l.size();
      int n = 0;
      if (m > 0)
      {
        boolean bool = this.d;
        n = 0;
        if (bool)
          n = 1;
      }
      if (n == 0);
    }
    synchronized (this.h)
    {
      if (this.e != null)
      {
        if (this.e.isAlive())
        {
          this.e.interrupt();
          return;
          localObject1 = finally;
          throw localObject1;
        }
        this.e = null;
      }
      t.a("AvastComms", this.a, "Starting HTTP sender thread...");
      this.f = false;
      this.e = new Thread(new f(this), "httpSender");
      this.e.start();
      t.a("AvastComms", this.a, "Started HTTP sender thread");
    }
  }

  // ERROR //
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 55	com/avast/android/generic/internet/HttpSender:l	Ljava/util/LinkedList;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 55	com/avast/android/generic/internet/HttpSender:l	Ljava/util/LinkedList;
    //   11: invokevirtual 283	java/util/LinkedList:peek	()Ljava/lang/Object;
    //   14: checkcast 159	com/avast/android/generic/internet/h
    //   17: astore_3
    //   18: aload_3
    //   19: ifnonnull +8 -> 27
    //   22: aload_1
    //   23: monitorexit
    //   24: goto +776 -> 800
    //   27: aload_1
    //   28: monitorexit
    //   29: new 173	java/util/Date
    //   32: dup
    //   33: invokespecial 174	java/util/Date:<init>	()V
    //   36: invokevirtual 178	java/util/Date:getTime	()J
    //   39: lstore 4
    //   41: aload_3
    //   42: getfield 181	com/avast/android/generic/internet/h:h	J
    //   45: lload 4
    //   47: lcmp
    //   48: ifgt +752 -> 800
    //   51: ldc 57
    //   53: aload_0
    //   54: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   57: ldc_w 285
    //   60: invokestatic 64	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   63: aload_3
    //   64: getfield 191	com/avast/android/generic/internet/h:c	Lcom/avast/android/generic/internet/d;
    //   67: ifnull +12 -> 79
    //   70: aload_3
    //   71: getfield 191	com/avast/android/generic/internet/h:c	Lcom/avast/android/generic/internet/d;
    //   74: invokeinterface 287 1 0
    //   79: ldc_w 289
    //   82: aload_0
    //   83: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   86: invokevirtual 292	com/avast/android/generic/service/AvastService:getPackageName	()Ljava/lang/String;
    //   89: invokevirtual 297	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   92: istore 10
    //   94: new 129	java/lang/StringBuilder
    //   97: dup
    //   98: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   101: astore 11
    //   103: iload 10
    //   105: ifeq +485 -> 590
    //   108: ldc_w 299
    //   111: astore 12
    //   113: aload 11
    //   115: aload 12
    //   117: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: ldc_w 301
    //   123: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: astore 13
    //   131: aload_0
    //   132: getfield 34	com/avast/android/generic/internet/HttpSender:b	Lcom/avast/android/generic/ae;
    //   135: invokevirtual 304	com/avast/android/generic/ae:u	()Z
    //   138: istore 14
    //   140: aload_3
    //   141: getfield 307	com/avast/android/generic/internet/h:a	Lcom/avast/a/a/a/ak;
    //   144: ifnull +657 -> 801
    //   147: aload_3
    //   148: getfield 307	com/avast/android/generic/internet/h:a	Lcom/avast/a/a/a/ak;
    //   151: invokevirtual 312	com/avast/a/a/a/ak:a	()Lcom/avast/a/a/a/ak;
    //   154: astore 15
    //   156: iload 14
    //   158: ifeq +440 -> 598
    //   161: ldc_w 314
    //   164: ldc_w 316
    //   167: invokestatic 319	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   170: aload_0
    //   171: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   174: invokevirtual 322	com/avast/android/generic/service/AvastService:n	()V
    //   177: aload_0
    //   178: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   181: invokevirtual 323	com/avast/android/generic/service/AvastService:m	()V
    //   184: invokestatic 328	java/lang/System:currentTimeMillis	()J
    //   187: lstore 28
    //   189: aload_0
    //   190: getfield 83	com/avast/android/generic/internet/HttpSender:g	Lcom/avast/android/generic/internet/b;
    //   193: aload_0
    //   194: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   197: aload_0
    //   198: getfield 34	com/avast/android/generic/internet/HttpSender:b	Lcom/avast/android/generic/ae;
    //   201: aload_0
    //   202: getfield 36	com/avast/android/generic/internet/HttpSender:c	Lcom/avast/android/generic/ae;
    //   205: aload 15
    //   207: aload_3
    //   208: getfield 330	com/avast/android/generic/internet/h:i	I
    //   211: lload 28
    //   213: invokevirtual 333	com/avast/android/generic/internet/b:a	(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Lcom/avast/a/a/a/ak;IJ)Z
    //   216: pop
    //   217: aload_0
    //   218: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   221: aload 15
    //   223: lload 28
    //   225: invokestatic 336	com/avast/android/generic/internet/b:a	(Landroid/content/Context;Lcom/avast/a/a/a/ak;J)Z
    //   228: pop
    //   229: ldc_w 314
    //   232: new 129	java/lang/StringBuilder
    //   235: dup
    //   236: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   239: ldc_w 338
    //   242: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: invokestatic 328	java/lang/System:currentTimeMillis	()J
    //   248: lload 28
    //   250: lsub
    //   251: invokevirtual 169	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   254: ldc_w 340
    //   257: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: invokestatic 319	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   266: lload 28
    //   268: lstore 18
    //   270: iconst_3
    //   271: aload_3
    //   272: getfield 162	com/avast/android/generic/internet/h:g	I
    //   275: isub
    //   276: ifle +531 -> 807
    //   279: iconst_1
    //   280: istore 20
    //   282: aload_3
    //   283: getfield 343	com/avast/android/generic/internet/h:b	Lcom/avast/android/generic/internet/k;
    //   286: ifnonnull +364 -> 650
    //   289: new 129	java/lang/StringBuilder
    //   292: dup
    //   293: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   296: aload 13
    //   298: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: ldc_w 345
    //   304: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   310: astore 27
    //   312: ldc 57
    //   314: aload_0
    //   315: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   318: new 129	java/lang/StringBuilder
    //   321: dup
    //   322: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   325: ldc_w 347
    //   328: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: aload 27
    //   333: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: ldc_w 349
    //   339: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: aload_3
    //   343: invokevirtual 351	com/avast/android/generic/internet/h:a	()Ljava/lang/String;
    //   346: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: ldc_w 353
    //   352: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   358: invokestatic 64	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   361: aload_0
    //   362: aload_0
    //   363: getfield 83	com/avast/android/generic/internet/HttpSender:g	Lcom/avast/android/generic/internet/b;
    //   366: aload_0
    //   367: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   370: aload 27
    //   372: aload 15
    //   374: iload 20
    //   376: invokevirtual 356	com/avast/android/generic/internet/b:a	(Landroid/content/Context;Ljava/lang/String;Lcom/avast/a/a/a/ak;Z)Lcom/avast/a/a/a/h;
    //   379: invokevirtual 359	com/avast/android/generic/internet/HttpSender:a	(Lcom/avast/a/a/a/h;)Z
    //   382: istore 23
    //   384: iload 14
    //   386: ifeq +75 -> 461
    //   389: iload 23
    //   391: ifne +70 -> 461
    //   394: ldc_w 314
    //   397: ldc_w 361
    //   400: invokestatic 319	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   403: invokestatic 362	com/avast/android/generic/internet/b:a	()V
    //   406: aload_0
    //   407: getfield 34	com/avast/android/generic/internet/HttpSender:b	Lcom/avast/android/generic/ae;
    //   410: lload 18
    //   412: invokevirtual 365	com/avast/android/generic/ae:f	(J)V
    //   415: aload_0
    //   416: getfield 36	com/avast/android/generic/internet/HttpSender:c	Lcom/avast/android/generic/ae;
    //   419: lload 18
    //   421: invokevirtual 365	com/avast/android/generic/ae:f	(J)V
    //   424: ldc_w 314
    //   427: new 129	java/lang/StringBuilder
    //   430: dup
    //   431: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   434: ldc_w 367
    //   437: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: invokestatic 328	java/lang/System:currentTimeMillis	()J
    //   443: lload 18
    //   445: lsub
    //   446: invokevirtual 169	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   449: ldc_w 340
    //   452: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   458: invokestatic 319	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   461: aload_3
    //   462: getfield 191	com/avast/android/generic/internet/h:c	Lcom/avast/android/generic/internet/d;
    //   465: ifnull +12 -> 477
    //   468: aload_3
    //   469: getfield 191	com/avast/android/generic/internet/h:c	Lcom/avast/android/generic/internet/d;
    //   472: invokeinterface 369 1 0
    //   477: aload_0
    //   478: getfield 55	com/avast/android/generic/internet/HttpSender:l	Ljava/util/LinkedList;
    //   481: astore 24
    //   483: aload 24
    //   485: monitorenter
    //   486: aload_0
    //   487: getfield 55	com/avast/android/generic/internet/HttpSender:l	Ljava/util/LinkedList;
    //   490: aload_3
    //   491: invokevirtual 157	java/util/LinkedList:remove	(Ljava/lang/Object;)Z
    //   494: pop
    //   495: aload 24
    //   497: monitorexit
    //   498: ldc 57
    //   500: aload_0
    //   501: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   504: ldc_w 371
    //   507: invokestatic 64	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   510: aload_0
    //   511: invokevirtual 372	com/avast/android/generic/internet/HttpSender:c	()Z
    //   514: ifne +286 -> 800
    //   517: aload_0
    //   518: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   521: invokevirtual 373	com/avast/android/generic/service/AvastService:b	()V
    //   524: goto +276 -> 800
    //   527: astore 8
    //   529: ldc 57
    //   531: aload_0
    //   532: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   535: ldc_w 375
    //   538: aload 8
    //   540: invokestatic 200	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   543: aload_0
    //   544: aload_3
    //   545: invokespecial 377	com/avast/android/generic/internet/HttpSender:b	(Lcom/avast/android/generic/internet/h;)Z
    //   548: pop
    //   549: aload_0
    //   550: invokevirtual 372	com/avast/android/generic/internet/HttpSender:c	()Z
    //   553: ifne +247 -> 800
    //   556: aload_0
    //   557: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   560: invokevirtual 373	com/avast/android/generic/service/AvastService:b	()V
    //   563: goto +237 -> 800
    //   566: astore_2
    //   567: aload_1
    //   568: monitorexit
    //   569: aload_2
    //   570: athrow
    //   571: astore 32
    //   573: ldc 57
    //   575: aload_0
    //   576: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   579: ldc_w 379
    //   582: aload 32
    //   584: invokestatic 200	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   587: goto -508 -> 79
    //   590: ldc_w 381
    //   593: astore 12
    //   595: goto -482 -> 113
    //   598: ldc_w 314
    //   601: ldc_w 383
    //   604: invokestatic 319	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   607: aload_0
    //   608: getfield 83	com/avast/android/generic/internet/HttpSender:g	Lcom/avast/android/generic/internet/b;
    //   611: aload_0
    //   612: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   615: aload_0
    //   616: getfield 34	com/avast/android/generic/internet/HttpSender:b	Lcom/avast/android/generic/ae;
    //   619: aload_0
    //   620: getfield 36	com/avast/android/generic/internet/HttpSender:c	Lcom/avast/android/generic/ae;
    //   623: aload 15
    //   625: aload_3
    //   626: getfield 330	com/avast/android/generic/internet/h:i	I
    //   629: invokevirtual 386	com/avast/android/generic/internet/b:a	(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Lcom/avast/a/a/a/ak;I)Z
    //   632: pop
    //   633: aload_0
    //   634: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   637: aload 15
    //   639: lconst_0
    //   640: invokestatic 336	com/avast/android/generic/internet/b:a	(Landroid/content/Context;Lcom/avast/a/a/a/ak;J)Z
    //   643: pop
    //   644: lconst_0
    //   645: lstore 18
    //   647: goto -377 -> 270
    //   650: new 129	java/lang/StringBuilder
    //   653: dup
    //   654: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   657: aload 13
    //   659: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   662: ldc_w 388
    //   665: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   668: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   671: astore 21
    //   673: ldc 57
    //   675: aload_0
    //   676: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   679: new 129	java/lang/StringBuilder
    //   682: dup
    //   683: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   686: ldc_w 390
    //   689: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   692: aload 21
    //   694: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   697: ldc_w 349
    //   700: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   703: aload_3
    //   704: invokevirtual 351	com/avast/android/generic/internet/h:a	()Ljava/lang/String;
    //   707: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   710: ldc_w 392
    //   713: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   716: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   719: invokestatic 64	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   722: aload_0
    //   723: aload_0
    //   724: getfield 83	com/avast/android/generic/internet/HttpSender:g	Lcom/avast/android/generic/internet/b;
    //   727: aload_0
    //   728: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   731: aload 21
    //   733: aload 15
    //   735: aload_3
    //   736: getfield 343	com/avast/android/generic/internet/h:b	Lcom/avast/android/generic/internet/k;
    //   739: iload 20
    //   741: invokevirtual 395	com/avast/android/generic/internet/b:a	(Landroid/content/Context;Ljava/lang/String;Lcom/avast/a/a/a/ak;Lcom/avast/android/generic/internet/k;Z)Lcom/avast/a/a/a/h;
    //   744: invokevirtual 359	com/avast/android/generic/internet/HttpSender:a	(Lcom/avast/a/a/a/h;)Z
    //   747: istore 22
    //   749: iload 22
    //   751: istore 23
    //   753: goto -369 -> 384
    //   756: astore 25
    //   758: aload 24
    //   760: monitorexit
    //   761: aload 25
    //   763: athrow
    //   764: astore 6
    //   766: ldc 57
    //   768: aload_0
    //   769: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   772: ldc_w 397
    //   775: aload 6
    //   777: invokestatic 200	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   780: aload_0
    //   781: aload_3
    //   782: invokespecial 377	com/avast/android/generic/internet/HttpSender:b	(Lcom/avast/android/generic/internet/h;)Z
    //   785: pop
    //   786: aload_0
    //   787: invokevirtual 372	com/avast/android/generic/internet/HttpSender:c	()Z
    //   790: ifne +10 -> 800
    //   793: aload_0
    //   794: getfield 32	com/avast/android/generic/internet/HttpSender:a	Lcom/avast/android/generic/service/AvastService;
    //   797: invokevirtual 373	com/avast/android/generic/service/AvastService:b	()V
    //   800: return
    //   801: aconst_null
    //   802: astore 15
    //   804: goto -648 -> 156
    //   807: iconst_0
    //   808: istore 20
    //   810: goto -528 -> 282
    //
    // Exception table:
    //   from	to	target	type
    //   79	486	527	java/io/IOException
    //   498	524	527	java/io/IOException
    //   590	749	527	java/io/IOException
    //   761	764	527	java/io/IOException
    //   7	29	566	finally
    //   567	569	566	finally
    //   70	79	571	java/lang/Exception
    //   486	498	756	finally
    //   758	761	756	finally
    //   79	486	764	java/lang/Exception
    //   498	524	764	java/lang/Exception
    //   590	749	764	java/lang/Exception
    //   761	764	764	java/lang/Exception
  }

  public void a()
  {
    t.a("AvastComms", this.a, "HTTP sender went online");
    NetworkInfo localNetworkInfo = this.k.getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
    {
      this.d = true;
      f();
    }
    while (true)
    {
      return;
      b();
    }
  }

  public void a(e parame, a parama, boolean paramBoolean)
  {
    if ((parame == null) || (parame.c() == null))
      return;
    h localh = new h(this);
    if (parame.c() != null)
    {
      localh.a = parame.c();
      label38: if (parama != null)
        localh.i = parama.q();
      localh.d = parama;
      localh.e = paramBoolean;
      localh.j = parame.d();
      localh.b = parame.b();
      if ((parama == null) || (parama.e() == null))
        break label283;
      localh.c = new com.avast.android.generic.b.g(parama.e());
      label108: if ((parama != null) && (localh.b != null))
        parama.a(true);
      localh.f = parame.a();
      if ((parama != null) && (parama.f() != null))
        break label399;
    }
    label399: for (int m = 0; ; m = 1)
    {
      if ((parama != null) && (parama.e().c()) && (TextUtils.isEmpty(parama.f())))
        m = 0;
      if (!AvastService.b(this.a))
      {
        t.a("AvastComms", this.a, "SMS permission is not available");
        m = 0;
      }
      if (m == 0)
        t.a("AvastComms", this.a, "HTTP sender: SMS is not available for command reply");
      boolean bool = this.d;
      int n = 0;
      if (!bool)
      {
        NetworkInfo localNetworkInfo = this.k.getActiveNetworkInfo();
        if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
          break label292;
      }
      for (n = 1; ; n = 0)
      {
        a(localh);
        if (n == 0)
          break label378;
        a();
        break;
        localh.a = null;
        break label38;
        label283: localh.c = null;
        break label108;
        label292: if ((localh.d != null) && (!localh.d.b()) && (m != 0) && (localh.d.e().A()))
        {
          c(localh);
          break;
        }
        t.a("AvastComms", this.a, "HTTP sender has to queue non SMS enabled descriptor " + localh.a());
      }
      label378: if (!this.d)
      {
        d();
        break;
      }
      f();
      break;
    }
  }

  public boolean a(com.avast.a.a.a.h paramh)
  {
    if (paramh != null)
    {
      this.a.a(paramh);
      if (!this.b.b("settingsLogicChange2573", false))
      {
        this.b.a("settingsLogicChange2573", true);
        this.b.b();
      }
      if (!this.b.b("settingsLogicChange2582", false))
      {
        this.b.a("settingsLogicChange2582", true);
        this.b.b();
      }
      if (!this.b.b("settingsLogicChange3891", false))
      {
        this.b.a("settingsLogicChange3891", true);
        this.b.b();
      }
      if (!paramh.t())
        break label423;
    }
    label423: for (boolean bool = paramh.u(); ; bool = false)
    {
      if (paramh.e() > 0)
      {
        Iterator localIterator = paramh.d().iterator();
        while (localIterator.hasNext())
        {
          String str = ((String)localIterator.next()).trim();
          if (!str.equals(""))
          {
            t.b(this.a, "INTERNET", "HTTP component received internet command " + str);
            k localk = com.avast.android.generic.b.d.a(this.a, str);
            if ((localk.a == r.d) && (this.a.getPackageName().equals(localk.c)))
            {
              t.a(this.a, "HTTP component dispatches " + str + " to own process");
              Bundle localBundle = new Bundle();
              localBundle.putString("message", str);
              localBundle.putString("uid", localk.b);
              this.a.b("com.avast.android.generic.action.ACTION_C2DM_MESSAGE", localBundle);
            }
            while (true)
            {
              t.a(this.a, "HTTP component handled internet command " + str);
              break;
              Intent localIntent = new Intent();
              localIntent.setAction("com.avast.android.generic.action.ACTION_C2DM_MESSAGE");
              localIntent.putExtra("message", str);
              localIntent.putExtra("uid", localk.b);
              com.avast.android.generic.b.d.a(this.a, localIntent, localk, null, localk.b, str);
            }
            bool = false;
          }
        }
      }
      return bool;
    }
  }

  public void b()
  {
    t.a("AvastComms", this.a, "HTTP sender went offline");
    NetworkInfo localNetworkInfo = this.k.getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      this.d = false;
      d();
    }
    while (true)
    {
      return;
      a();
    }
  }

  public boolean c()
  {
    try
    {
      t.a("AvastComms", this.a, "Checking HTTP sender sending state...");
      synchronized (this.l)
      {
        t.a("AvastComms", this.a, "Checked HTTP sender sending state (queue size is " + this.l.size() + ")");
        if (this.l.size() > 0)
        {
          bool = true;
          return bool;
        }
        boolean bool = false;
      }
    }
    finally
    {
    }
  }

  public void d()
  {
    synchronized (this.l)
    {
      int m = this.l.size();
      if ((m == 0) || (!this.d))
        synchronized (this.h)
        {
          if (this.e != null)
          {
            t.a("AvastComms", this.a, "Stopping HTTP sender thread...");
            this.f = true;
          }
        }
    }
    try
    {
      if (this.e.isAlive())
      {
        this.e.interrupt();
        this.e.join();
      }
      label85: this.f = false;
      this.e = null;
      t.a("AvastComms", this.a, "Stopped HTTP sender thread");
      return;
      localObject1 = finally;
      throw localObject1;
      localObject3 = finally;
      throw localObject3;
    }
    catch (Exception localException)
    {
      break label85;
    }
  }

  public void e()
  {
    t.a("AvastComms", this.a, "Destroying HTTP sender...");
    synchronized (this.i)
    {
      if (this.j != null)
        this.a.unregisterReceiver(this.j);
      new Thread(new g(this), "httpSenderDestroyer").start();
      t.a("AvastComms", this.a, "Destroyed HTTP sender");
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.HttpSender
 * JD-Core Version:    0.6.2
 */