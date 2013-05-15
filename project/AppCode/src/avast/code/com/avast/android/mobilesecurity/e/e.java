package com.avast.android.mobilesecurity.e;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;

abstract class e
  implements Iterator
{
  g a;
  Object b;
  private g d;

  e(c paramc)
  {
    ReentrantLock localReentrantLock = paramc.c;
    localReentrantLock.lock();
    try
    {
      this.a = a();
      if (this.a == null);
      for (Object localObject2 = null; ; localObject2 = this.a.a)
      {
        this.b = localObject2;
        return;
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  private g b(g paramg)
  {
    while (true)
    {
      g localg = a(paramg);
      if (localg == null)
        localg = null;
      while (true)
      {
        return localg;
        if (localg.a == null)
        {
          if (localg != paramg)
            break;
          localg = a();
        }
      }
      paramg = localg;
    }
  }

  abstract g a();

  abstract g a(g paramg);

  void b()
  {
    ReentrantLock localReentrantLock = this.c.c;
    localReentrantLock.lock();
    try
    {
      this.a = b(this.a);
      if (this.a == null);
      for (Object localObject2 = null; ; localObject2 = this.a.a)
      {
        this.b = localObject2;
        return;
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public boolean hasNext()
  {
    if (this.a != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public Object next()
  {
    if (this.a == null)
      throw new NoSuchElementException();
    this.d = this.a;
    Object localObject = this.b;
    b();
    return localObject;
  }

  public void remove()
  {
    g localg = this.d;
    if (localg == null)
      throw new IllegalStateException();
    this.d = null;
    ReentrantLock localReentrantLock = this.c.c;
    localReentrantLock.lock();
    try
    {
      if (localg.a != null)
        this.c.a(localg);
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.e.e
 * JD-Core Version:    0.6.2
 */