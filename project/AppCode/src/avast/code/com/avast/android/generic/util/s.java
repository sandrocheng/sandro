package com.avast.android.generic.util;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Semaphore;

public class s
  implements Handler.Callback
{
  Context a;
  private Handler b;
  private Map c = new HashMap();
  private List d = new ArrayList();
  private Semaphore e;

  public s(Context paramContext)
  {
    this.a = paramContext;
    this.b = new Handler(this);
    this.e = new Semaphore(1);
  }

  private void a()
  {
    this.e.acquireUninterruptibly();
  }

  private void a(List paramList, Message paramMessage)
  {
    a();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (locald.get() != null)
        ((Handler.Callback)locald.get()).handleMessage(paramMessage);
      else
        localIterator.remove();
    }
    c();
  }

  private boolean b()
  {
    return this.e.tryAcquire();
  }

  private void c()
  {
    this.e.release();
  }

  public void a(int paramInt, Handler.Callback paramCallback)
  {
    try
    {
      Object localObject2 = (List)this.c.get(Integer.valueOf(paramInt));
      if (localObject2 == null)
      {
        localObject2 = new ArrayList();
        this.c.put(Integer.valueOf(paramInt), localObject2);
      }
      d locald = new d(paramCallback);
      a();
      if (!((List)localObject2).contains(locald))
        ((List)localObject2).add(locald);
      c();
      return;
    }
    finally
    {
    }
  }

  public final boolean a(int paramInt)
  {
    return this.b.sendEmptyMessage(paramInt);
  }

  public final boolean a(Message paramMessage)
  {
    return this.b.sendMessage(paramMessage);
  }

  public void b(int paramInt, Handler.Callback paramCallback)
  {
    List localList;
    d locald1;
    try
    {
      localList = (List)this.c.get(Integer.valueOf(paramInt));
      if (localList == null)
        return;
      locald1 = new d(paramCallback);
      if (!localList.contains(locald1))
        return;
      if (b())
      {
        localList.remove(locald1);
        c();
      }
    }
    finally
    {
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      d locald2 = (d)localIterator.next();
      if (locald2.equals(locald1))
        locald2.clear();
    }
  }

  public boolean handleMessage(Message paramMessage)
  {
    try
    {
      List localList = (List)this.c.get(Integer.valueOf(paramMessage.what));
      if (localList != null)
      {
        a(localList, paramMessage);
        if (localList.size() == 0)
          this.c.remove(Integer.valueOf(paramMessage.what));
      }
      a(this.d, paramMessage);
      return true;
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.s
 * JD-Core Version:    0.6.2
 */