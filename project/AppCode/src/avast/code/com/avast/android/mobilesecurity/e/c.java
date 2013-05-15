package com.avast.android.mobilesecurity.e;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class c extends AbstractQueue
  implements a, Serializable
{
  transient g a;
  transient g b;
  final ReentrantLock c = new ReentrantLock();
  private transient int d;
  private final int e;
  private final Condition f = this.c.newCondition();
  private final Condition g = this.c.newCondition();

  public c()
  {
    this(2147483647);
  }

  public c(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException();
    this.e = paramInt;
  }

  private boolean b(g paramg)
  {
    boolean bool;
    if (this.d >= this.e)
    {
      bool = false;
      return bool;
    }
    g localg = this.a;
    paramg.c = localg;
    this.a = paramg;
    if (this.b == null)
      this.b = paramg;
    while (true)
    {
      this.d = (1 + this.d);
      this.f.signal();
      bool = true;
      break;
      localg.b = paramg;
    }
  }

  private boolean c(g paramg)
  {
    boolean bool;
    if (this.d >= this.e)
    {
      bool = false;
      return bool;
    }
    g localg = this.b;
    paramg.b = localg;
    this.b = paramg;
    if (this.a == null)
      this.a = paramg;
    while (true)
    {
      this.d = (1 + this.d);
      this.f.signal();
      bool = true;
      break;
      localg.c = paramg;
    }
  }

  private Object h()
  {
    g localg1 = this.a;
    Object localObject1 = null;
    if (localg1 == null)
      return localObject1;
    g localg2 = localg1.c;
    Object localObject2 = localg1.a;
    localg1.a = null;
    localg1.c = localg1;
    this.a = localg2;
    if (localg2 == null)
      this.b = null;
    while (true)
    {
      this.d = (-1 + this.d);
      this.g.signal();
      localObject1 = localObject2;
      break;
      localg2.b = null;
    }
  }

  private Object i()
  {
    g localg1 = this.b;
    Object localObject1 = null;
    if (localg1 == null)
      return localObject1;
    g localg2 = localg1.b;
    Object localObject2 = localg1.a;
    localg1.a = null;
    localg1.b = localg1;
    this.b = localg2;
    if (localg2 == null)
      this.a = null;
    while (true)
    {
      this.d = (-1 + this.d);
      this.g.signal();
      localObject1 = localObject2;
      break;
      localg2.c = null;
    }
  }

  public Object a()
  {
    Object localObject = c();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public Object a(long paramLong, TimeUnit paramTimeUnit)
  {
    long l1 = paramTimeUnit.toNanos(paramLong);
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lockInterruptibly();
    long l2 = l1;
    try
    {
      Object localObject2 = h();
      Object localObject3 = localObject2;
      if (localObject3 == null)
        if (l2 <= 0L)
          localObject3 = null;
      while (true)
      {
        return localObject3;
        long l3 = this.f.awaitNanos(l2);
        l2 = l3;
        break;
        localReentrantLock.unlock();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  void a(g paramg)
  {
    g localg1 = paramg.b;
    g localg2 = paramg.c;
    if (localg1 == null)
      h();
    while (true)
    {
      return;
      if (localg2 == null)
      {
        i();
      }
      else
      {
        localg1.c = localg2;
        localg2.b = localg1;
        paramg.a = null;
        this.d = (-1 + this.d);
        this.g.signal();
      }
    }
  }

  public void a(Object paramObject)
  {
    if (!c(paramObject))
      throw new IllegalStateException("Deque full");
  }

  public boolean a(Object paramObject, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramObject == null)
      throw new NullPointerException();
    g localg = new g(paramObject);
    long l1 = paramTimeUnit.toNanos(paramLong);
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lockInterruptibly();
    try
    {
      boolean bool1 = c(localg);
      boolean bool2;
      if (!bool1)
        if (l1 <= 0L)
          bool2 = false;
      while (true)
      {
        return bool2;
        long l2 = this.g.awaitNanos(l1);
        l1 = l2;
        break;
        bool2 = true;
        localReentrantLock.unlock();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public boolean add(Object paramObject)
  {
    a(paramObject);
    return true;
  }

  public Object b()
  {
    Object localObject = d();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public boolean b(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException();
    g localg = new g(paramObject);
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      boolean bool = b(localg);
      return bool;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public Object c()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      Object localObject2 = h();
      return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public boolean c(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException();
    g localg = new g(paramObject);
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      boolean bool = c(localg);
      return bool;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public void clear()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      g localg;
      for (Object localObject2 = this.a; localObject2 != null; localObject2 = localg)
      {
        ((g)localObject2).a = null;
        localg = ((g)localObject2).c;
        ((g)localObject2).b = null;
        ((g)localObject2).c = null;
      }
      this.b = null;
      this.a = null;
      this.d = 0;
      this.g.signalAll();
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public boolean contains(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ReentrantLock localReentrantLock = this.c;
      localReentrantLock.lock();
      try
      {
        for (g localg = this.a; ; localg = localg.c)
        {
          if (localg == null)
            break label63;
          boolean bool2 = paramObject.equals(localg.a);
          if (bool2)
          {
            bool1 = true;
            localReentrantLock.unlock();
            break;
          }
        }
        label63: localReentrantLock.unlock();
        bool1 = false;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }

  public Object d()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      Object localObject2 = i();
      return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public void d(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException();
    g localg = new g(paramObject);
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      if (!c(localg))
        this.g.await();
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public int drainTo(Collection paramCollection)
  {
    return drainTo(paramCollection, 2147483647);
  }

  public int drainTo(Collection paramCollection, int paramInt)
  {
    if (paramCollection == null)
      throw new NullPointerException();
    if (paramCollection == this)
      throw new IllegalArgumentException();
    int i = 0;
    if (paramInt <= 0);
    while (true)
    {
      return i;
      ReentrantLock localReentrantLock = this.c;
      localReentrantLock.lock();
      try
      {
        int j = Math.min(paramInt, this.d);
        while (i < j)
        {
          paramCollection.add(this.a.a);
          h();
          i++;
        }
        localReentrantLock.unlock();
        i = j;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }

  public Object e()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    Object localObject2;
    try
    {
      localObject2 = h();
      if (localObject2 == null)
        this.f.await();
    }
    finally
    {
      localReentrantLock.unlock();
    }
    return localObject2;
  }

  public boolean e(Object paramObject)
  {
    boolean bool = false;
    if (paramObject == null);
    while (true)
    {
      return bool;
      ReentrantLock localReentrantLock = this.c;
      localReentrantLock.lock();
      try
      {
        for (g localg = this.a; ; localg = localg.c)
        {
          if (localg == null)
            break label65;
          if (paramObject.equals(localg.a))
          {
            a(localg);
            bool = true;
            localReentrantLock.unlock();
            break;
          }
        }
        label65: localReentrantLock.unlock();
        bool = false;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }

  public Object element()
  {
    return f();
  }

  public Object f()
  {
    Object localObject = g();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public Object g()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      g localg = this.a;
      if (localg == null);
      for (Object localObject2 = null; ; localObject2 = this.a.a)
        return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public Iterator iterator()
  {
    return new f(this, null);
  }

  public boolean offer(Object paramObject)
  {
    return c(paramObject);
  }

  public boolean offer(Object paramObject, long paramLong, TimeUnit paramTimeUnit)
  {
    return a(paramObject, paramLong, paramTimeUnit);
  }

  public Object peek()
  {
    return g();
  }

  public Object poll()
  {
    return c();
  }

  public Object poll(long paramLong, TimeUnit paramTimeUnit)
  {
    return a(paramLong, paramTimeUnit);
  }

  public void put(Object paramObject)
  {
    d(paramObject);
  }

  public int remainingCapacity()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      int i = this.e;
      int j = this.d;
      int k = i - j;
      return k;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public Object remove()
  {
    return a();
  }

  public boolean remove(Object paramObject)
  {
    return e(paramObject);
  }

  public int size()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      int i = this.d;
      return i;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public Object take()
  {
    return e();
  }

  public Object[] toArray()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      Object[] arrayOfObject = new Object[this.d];
      int i = 0;
      g localg = this.a;
      while (localg != null)
      {
        int j = i + 1;
        arrayOfObject[i] = localg.a;
        localg = localg.c;
        i = j;
      }
      return arrayOfObject;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public Object[] toArray(Object[] paramArrayOfObject)
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      if (paramArrayOfObject.length < this.d)
        paramArrayOfObject = (Object[])Array.newInstance(paramArrayOfObject.getClass().getComponentType(), this.d);
      int i = 0;
      g localg = this.a;
      while (localg != null)
      {
        int j = i + 1;
        paramArrayOfObject[i] = localg.a;
        localg = localg.c;
        i = j;
      }
      if (paramArrayOfObject.length > i)
        paramArrayOfObject[i] = null;
      return paramArrayOfObject;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public String toString()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      g localg1 = this.a;
      Object localObject4;
      if (localg1 == null)
      {
        localObject4 = "[]";
        return localObject4;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append('[');
      g localg2;
      for (Object localObject2 = localg1; ; localObject2 = localg2)
      {
        Object localObject3 = ((g)localObject2).a;
        if (localObject3 == this)
          localObject3 = "(this Collection)";
        localStringBuilder.append(localObject3);
        localg2 = ((g)localObject2).c;
        if (localg2 == null)
        {
          String str = ']';
          localObject4 = str;
          localReentrantLock.unlock();
          break;
        }
        localStringBuilder.append(',').append(' ');
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.e.c
 * JD-Core Version:    0.6.2
 */