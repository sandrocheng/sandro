package com.avast.android.mobilesecurity.app.fileshield;

import com.avast.android.generic.util.m;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;

public class c
{
  private final HashMap a;
  private final HashMap b;
  private final Comparator c;
  private final Semaphore d;
  private final Semaphore e;

  public c(Comparator paramComparator)
  {
    if (paramComparator == null)
      throw new IllegalArgumentException("Comparator must not be null");
    this.a = new HashMap();
    this.b = new HashMap();
    this.c = paramComparator;
    this.d = new Semaphore(0);
    this.e = new Semaphore(1);
  }

  private Object b()
  {
    Object localObject = c();
    Iterator localIterator = this.a.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      BlockingQueue localBlockingQueue = (BlockingQueue)this.a.get(str);
      if ((localBlockingQueue.peek() != null) && (this.c.compare(localObject, localBlockingQueue.peek()) == 0))
        localBlockingQueue.poll();
    }
    return localObject;
  }

  private Object c()
  {
    Iterator localIterator = this.a.keySet().iterator();
    Object localObject1 = null;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject2 = ((BlockingQueue)this.a.get(str)).peek();
      if (localObject2 != null)
        if ((localObject1 != null) || (localObject2 == null));
      while (true)
      {
        localObject1 = localObject2;
        break;
        if ((localObject2 == null) || (this.c.compare(localObject1, localObject2) >= 0))
          localObject2 = localObject1;
      }
    }
    return localObject1;
  }

  // ERROR //
  public Object a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_1
    //   3: ifnonnull +113 -> 116
    //   6: aload_0
    //   7: getfield 40	com/avast/android/mobilesecurity/app/fileshield/c:d	Ljava/util/concurrent/Semaphore;
    //   10: invokevirtual 91	java/util/concurrent/Semaphore:acquire	()V
    //   13: aload_0
    //   14: getfield 29	com/avast/android/mobilesecurity/app/fileshield/c:a	Ljava/util/HashMap;
    //   17: astore 5
    //   19: aload 5
    //   21: monitorenter
    //   22: aload_0
    //   23: invokespecial 93	com/avast/android/mobilesecurity/app/fileshield/c:b	()Ljava/lang/Object;
    //   26: astore 9
    //   28: aload 9
    //   30: astore_1
    //   31: aload 5
    //   33: monitorexit
    //   34: aload_1
    //   35: ifnonnull -33 -> 2
    //   38: aload_0
    //   39: getfield 40	com/avast/android/mobilesecurity/app/fileshield/c:d	Ljava/util/concurrent/Semaphore;
    //   42: invokevirtual 96	java/util/concurrent/Semaphore:release	()V
    //   45: aload_0
    //   46: getfield 42	com/avast/android/mobilesecurity/app/fileshield/c:e	Ljava/util/concurrent/Semaphore;
    //   49: invokevirtual 91	java/util/concurrent/Semaphore:acquire	()V
    //   52: aload_0
    //   53: getfield 42	com/avast/android/mobilesecurity/app/fileshield/c:e	Ljava/util/concurrent/Semaphore;
    //   56: invokevirtual 96	java/util/concurrent/Semaphore:release	()V
    //   59: goto -57 -> 2
    //   62: astore 8
    //   64: aload 8
    //   66: athrow
    //   67: astore 7
    //   69: aload 5
    //   71: monitorexit
    //   72: aload 7
    //   74: athrow
    //   75: astore 4
    //   77: aload 4
    //   79: athrow
    //   80: astore_2
    //   81: aload_1
    //   82: ifnonnull +24 -> 106
    //   85: aload_0
    //   86: getfield 40	com/avast/android/mobilesecurity/app/fileshield/c:d	Ljava/util/concurrent/Semaphore;
    //   89: invokevirtual 96	java/util/concurrent/Semaphore:release	()V
    //   92: aload_0
    //   93: getfield 42	com/avast/android/mobilesecurity/app/fileshield/c:e	Ljava/util/concurrent/Semaphore;
    //   96: invokevirtual 91	java/util/concurrent/Semaphore:acquire	()V
    //   99: aload_0
    //   100: getfield 42	com/avast/android/mobilesecurity/app/fileshield/c:e	Ljava/util/concurrent/Semaphore;
    //   103: invokevirtual 96	java/util/concurrent/Semaphore:release	()V
    //   106: aload_2
    //   107: athrow
    //   108: astore_3
    //   109: aload_3
    //   110: athrow
    //   111: astore 6
    //   113: goto -82 -> 31
    //   116: aload_1
    //   117: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   38	59	62	java/lang/InterruptedException
    //   22	28	67	finally
    //   31	34	67	finally
    //   69	72	67	finally
    //   6	22	75	java/lang/InterruptedException
    //   72	75	75	java/lang/InterruptedException
    //   6	22	80	finally
    //   72	75	80	finally
    //   77	80	80	finally
    //   85	106	108	java/lang/InterruptedException
    //   22	28	111	java/lang/Exception
  }

  public void a(String paramString)
  {
    synchronized (this.a)
    {
      Object localObject2 = (BlockingQueue)this.a.get(paramString);
      if (localObject2 == null)
      {
        localObject2 = new LinkedBlockingQueue();
        this.a.put(paramString, localObject2);
        this.b.put(paramString, Boolean.valueOf(true));
      }
      m.c("Going to pause queue " + paramString);
      int i = ((BlockingQueue)localObject2).size();
      if (!((Boolean)this.b.put(paramString, Boolean.valueOf(false))).booleanValue())
      {
        m.c("Queue " + paramString + " already paused");
      }
      else
      {
        if (i > 0)
        {
          m.c("Going to drain " + i + " permits due to pausing of " + paramString);
          this.e.acquireUninterruptibly();
          this.d.acquireUninterruptibly(i);
          this.e.release();
        }
        m.c("Queue " + paramString + " paused");
      }
    }
  }

  public boolean a(String paramString, Object paramObject)
  {
    synchronized (this.a)
    {
      Object localObject2 = (BlockingQueue)this.a.get(paramString);
      if (localObject2 == null)
      {
        localObject2 = new LinkedBlockingQueue();
        this.a.put(paramString, localObject2);
        this.b.put(paramString, Boolean.valueOf(true));
      }
      boolean bool = ((BlockingQueue)localObject2).offer(paramObject);
      if ((bool) && (((Boolean)this.b.get(paramString)).booleanValue()))
        this.d.release();
      return bool;
    }
  }

  public void b(String paramString)
  {
    while (true)
    {
      BlockingQueue localBlockingQueue;
      synchronized (this.a)
      {
        localBlockingQueue = (BlockingQueue)this.a.get(paramString);
        if (localBlockingQueue == null)
        {
          LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue();
          this.a.put(paramString, localLinkedBlockingQueue);
          this.b.put(paramString, Boolean.valueOf(true));
          localObject2 = localLinkedBlockingQueue;
          m.c("Going to resume queue " + paramString);
          if ((!((Boolean)this.b.put(paramString, Boolean.valueOf(true))).booleanValue()) && (((BlockingQueue)localObject2).size() > 0))
          {
            m.c("Going to post " + ((BlockingQueue)localObject2).size() + " permits due to resuming of " + paramString);
            this.d.release(((BlockingQueue)localObject2).size());
          }
          m.c("Queue " + paramString + " resumed");
          return;
        }
      }
      Object localObject2 = localBlockingQueue;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.c
 * JD-Core Version:    0.6.2
 */