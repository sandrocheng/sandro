package com.avast.android.generic.f.a;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.bc;
import com.avast.android.generic.util.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Random;

public class b extends PhoneStateListener
{
  private Object a = new Object();
  private ae b;
  private Random c = new Random();
  private LinkedList d = new LinkedList();
  private LinkedList e = new LinkedList();
  private AvastService f = null;
  private g g = null;
  private f h = null;
  private Thread i = null;
  private boolean j = false;
  private Object k = new Object();
  private TelephonyManager l = null;
  private boolean m = true;

  public b(AvastService paramAvastService)
  {
    t.a("AvastComms", paramAvastService, "Initializing SMS sender...");
    this.f = paramAvastService;
    this.b = ((ae)ad.a(paramAvastService, ae.class));
    while (true)
    {
      boolean bool;
      synchronized (this.k)
      {
        this.i = null;
        if (com.avast.android.generic.f.b.a.c(paramAvastService) == 5)
        {
          bool = true;
          this.m = bool;
          this.l = ((TelephonyManager)paramAvastService.getSystemService("phone"));
          this.l.listen(this, 3);
        }
      }
      synchronized (this.a)
      {
        this.g = new g(this, null);
        this.h = new f(this, null);
        IntentFilter localIntentFilter = new IntentFilter("com.avast.android.antitheft.SMS_SENT");
        localIntentFilter.addDataScheme("avsms");
        paramAvastService.registerReceiver(this.g, localIntentFilter);
        paramAvastService.registerReceiver(this.h, new IntentFilter("com.avast.android.antitheft.PART_SMS_SENT"));
        t.a("AvastComms", paramAvastService, "Initialized SMS sender");
        return;
        localObject2 = finally;
        throw localObject2;
        bool = false;
      }
    }
  }

  private void a(e parame)
  {
    if ((parame != null) && (parame.c != null));
    try
    {
      parame.c.b();
      g();
    }
    catch (Exception localException)
    {
      synchronized (this.e)
      {
        this.e.remove(parame);
        if (!a())
          this.f.b();
        return;
        localException = localException;
        t.a("AvastComms", this.f, "SMS sender SMS callback error", localException);
      }
    }
  }

  private void a(e parame, int paramInt, boolean paramBoolean)
  {
    if ((parame != null) && (parame.c != null));
    try
    {
      parame.c.a(paramInt);
      g();
      if (paramBoolean)
      {
        c(parame);
        if (!a())
          this.f.b();
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        t.a("AvastComms", this.f, "SMS sender SMS callback error", localException);
        continue;
        d(parame);
      }
    }
  }

  private void a(e parame, String paramString1, String paramString2)
  {
    t.a("AvastComms", this.f, "SMS sender is sending outgoing SMS to " + paramString1 + ": " + paramString2);
    if ((parame != null) && (parame.c != null))
      parame.c.a();
    String str = parame.b.toString();
    Intent localIntent = new Intent("com.avast.android.antitheft.SMS_SENT", Uri.parse("avsms://sent/" + str));
    localIntent.putExtra("smsId", str);
    PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(this.f, 0, localIntent, 0);
    PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(this.f, 0, new Intent("com.avast.android.antitheft.PART_SMS_SENT"), 0);
    SmsManager localSmsManager = SmsManager.getDefault();
    ArrayList localArrayList1 = localSmsManager.divideMessage(paramString2);
    if (localArrayList1.size() <= 1)
      localSmsManager.sendTextMessage(paramString1, null, paramString2, localPendingIntent1, null);
    int n;
    while (true)
    {
      return;
      boolean bool = this.b.L();
      n = 0;
      if (bool)
        break;
      ArrayList localArrayList2 = new ArrayList();
      if (n < localArrayList1.size())
      {
        if (n < -1 + localArrayList1.size())
          localArrayList2.add(localPendingIntent2);
        while (true)
        {
          n++;
          break;
          localArrayList2.add(localPendingIntent1);
        }
      }
      localSmsManager.sendMultipartTextMessage(paramString1, null, localArrayList1, localArrayList2, null);
    }
    label265: if (n < localArrayList1.size())
    {
      if (n >= -1 + localArrayList1.size())
        break label312;
      localSmsManager.sendTextMessage(paramString1, null, (String)localArrayList1.get(n), null, null);
    }
    while (true)
    {
      n++;
      break label265;
      break;
      label312: localSmsManager.sendTextMessage(paramString1, null, (String)localArrayList1.get(n), localPendingIntent1, null);
    }
  }

  private void b(e parame)
  {
    synchronized (this.d)
    {
      t.a("AvastComms", this.f, "SMS sender is queueing SMS traffic...");
      this.d.add(parame);
      Collections.sort(this.d);
      t.a("AvastComms", this.f, "SMS sender queued SMS traffic (length " + this.d.size() + ")");
      return;
    }
  }

  private boolean c(e parame)
  {
    synchronized (this.e)
    {
      synchronized (this.d)
      {
        this.e.remove(parame);
        boolean bool = e(parame);
        return bool;
      }
    }
  }

  private boolean d(e parame)
  {
    synchronized (this.d)
    {
      synchronized (this.e)
      {
        this.d.remove(parame);
        boolean bool = e(parame);
        return bool;
      }
    }
  }

  private boolean e(e parame)
  {
    boolean bool = true;
    if (parame.d)
    {
      parame.e = (1 + parame.e);
      if (parame.e <= 3)
      {
        long l1 = 2000 * (parame.e * parame.e);
        t.a("AvastComms", this.f, "SMS sender is requeueing reliable SMS descriptor (retry count " + parame.e + ", timeout " + l1 + "ms)...");
        parame.f = (l1 + new Date().getTime());
        b(parame);
        if (!this.m)
        {
          d();
          if (parame.c == null);
        }
      }
    }
    try
    {
      parame.c.a(4);
      label139: bool = false;
      while (true)
      {
        return bool;
        f();
        break;
        t.a("AvastComms", this.f, "SMS sender is junking reliable SMS descriptor because of too much failures");
        continue;
        t.a("AvastComms", this.f, "SMS sender is junking non-reliable SMS descriptor");
      }
    }
    catch (Exception localException)
    {
      break label139;
    }
  }

  private void f()
  {
    synchronized (this.d)
    {
      int n = this.d.size();
      int i1 = 0;
      if (n > 0)
      {
        boolean bool = this.m;
        i1 = 0;
        if (bool)
          i1 = 1;
      }
      if (i1 == 0);
    }
    synchronized (this.k)
    {
      if (this.i != null)
      {
        if (this.i.isAlive())
        {
          this.i.interrupt();
          return;
          localObject1 = finally;
          throw localObject1;
        }
        this.i = null;
      }
      t.a("AvastComms", this.f, "SMS sender is starting SMS thread...");
      this.j = false;
      this.i = new Thread(new c(this));
      this.i.start();
      t.a("AvastComms", this.f, "Started SMS sender thread");
    }
  }

  private void g()
  {
    LinkedList localLinkedList1 = new LinkedList();
    while (true)
    {
      int n;
      e locale;
      synchronized (this.d)
      {
        localLinkedList1.addAll(this.d);
        Iterator localIterator = localLinkedList1.iterator();
        n = 1;
        if (!localIterator.hasNext())
          return;
        locale = (e)localIterator.next();
        if (locale.c == null);
      }
      try
      {
        locale.c.b(n);
        n++;
        continue;
        localObject = finally;
        throw localObject;
      }
      catch (Exception localException)
      {
        while (true)
          t.a("AvastComms", this.f, "SMS sender callback error", localException);
      }
    }
  }

  private void h()
  {
    try
    {
      synchronized (this.e)
      {
        synchronized (this.d)
        {
          e locale = (e)this.d.poll();
          if (locale == null);
          while (true)
          {
            label38: return;
            bc localbc = locale.a;
            this.e.add(locale);
            g();
            try
            {
              a(locale, localbc.e, localbc.b);
            }
            catch (Exception localException2)
            {
              t.a("AvastComms", this.f, "SMS sender sending error", localException2);
              a(locale, 0, false);
            }
          }
        }
      }
    }
    catch (Exception localException1)
    {
      break label38;
    }
  }

  // ERROR //
  public void a(bc parambc, a parama, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 51	com/avast/android/generic/f/a/b:f	Lcom/avast/android/generic/service/AvastService;
    //   6: invokestatic 382	com/avast/android/generic/service/AvastService:b	(Landroid/content/Context;)Z
    //   9: ifne +29 -> 38
    //   12: ldc 67
    //   14: aload_0
    //   15: getfield 51	com/avast/android/generic/f/a/b:f	Lcom/avast/android/generic/service/AvastService;
    //   18: ldc_w 384
    //   21: invokestatic 74	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   24: aload_2
    //   25: ifnull +10 -> 35
    //   28: aload_2
    //   29: iconst_1
    //   30: invokeinterface 169 2 0
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: aload_1
    //   39: getfield 373	com/avast/android/generic/util/bc:e	Ljava/lang/String;
    //   42: ifnonnull +34 -> 76
    //   45: ldc 67
    //   47: aload_0
    //   48: getfield 51	com/avast/android/generic/f/a/b:f	Lcom/avast/android/generic/service/AvastService;
    //   51: ldc_w 386
    //   54: invokestatic 74	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   57: aload_2
    //   58: ifnull -23 -> 35
    //   61: aload_2
    //   62: iconst_1
    //   63: invokeinterface 169 2 0
    //   68: goto -33 -> 35
    //   71: astore 7
    //   73: goto -38 -> 35
    //   76: new 144	com/avast/android/generic/f/a/e
    //   79: dup
    //   80: aload_0
    //   81: aconst_null
    //   82: invokespecial 387	com/avast/android/generic/f/a/e:<init>	(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/c;)V
    //   85: astore 5
    //   87: aload 5
    //   89: new 177	java/lang/StringBuilder
    //   92: dup
    //   93: invokespecial 178	java/lang/StringBuilder:<init>	()V
    //   96: new 300	java/util/Date
    //   99: dup
    //   100: invokespecial 301	java/util/Date:<init>	()V
    //   103: invokevirtual 305	java/util/Date:getTime	()J
    //   106: invokestatic 391	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   109: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: aload_0
    //   113: getfield 42	com/avast/android/generic/f/a/b:c	Ljava/util/Random;
    //   116: ldc_w 392
    //   119: invokevirtual 396	java/util/Random:nextInt	(I)I
    //   122: invokestatic 399	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   125: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: putfield 195	com/avast/android/generic/f/a/e:b	Ljava/lang/String;
    //   134: aload 5
    //   136: aload_1
    //   137: putfield 369	com/avast/android/generic/f/a/e:a	Lcom/avast/android/generic/util/bc;
    //   140: aload 5
    //   142: aload_2
    //   143: putfield 147	com/avast/android/generic/f/a/e:c	Lcom/avast/android/generic/f/a/a;
    //   146: aload 5
    //   148: iload_3
    //   149: putfield 286	com/avast/android/generic/f/a/e:d	Z
    //   152: aload_0
    //   153: aload 5
    //   155: invokespecial 310	com/avast/android/generic/f/a/b:b	(Lcom/avast/android/generic/f/a/e;)V
    //   158: ldc 67
    //   160: aload_0
    //   161: getfield 51	com/avast/android/generic/f/a/b:f	Lcom/avast/android/generic/service/AvastService;
    //   164: new 177	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 178	java/lang/StringBuilder:<init>	()V
    //   171: ldc_w 401
    //   174: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: aload 5
    //   179: getfield 195	com/avast/android/generic/f/a/e:b	Ljava/lang/String;
    //   182: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: ldc_w 403
    //   188: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: aload_1
    //   192: getfield 374	com/avast/android/generic/util/bc:b	Ljava/lang/String;
    //   195: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokestatic 74	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   204: aload_0
    //   205: invokespecial 153	com/avast/android/generic/f/a/b:g	()V
    //   208: aload_0
    //   209: getfield 65	com/avast/android/generic/f/a/b:m	Z
    //   212: ifne +26 -> 238
    //   215: aload_0
    //   216: invokevirtual 312	com/avast/android/generic/f/a/b:d	()V
    //   219: aload_2
    //   220: ifnull -185 -> 35
    //   223: aload_2
    //   224: iconst_4
    //   225: invokeinterface 169 2 0
    //   230: goto -195 -> 35
    //   233: astore 6
    //   235: goto -200 -> 35
    //   238: aload_0
    //   239: invokespecial 314	com/avast/android/generic/f/a/b:f	()V
    //   242: goto -207 -> 35
    //   245: astore 4
    //   247: aload_0
    //   248: monitorexit
    //   249: aload 4
    //   251: athrow
    //   252: astore 8
    //   254: goto -219 -> 35
    //
    // Exception table:
    //   from	to	target	type
    //   61	68	71	java/lang/Exception
    //   223	230	233	java/lang/Exception
    //   2	24	245	finally
    //   28	35	245	finally
    //   38	57	245	finally
    //   61	68	245	finally
    //   76	219	245	finally
    //   223	230	245	finally
    //   238	242	245	finally
    //   28	35	252	java/lang/Exception
  }

  // ERROR //
  public void a(String paramString, java.util.List paramList, a parama, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 51	com/avast/android/generic/f/a/b:f	Lcom/avast/android/generic/service/AvastService;
    //   6: invokestatic 382	com/avast/android/generic/service/AvastService:b	(Landroid/content/Context;)Z
    //   9: ifne +29 -> 38
    //   12: ldc 67
    //   14: aload_0
    //   15: getfield 51	com/avast/android/generic/f/a/b:f	Lcom/avast/android/generic/service/AvastService;
    //   18: ldc_w 384
    //   21: invokestatic 74	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   24: aload_3
    //   25: ifnull +10 -> 35
    //   28: aload_3
    //   29: iconst_1
    //   30: invokeinterface 169 2 0
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: aload_1
    //   39: ifnonnull +34 -> 73
    //   42: ldc 67
    //   44: aload_0
    //   45: getfield 51	com/avast/android/generic/f/a/b:f	Lcom/avast/android/generic/service/AvastService;
    //   48: ldc_w 386
    //   51: invokestatic 74	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   54: aload_3
    //   55: ifnull -20 -> 35
    //   58: aload_3
    //   59: iconst_1
    //   60: invokeinterface 169 2 0
    //   65: goto -30 -> 35
    //   68: astore 10
    //   70: goto -35 -> 35
    //   73: aload_2
    //   74: invokeinterface 407 1 0
    //   79: astore 6
    //   81: aload 6
    //   83: invokeinterface 355 1 0
    //   88: ifeq +162 -> 250
    //   91: aload 6
    //   93: invokeinterface 359 1 0
    //   98: checkcast 371	com/avast/android/generic/util/bc
    //   101: astore 8
    //   103: aload 8
    //   105: aload_1
    //   106: putfield 373	com/avast/android/generic/util/bc:e	Ljava/lang/String;
    //   109: new 144	com/avast/android/generic/f/a/e
    //   112: dup
    //   113: aload_0
    //   114: aconst_null
    //   115: invokespecial 387	com/avast/android/generic/f/a/e:<init>	(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/c;)V
    //   118: astore 9
    //   120: aload 9
    //   122: new 177	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 178	java/lang/StringBuilder:<init>	()V
    //   129: new 300	java/util/Date
    //   132: dup
    //   133: invokespecial 301	java/util/Date:<init>	()V
    //   136: invokevirtual 305	java/util/Date:getTime	()J
    //   139: invokestatic 391	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   142: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_0
    //   146: getfield 42	com/avast/android/generic/f/a/b:c	Ljava/util/Random;
    //   149: ldc_w 392
    //   152: invokevirtual 396	java/util/Random:nextInt	(I)I
    //   155: invokestatic 399	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   158: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: putfield 195	com/avast/android/generic/f/a/e:b	Ljava/lang/String;
    //   167: aload 9
    //   169: aload 8
    //   171: putfield 369	com/avast/android/generic/f/a/e:a	Lcom/avast/android/generic/util/bc;
    //   174: aload 9
    //   176: aload_3
    //   177: putfield 147	com/avast/android/generic/f/a/e:c	Lcom/avast/android/generic/f/a/a;
    //   180: aload 9
    //   182: iload 4
    //   184: putfield 286	com/avast/android/generic/f/a/e:d	Z
    //   187: aload_0
    //   188: aload 9
    //   190: invokespecial 310	com/avast/android/generic/f/a/b:b	(Lcom/avast/android/generic/f/a/e;)V
    //   193: ldc 67
    //   195: aload_0
    //   196: getfield 51	com/avast/android/generic/f/a/b:f	Lcom/avast/android/generic/service/AvastService;
    //   199: new 177	java/lang/StringBuilder
    //   202: dup
    //   203: invokespecial 178	java/lang/StringBuilder:<init>	()V
    //   206: ldc_w 401
    //   209: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: aload 9
    //   214: getfield 195	com/avast/android/generic/f/a/e:b	Ljava/lang/String;
    //   217: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: ldc_w 403
    //   223: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: aload 8
    //   228: getfield 374	com/avast/android/generic/util/bc:b	Ljava/lang/String;
    //   231: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: invokestatic 74	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   240: goto -159 -> 81
    //   243: astore 5
    //   245: aload_0
    //   246: monitorexit
    //   247: aload 5
    //   249: athrow
    //   250: aload_0
    //   251: invokespecial 153	com/avast/android/generic/f/a/b:g	()V
    //   254: aload_0
    //   255: getfield 65	com/avast/android/generic/f/a/b:m	Z
    //   258: ifne +26 -> 284
    //   261: aload_0
    //   262: invokevirtual 312	com/avast/android/generic/f/a/b:d	()V
    //   265: aload_3
    //   266: ifnull -231 -> 35
    //   269: aload_3
    //   270: iconst_4
    //   271: invokeinterface 169 2 0
    //   276: goto -241 -> 35
    //   279: astore 7
    //   281: goto -246 -> 35
    //   284: aload_0
    //   285: invokespecial 314	com/avast/android/generic/f/a/b:f	()V
    //   288: goto -253 -> 35
    //   291: astore 11
    //   293: goto -258 -> 35
    //
    // Exception table:
    //   from	to	target	type
    //   58	65	68	java/lang/Exception
    //   2	24	243	finally
    //   28	35	243	finally
    //   42	54	243	finally
    //   58	65	243	finally
    //   73	240	243	finally
    //   250	265	243	finally
    //   269	276	243	finally
    //   284	288	243	finally
    //   269	276	279	java/lang/Exception
    //   28	35	291	java/lang/Exception
  }

  public boolean a()
  {
    while (true)
    {
      try
      {
        t.a("AvastComms", this.f, "Checking SMS sender sending state...");
        synchronized (this.e)
        {
          t.a("AvastComms", this.f, "Got inProgress lock");
          synchronized (this.d)
          {
            t.a("AvastComms", this.f, "Got queue lock");
            int n;
            if (this.e.size() > 0)
            {
              n = 1;
              if (this.d.size() > 0)
              {
                i1 = 1;
                t.a("AvastComms", this.f, "Released queue lock");
                t.a("AvastComms", this.f, "Released inProgress lock");
                AvastService localAvastService = this.f;
                StringBuilder localStringBuilder = new StringBuilder().append("Checked SMS sender sending state (");
                if (n != 0)
                  break label223;
                if (i1 == 0)
                  break label217;
                break label223;
                t.a("AvastComms", localAvastService, bool1 + ")");
                boolean bool2;
                if (n == 0)
                {
                  bool2 = false;
                  if (i1 == 0);
                }
                else
                {
                  bool2 = true;
                }
                return bool2;
              }
            }
            else
            {
              n = 0;
              continue;
            }
            int i1 = 0;
          }
        }
      }
      finally
      {
      }
      label217: boolean bool1 = false;
      continue;
      label223: bool1 = true;
    }
  }

  public void b()
  {
    t.a("AvastComms", this.f, "SMS sender went online");
    this.m = true;
    f();
  }

  public void c()
  {
    t.a("AvastComms", this.f, "SMS sender went offline");
    this.m = false;
    d();
  }

  public void d()
  {
    synchronized (this.d)
    {
      int n = this.d.size();
      if ((n == 0) || (!this.m))
        synchronized (this.k)
        {
          if (this.i != null)
          {
            t.a("AvastComms", this.f, "Stopping SMS sender thread...");
            this.j = true;
          }
        }
    }
    try
    {
      if (this.i.isAlive())
      {
        this.i.interrupt();
        this.i.join();
      }
      label85: this.j = false;
      this.i = null;
      t.a("AvastComms", this.f, "Stopped SMS sender thread");
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
    synchronized (this.a)
    {
      f localf = this.h;
      if (localf == null);
    }
    try
    {
      this.f.unregisterReceiver(this.h);
      label27: this.h = null;
      g localg = this.g;
      if (localg != null);
      try
      {
        this.f.unregisterReceiver(this.g);
        label54: this.g = null;
        if (this.l != null)
          this.l.listen(this, 0);
        new Thread(new d(this)).start();
        return;
        localObject2 = finally;
        throw localObject2;
      }
      catch (Exception localException1)
      {
        break label54;
      }
    }
    catch (Exception localException2)
    {
      break label27;
    }
  }

  public void onServiceStateChanged(ServiceState paramServiceState)
  {
    if (paramServiceState.getState() == 0)
      b();
    while (true)
    {
      return;
      c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.f.a.b
 * JD-Core Version:    0.6.2
 */