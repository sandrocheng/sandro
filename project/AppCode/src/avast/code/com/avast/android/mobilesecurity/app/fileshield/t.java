package com.avast.android.mobilesecurity.app.fileshield;

import android.content.Context;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.app.scanner.o;
import com.avast.android.mobilesecurity.engine.i;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class t extends Thread
{
  private final Context b;
  private final Map c = new HashMap();
  private final e d = e.a();
  private final v e = v.a();
  private long f;
  private long g;
  private int h;

  public t(FileShieldService paramFileShieldService, Context paramContext)
  {
    super("AMS-SS$SThread");
    this.b = paramContext;
    this.f = System.currentTimeMillis();
    this.g = 0L;
    this.h = 0;
  }

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 35	com/avast/android/mobilesecurity/app/fileshield/t:c	Ljava/util/Map;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 35	com/avast/android/mobilesecurity/app/fileshield/t:c	Ljava/util/Map;
    //   11: invokeinterface 69 1 0
    //   16: ifeq +8 -> 24
    //   19: aload_1
    //   20: monitorexit
    //   21: goto +87 -> 108
    //   24: aload_0
    //   25: getfield 35	com/avast/android/mobilesecurity/app/fileshield/t:c	Ljava/util/Map;
    //   28: invokeinterface 73 1 0
    //   33: invokeinterface 79 1 0
    //   38: astore_3
    //   39: aload_3
    //   40: invokeinterface 84 1 0
    //   45: ifeq +44 -> 89
    //   48: aload_3
    //   49: invokeinterface 88 1 0
    //   54: checkcast 90	java/util/Map$Entry
    //   57: astore 4
    //   59: aload_0
    //   60: getfield 23	com/avast/android/mobilesecurity/app/fileshield/t:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   63: invokestatic 95	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:f	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/c;
    //   66: aload 4
    //   68: invokeinterface 98 1 0
    //   73: checkcast 100	java/lang/String
    //   76: aload 4
    //   78: invokeinterface 103 1 0
    //   83: invokevirtual 108	com/avast/android/mobilesecurity/app/fileshield/c:a	(Ljava/lang/String;Ljava/lang/Object;)Z
    //   86: ifne +13 -> 99
    //   89: aload_1
    //   90: monitorexit
    //   91: goto +17 -> 108
    //   94: astore_2
    //   95: aload_1
    //   96: monitorexit
    //   97: aload_2
    //   98: athrow
    //   99: aload_3
    //   100: invokeinterface 111 1 0
    //   105: goto -66 -> 39
    //   108: return
    //
    // Exception table:
    //   from	to	target	type
    //   7	97	94	finally
    //   99	105	94	finally
  }

  private void a(String paramString, a parama)
  {
    synchronized (this.c)
    {
      this.c.put(parama, paramString);
      return;
    }
  }

  private void b()
  {
    u localu = u.a(this.b);
    long l = Math.round((System.currentTimeMillis() - this.f) / 1000L / 60L);
    localu.a(y.M, null, null, null, Long.valueOf(this.g), Long.valueOf(l), null);
  }

  public void a(a parama, String paramString)
  {
    if (!FileShieldService.f(this.a).a(paramString, parama))
      a(paramString, parama);
  }

  public void run()
  {
    super.run();
    try
    {
      while (true)
      {
        a();
        long l = System.nanoTime();
        a locala = (a)FileShieldService.f(this.a).a();
        if (System.nanoTime() - l > 1000000000L)
        {
          FileShieldService.c(this.a).f(this.h);
          this.h = 0;
        }
        File localFile = locala.b();
        if ((localFile != null) && (localFile.isFile()) && (localFile.exists()) && (!this.d.a(localFile.getAbsolutePath())) && (!this.e.a(localFile.getAbsolutePath())))
        {
          List localList = i.a(this.b, null, localFile, null, locala.a());
          this.g = (1L + this.g);
          if (this.g % 1000L == 0L)
          {
            System.gc();
            FileShieldService.c(this.a).f(this.h);
            this.h = 0;
          }
          FileShieldService.h(this.a).a(localList, null, localFile.getAbsolutePath(), null, 8);
          this.h = (1 + this.h);
          if (System.currentTimeMillis() > 900000L + this.f)
          {
            b();
            this.f = System.currentTimeMillis();
            this.g = 0L;
          }
        }
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      FileShieldService.c(this.a).f(this.h);
      this.h = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.t
 * JD-Core Version:    0.6.2
 */