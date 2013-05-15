package com.avast.android.mobilesecurity.app.messageshield;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.filter.SmsBlockOfferActivity;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.engine.o;
import com.avast.android.mobilesecurity.engine.p;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public class c
{
  private static boolean a;
  private static boolean b;
  private static Semaphore c = new Semaphore(0);
  private static Object d = new Object();
  private static LinkedList e = new LinkedList();
  private static Map f = new HashMap();
  private static Map g = new HashMap();

  public static void a(Context paramContext, MessageToScan paramMessageToScan, Set paramSet, com.avast.android.mobilesecurity.engine.k paramk, int paramInt)
  {
    m.c("MessageShieldStarter: Starting message shield for UUID: " + paramMessageToScan.b);
    synchronized (d)
    {
      if (a)
      {
        m.c("MessageShieldStarter: Block offer visible, removing the UUID from its queue.");
        c.drainPermits();
        b = false;
        Intent localIntent = new Intent(paramContext, SmsBlockOfferActivity.class);
        localIntent.setAction("SmsBlockOfferActivity.REMOVE_UUID");
        localIntent.putExtra("uuid", paramMessageToScan.b);
        localIntent.addFlags(268435456);
        paramContext.startActivity(localIntent);
      }
    }
    try
    {
      while (true)
      {
        c.tryAcquire(5000L, TimeUnit.MILLISECONDS);
        if (b)
          a = false;
        m.c("MessageShieldStarter: Block offer removed the UUID.");
        a(paramMessageToScan.b);
        MessageShieldActivity.call(paramContext, paramMessageToScan, paramSet, paramk, paramInt);
        return;
        c.release();
      }
      localObject2 = finally;
      throw localObject2;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        m.b("MessageShieldStarter", localInterruptedException);
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, Bundle paramBundle, b paramb, int paramInt)
  {
    m.c("MessageShieldStarter: Starting message scan.");
    Semaphore localSemaphore;
    long l;
    synchronized (d)
    {
      m.c("MessageShieldStarter: Waiting for the scan for UUID: " + paramString1 + " to complete.");
      MessageToScan localMessageToScan = new MessageToScan();
      localMessageToScan.b = paramString1;
      localMessageToScan.f = paramString2;
      localMessageToScan.h = paramString3;
      localMessageToScan.g = paramString4;
      localMessageToScan.i = paramLong;
      localMessageToScan.j = paramBundle;
      localMessageToScan.e = p.b;
      new k(paramContext, new a(paramContext), new d()).execute(new MessageToScan[] { localMessageToScan });
      localSemaphore = new Semaphore(0);
      f.put(paramString1, localSemaphore);
      g.put(paramString1, paramb);
      l = paramInt;
    }
    try
    {
      localSemaphore.tryAcquire(l, TimeUnit.MILLISECONDS);
      return;
      localObject2 = finally;
      throw localObject2;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, Bundle paramBundle, int paramInt)
  {
    m.c("MessageShieldStarter: Starting block offer for UUID: " + paramString1);
    synchronized (d)
    {
      if (!e.contains(paramString1))
      {
        SmsBlockOfferActivity.call(paramContext, paramString1, paramString2, paramString3, paramString4, paramBundle, paramInt);
        a = true;
        u.a(paramContext).a(y.v, null, paramString2, null, null, null, null);
        return;
      }
      m.c("MessageShieldStarter: Message shield already started for given UUID: " + paramString1);
    }
  }

  // ERROR //
  public static void a(Context paramContext, java.util.Queue paramQueue, int paramInt)
  {
    // Byte code:
    //   0: ldc 222
    //   2: invokestatic 68	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   5: pop
    //   6: getstatic 30	com/avast/android/mobilesecurity/app/messageshield/c:d	Ljava/lang/Object;
    //   9: astore 4
    //   11: aload 4
    //   13: monitorenter
    //   14: aload_1
    //   15: invokeinterface 228 1 0
    //   20: astore 6
    //   22: aload 6
    //   24: invokeinterface 234 1 0
    //   29: ifeq +54 -> 83
    //   32: aload 6
    //   34: invokeinterface 238 1 0
    //   39: checkcast 240	android/os/Bundle
    //   42: ldc 93
    //   44: invokevirtual 244	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   47: astore 10
    //   49: aload 10
    //   51: ifnull -29 -> 22
    //   54: getstatic 35	com/avast/android/mobilesecurity/app/messageshield/c:e	Ljava/util/LinkedList;
    //   57: aload 10
    //   59: invokevirtual 201	java/util/LinkedList:contains	(Ljava/lang/Object;)Z
    //   62: ifeq -40 -> 22
    //   65: aload 6
    //   67: invokeinterface 247 1 0
    //   72: goto -50 -> 22
    //   75: astore 5
    //   77: aload 4
    //   79: monitorexit
    //   80: aload 5
    //   82: athrow
    //   83: aload_1
    //   84: invokeinterface 250 1 0
    //   89: ifne +48 -> 137
    //   92: new 80	android/content/Intent
    //   95: dup
    //   96: aload_0
    //   97: ldc 82
    //   99: invokespecial 85	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   102: astore 7
    //   104: aload 7
    //   106: iload_2
    //   107: invokevirtual 102	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   110: pop
    //   111: aload 7
    //   113: ldc 252
    //   115: new 254	java/util/ArrayList
    //   118: dup
    //   119: aload_1
    //   120: invokespecial 257	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   123: invokevirtual 261	android/content/Intent:putParcelableArrayListExtra	(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    //   126: pop
    //   127: iconst_1
    //   128: putstatic 70	com/avast/android/mobilesecurity/app/messageshield/c:a	Z
    //   131: aload_0
    //   132: aload 7
    //   134: invokevirtual 108	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   137: aload 4
    //   139: monitorexit
    //   140: return
    //
    // Exception table:
    //   from	to	target	type
    //   14	80	75	finally
    //   83	140	75	finally
  }

  private static void a(String paramString)
  {
    e.add(paramString);
    if (e.size() > 100)
    {
      String str = (String)e.poll();
      f.remove(str);
    }
  }

  public static void a(String paramString, o paramo)
  {
    m.c("MessageShieldStarter: Scan for UUID: " + paramString + " finished.");
    synchronized (d)
    {
      Semaphore localSemaphore = (Semaphore)f.remove(paramString);
      b localb = (b)g.remove(paramString);
      m.c("MessageShieldStarter: ScanSemaphore: " + localSemaphore);
      m.c("MessageShieldStarter: Callback: " + localb);
      if (localb != null)
        localb.a(paramString, paramo);
      if (localSemaphore != null)
        localSemaphore.release();
      return;
    }
  }

  public static void a(boolean paramBoolean)
  {
    m.c("MessageShieldStarter: Block offer finished removing UUID.");
    b = paramBoolean;
    c.release();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.c
 * JD-Core Version:    0.6.2
 */