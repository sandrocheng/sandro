package com.avast.android.generic.b;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.q;
import com.avast.android.generic.util.t;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentLinkedQueue;

public class l
{
  private AvastService a;
  private ConcurrentLinkedQueue b = new ConcurrentLinkedQueue();
  private LinkedList c = new LinkedList();
  private Thread d = null;
  private Object e = new Object();
  private Handler f = null;
  private boolean g = false;

  public l(AvastService paramAvastService)
  {
    this.a = paramAvastService;
    synchronized (this.e)
    {
      this.d = new Thread(new m(this));
      this.d.start();
      return;
    }
  }

  public static boolean a(Context paramContext, a parama)
  {
    ae localae = (ae)ad.a(paramContext, ag.class);
    String str1 = parama.d();
    String[] arrayOfString;
    int i;
    boolean bool;
    label176: Object localObject;
    if ((str1 != null) && (!str1.equals("")) && (!str1.equals("-1")) && (!str1.equals("-9999")))
    {
      String str2 = localae.H();
      arrayOfString = new String[0];
      int m;
      if (str2 != null)
      {
        arrayOfString = str2.split(",");
        t.a("AvastGeneric", paramContext, "Checking UID " + str1 + " against (" + str2 + ")");
        i = arrayOfString.length;
        if (i > 0)
          m = arrayOfString.length;
      }
      else
      {
        for (int n = 0; ; n++)
        {
          if (n >= m)
            break label176;
          if (str1.equals(arrayOfString[n]))
          {
            t.a("AvastGeneric", paramContext, "UID already processed...");
            bool = true;
            return bool;
            str2 = "";
            break;
          }
        }
      }
      localObject = str1 + ",";
      if (i <= 20)
        break label280;
    }
    label280: for (int j = 20; ; j = i)
    {
      if (j > 0)
      {
        int k = 0;
        while (k < j)
        {
          String str3 = (String)localObject + arrayOfString[k] + ",";
          k++;
          localObject = str3;
        }
      }
      localae.j((String)localObject);
      localae.b();
      bool = false;
      break;
    }
  }

  private void c()
  {
    while (!this.g)
    {
      t.a("AvastGeneric", this.a, "Waiting for child handler ...");
      try
      {
        Thread.sleep(100L);
      }
      catch (InterruptedException localInterruptedException)
      {
      }
    }
    synchronized (this.b)
    {
      int i = this.b.size();
      if ((i <= 0) || (this.f == null));
    }
    synchronized (this.e)
    {
      Message localMessage = this.f.obtainMessage();
      boolean bool = this.f.sendMessage(localMessage);
      t.a("AvastGeneric", this.a, "Message delivered: " + bool);
      return;
      localObject1 = finally;
      throw localObject1;
    }
  }

  private void d()
  {
    t.a("AvastGeneric", this.a, "Handling command queue");
    a locala;
    synchronized (this.b)
    {
      locala = (a)this.b.peek();
      if (locala != null);
    }
    try
    {
      if (!locala.j())
        if (locala.l())
          synchronized (this.b)
          {
            this.b.remove(locala);
            this.b.add(locala);
          }
    }
    catch (Exception localObject5)
    {
      synchronized (this.b)
      {
        while (true)
        {
          t.a("AvastGeneric", this.a, "Handled command queue, new size " + this.b.size());
          if (!a())
          {
            this.a.b();
            break;
            localObject12 = finally;
            throw localObject12;
            localException1 = localException1;
            t.a("AvastGeneric", this.a, "Error in handler processing", localException1);
            locala.e().a(q.a(this.a, localException1), com.avast.a.a.a.a.m.c);
            try
            {
              if (!locala.l())
                break label567;
              synchronized (this.b)
              {
                this.b.remove(locala);
                this.b.add(locala);
              }
            }
            catch (Exception localException2)
            {
              t.a("AvastGeneric", this.a, "Error in handler failure", localException2);
            }
            continue;
            synchronized (this.b)
            {
              this.b.remove(locala);
            }
            locala.g();
            if (!locala.j())
            {
              if (locala.l())
                synchronized (this.b)
                {
                  this.b.remove(locala);
                  this.b.add(locala);
                }
              synchronized (this.b)
              {
                this.b.remove(locala);
              }
            }
            locala.m();
            locala.h();
            if (!locala.j())
            {
              if (locala.l())
                synchronized (this.b)
                {
                  this.b.remove(locala);
                  this.b.add(locala);
                }
              synchronized (this.b)
              {
                this.b.remove(locala);
              }
            }
            locala.i();
            locala.k();
            synchronized (this.b)
            {
              if (!locala.e().w());
            }
            while (true)
            {
              synchronized (this.c)
              {
                this.b.remove(locala);
                this.c.add(locala);
                break;
                localObject5 = finally;
                throw localObject5;
              }
              this.b.remove(locala);
            }
            label567: synchronized (this.b)
            {
              this.b.remove(locala);
            }
          }
        }
      }
    }
  }

  public void a(a parama)
  {
    t.a("AvastGeneric", this.a, "Handling late result for command " + parama);
    synchronized (this.c)
    {
      if (!this.c.contains(parama))
        return;
      if (parama.j())
        break label262;
    }
    try
    {
      boolean bool = parama.l();
      parama.p();
      if (bool)
        synchronized (this.b)
        {
          synchronized (this.c)
          {
            this.c.remove(parama);
            this.b.add(parama);
            t.a("AvastGeneric", this.a, "Handled late result for command " + parama);
            if (a())
              return;
            this.a.b();
            return;
            localObject1 = finally;
            throw localObject1;
          }
        }
    }
    catch (Exception localException2)
    {
      while (true)
      {
        t.a("AvastGeneric", this.a, "Error in handler failure", localException2);
        synchronized (this.c)
        {
          this.c.remove(parama);
        }
        synchronized (this.c)
        {
          this.c.remove(parama);
        }
      }
    }
    label262: parama.i();
    try
    {
      while (true)
      {
        parama.k();
        parama.p();
        synchronized (this.c)
        {
          this.c.remove(parama);
        }
      }
    }
    catch (Exception localException1)
    {
      while (true)
        t.a("AvastGeneric", this.a, "Error in handler success", localException1);
    }
  }

  // ERROR //
  public void a(a parama, boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_2
    //   1: ifeq +15 -> 16
    //   4: aload_0
    //   5: getfield 43	com/avast/android/generic/b/l:a	Lcom/avast/android/generic/service/AvastService;
    //   8: aload_1
    //   9: invokestatic 256	com/avast/android/generic/b/l:a	(Landroid/content/Context;Lcom/avast/android/generic/b/a;)Z
    //   12: ifeq +4 -> 16
    //   15: return
    //   16: ldc 96
    //   18: aload_0
    //   19: getfield 43	com/avast/android/generic/b/l:a	Lcom/avast/android/generic/service/AvastService;
    //   22: ldc_w 258
    //   25: invokestatic 117	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   28: aload_0
    //   29: getfield 28	com/avast/android/generic/b/l:b	Ljava/util/concurrent/ConcurrentLinkedQueue;
    //   32: astore_3
    //   33: aload_3
    //   34: monitorenter
    //   35: aload_1
    //   36: invokevirtual 198	com/avast/android/generic/b/a:e	()Lcom/avast/android/generic/b/d;
    //   39: invokevirtual 261	com/avast/android/generic/b/d:y	()Z
    //   42: ifne +169 -> 211
    //   45: aload_0
    //   46: getfield 33	com/avast/android/generic/b/l:c	Ljava/util/LinkedList;
    //   49: astore 6
    //   51: aload 6
    //   53: monitorenter
    //   54: iconst_0
    //   55: istore 7
    //   57: aload_0
    //   58: getfield 28	com/avast/android/generic/b/l:b	Ljava/util/concurrent/ConcurrentLinkedQueue;
    //   61: invokevirtual 265	java/util/concurrent/ConcurrentLinkedQueue:iterator	()Ljava/util/Iterator;
    //   64: astore 9
    //   66: aload 9
    //   68: invokeinterface 270 1 0
    //   73: ifeq +51 -> 124
    //   76: aload 9
    //   78: invokeinterface 273 1 0
    //   83: checkcast 70	com/avast/android/generic/b/a
    //   86: invokevirtual 198	com/avast/android/generic/b/a:e	()Lcom/avast/android/generic/b/d;
    //   89: invokevirtual 277	java/lang/Object:getClass	()Ljava/lang/Class;
    //   92: aload_1
    //   93: invokevirtual 198	com/avast/android/generic/b/a:e	()Lcom/avast/android/generic/b/d;
    //   96: invokevirtual 277	java/lang/Object:getClass	()Ljava/lang/Class;
    //   99: invokevirtual 278	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   102: ifeq +127 -> 229
    //   105: aload_1
    //   106: invokevirtual 198	com/avast/android/generic/b/a:e	()Lcom/avast/android/generic/b/d;
    //   109: getstatic 284	com/avast/android/generic/z:co	I
    //   112: getstatic 287	com/avast/a/a/a/a/m:ai	Lcom/avast/a/a/a/a/m;
    //   115: invokevirtual 290	com/avast/android/generic/b/d:a	(ILcom/avast/a/a/a/a/m;)V
    //   118: iconst_1
    //   119: istore 11
    //   121: goto +112 -> 233
    //   124: iload 7
    //   126: ifne +82 -> 208
    //   129: aload_0
    //   130: getfield 33	com/avast/android/generic/b/l:c	Ljava/util/LinkedList;
    //   133: invokevirtual 291	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   136: astore 10
    //   138: aload 10
    //   140: invokeinterface 270 1 0
    //   145: ifeq +63 -> 208
    //   148: aload 10
    //   150: invokeinterface 273 1 0
    //   155: checkcast 70	com/avast/android/generic/b/a
    //   158: invokevirtual 198	com/avast/android/generic/b/a:e	()Lcom/avast/android/generic/b/d;
    //   161: invokevirtual 277	java/lang/Object:getClass	()Ljava/lang/Class;
    //   164: aload_1
    //   165: invokevirtual 198	com/avast/android/generic/b/a:e	()Lcom/avast/android/generic/b/d;
    //   168: invokevirtual 277	java/lang/Object:getClass	()Ljava/lang/Class;
    //   171: invokevirtual 278	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   174: ifeq -36 -> 138
    //   177: aload_1
    //   178: invokevirtual 198	com/avast/android/generic/b/a:e	()Lcom/avast/android/generic/b/d;
    //   181: getstatic 284	com/avast/android/generic/z:co	I
    //   184: getstatic 287	com/avast/a/a/a/a/m:ai	Lcom/avast/a/a/a/a/m;
    //   187: invokevirtual 290	com/avast/android/generic/b/d:a	(ILcom/avast/a/a/a/a/m;)V
    //   190: goto -52 -> 138
    //   193: astore 8
    //   195: aload 6
    //   197: monitorexit
    //   198: aload 8
    //   200: athrow
    //   201: astore 4
    //   203: aload_3
    //   204: monitorexit
    //   205: aload 4
    //   207: athrow
    //   208: aload 6
    //   210: monitorexit
    //   211: aload_0
    //   212: getfield 28	com/avast/android/generic/b/l:b	Ljava/util/concurrent/ConcurrentLinkedQueue;
    //   215: aload_1
    //   216: invokevirtual 179	java/util/concurrent/ConcurrentLinkedQueue:add	(Ljava/lang/Object;)Z
    //   219: pop
    //   220: aload_0
    //   221: invokespecial 293	com/avast/android/generic/b/l:c	()V
    //   224: aload_3
    //   225: monitorexit
    //   226: goto -211 -> 15
    //   229: iload 7
    //   231: istore 11
    //   233: iload 11
    //   235: istore 7
    //   237: goto -171 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   57	198	193	finally
    //   208	211	193	finally
    //   35	54	201	finally
    //   198	205	201	finally
    //   211	226	201	finally
  }

  // ERROR //
  public boolean a()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: ldc 96
    //   4: aload_0
    //   5: getfield 43	com/avast/android/generic/b/l:a	Lcom/avast/android/generic/service/AvastService;
    //   8: ldc_w 295
    //   11: invokestatic 117	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 28	com/avast/android/generic/b/l:b	Ljava/util/concurrent/ConcurrentLinkedQueue;
    //   18: astore_2
    //   19: aload_2
    //   20: monitorenter
    //   21: aload_0
    //   22: getfield 33	com/avast/android/generic/b/l:c	Ljava/util/LinkedList;
    //   25: astore 4
    //   27: aload 4
    //   29: monitorenter
    //   30: aload_0
    //   31: getfield 28	com/avast/android/generic/b/l:b	Ljava/util/concurrent/ConcurrentLinkedQueue;
    //   34: invokevirtual 298	java/util/concurrent/ConcurrentLinkedQueue:isEmpty	()Z
    //   37: ifne +30 -> 67
    //   40: iload_1
    //   41: istore 6
    //   43: iload 6
    //   45: ifeq +28 -> 73
    //   48: ldc 96
    //   50: aload_0
    //   51: getfield 43	com/avast/android/generic/b/l:a	Lcom/avast/android/generic/service/AvastService;
    //   54: ldc_w 300
    //   57: invokestatic 117	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   60: aload 4
    //   62: monitorexit
    //   63: aload_2
    //   64: monitorexit
    //   65: iload_1
    //   66: ireturn
    //   67: iconst_0
    //   68: istore 6
    //   70: goto -27 -> 43
    //   73: aload_0
    //   74: getfield 43	com/avast/android/generic/b/l:a	Lcom/avast/android/generic/service/AvastService;
    //   77: astore 7
    //   79: new 98	java/lang/StringBuilder
    //   82: dup
    //   83: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   86: ldc_w 302
    //   89: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: astore 8
    //   94: aload_0
    //   95: getfield 33	com/avast/android/generic/b/l:c	Ljava/util/LinkedList;
    //   98: invokevirtual 303	java/util/LinkedList:isEmpty	()Z
    //   101: ifeq +53 -> 154
    //   104: ldc 75
    //   106: astore 9
    //   108: ldc 96
    //   110: aload 7
    //   112: aload 8
    //   114: aload 9
    //   116: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: ldc_w 305
    //   122: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 117	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   131: aload_0
    //   132: getfield 33	com/avast/android/generic/b/l:c	Ljava/util/LinkedList;
    //   135: invokevirtual 303	java/util/LinkedList:isEmpty	()Z
    //   138: ifne +32 -> 170
    //   141: aload 4
    //   143: monitorexit
    //   144: aload_2
    //   145: monitorexit
    //   146: goto -81 -> 65
    //   149: astore_3
    //   150: aload_2
    //   151: monitorexit
    //   152: aload_3
    //   153: athrow
    //   154: ldc_w 307
    //   157: astore 9
    //   159: goto -51 -> 108
    //   162: astore 5
    //   164: aload 4
    //   166: monitorexit
    //   167: aload 5
    //   169: athrow
    //   170: iconst_0
    //   171: istore_1
    //   172: goto -31 -> 141
    //
    // Exception table:
    //   from	to	target	type
    //   21	30	149	finally
    //   63	65	149	finally
    //   144	152	149	finally
    //   167	170	149	finally
    //   30	63	162	finally
    //   73	144	162	finally
    //   154	167	162	finally
  }

  public void b()
  {
    new Thread(new o(this)).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.l
 * JD-Core Version:    0.6.2
 */