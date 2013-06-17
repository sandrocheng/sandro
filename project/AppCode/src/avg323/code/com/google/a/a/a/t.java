package com.google.a.a.a;

import android.content.Context;
import android.content.Intent;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

class t
  implements bc, f, g
{
  private volatile long a;
  private volatile x b;
  private volatile c c;
  private h d;
  private h e;
  private final j f;
  private final Context g;
  private final Queue h = new ConcurrentLinkedQueue();
  private volatile int i;
  private volatile Timer j;
  private volatile Timer k;
  private volatile Timer l;
  private boolean m;
  private boolean n;
  private l o;
  private long p = 300000L;

  t(Context paramContext, j paramj)
  {
    this(paramContext, paramj, null);
  }

  t(Context paramContext, j paramj, h paramh)
  {
    this.e = paramh;
    this.g = paramContext;
    this.f = paramj;
    this.o = new u(this);
    this.i = 0;
    this.b = x.g;
  }

  private Timer a(Timer paramTimer)
  {
    if (paramTimer != null)
      paramTimer.cancel();
    return null;
  }

  private void f()
  {
    this.j = a(this.j);
    this.k = a(this.k);
    this.l = a(this.l);
  }

  private void g()
  {
    while (true)
    {
      try
      {
        if (!Thread.currentThread().equals(this.f.c()))
        {
          this.f.b().add(new v(this));
          return;
        }
        if (this.n)
          d();
        switch (w.a[this.b.ordinal()])
        {
        case 1:
          if (!this.h.isEmpty())
          {
            aa localaa2 = (aa)this.h.poll();
            aq.e("Sending hit to store");
            this.d.a(localaa2.a(), localaa2.b(), localaa2.c(), localaa2.d());
            continue;
          }
          break;
        case 2:
        case 3:
        }
      }
      finally
      {
      }
      if (this.m)
      {
        h();
        continue;
        while (!this.h.isEmpty())
        {
          aa localaa1 = (aa)this.h.peek();
          aq.e("Sending hit to service");
          this.c.a(localaa1.a(), localaa1.b(), localaa1.c(), localaa1.d());
          this.h.poll();
        }
        this.a = this.o.a();
        continue;
        aq.e("Need to reconnect");
        if (!this.h.isEmpty())
          j();
      }
    }
  }

  private void h()
  {
    this.d.a();
    this.m = false;
  }

  private void i()
  {
    while (true)
    {
      try
      {
        x localx1 = this.b;
        x localx2 = x.c;
        if (localx1 == localx2)
          return;
        f();
        aq.e("falling back to local store");
        if (this.e != null)
        {
          this.d = this.e;
          this.b = x.c;
          g();
          continue;
        }
      }
      finally
      {
      }
      q localq = q.a();
      localq.a(this.g, this.f);
      this.d = localq.b();
    }
  }

  private void j()
  {
    while (true)
    {
      try
      {
        if (this.c != null)
        {
          x localx1 = this.b;
          x localx2 = x.c;
          if (localx1 != localx2)
            try
            {
              this.i = (1 + this.i);
              a(this.k);
              this.b = x.a;
              this.k = new Timer("Failed Connect");
              this.k.schedule(new z(this, null), 3000L);
              aq.e("connecting to Analytics service");
              this.c.b();
              return;
            }
            catch (SecurityException localSecurityException)
            {
              aq.h("security exception on connectToService");
              i();
              continue;
            }
        }
      }
      finally
      {
      }
      aq.h("client not initialized.");
      i();
    }
  }

  private void k()
  {
    try
    {
      if ((this.c != null) && (this.b == x.b))
      {
        this.b = x.f;
        this.c.c();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void l()
  {
    this.j = a(this.j);
    this.j = new Timer("Service Reconnect");
    this.j.schedule(new ab(this, null), 5000L);
  }

  public void a()
  {
    try
    {
      this.k = a(this.k);
      this.i = 0;
      aq.e("Connected to service");
      this.b = x.b;
      g();
      this.l = a(this.l);
      this.l = new Timer("disconnect check");
      this.l.schedule(new y(this, null), this.p);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void a(int paramInt, Intent paramIntent)
  {
    try
    {
      this.b = x.e;
      if (this.i < 2)
      {
        aq.h("Service unavailable (code=" + paramInt + "), will retry.");
        l();
      }
      while (true)
      {
        return;
        aq.h("Service unavailable (code=" + paramInt + "), using local store.");
        i();
      }
    }
    finally
    {
    }
  }

  public void a(Map paramMap, long paramLong, String paramString, List paramList)
  {
    aq.e("putHit called");
    this.h.add(new aa(paramMap, paramLong, paramString, paramList));
    g();
  }

  public void b()
  {
    while (true)
    {
      try
      {
        if (this.b == x.f)
        {
          aq.e("Disconnected from service");
          f();
          this.b = x.g;
          return;
        }
        aq.e("Unexpected disconnect.");
        this.b = x.e;
        if (this.i < 2)
        {
          l();
          continue;
        }
      }
      finally
      {
      }
      i();
    }
  }

  public void c()
  {
    switch (w.a[this.b.ordinal()])
    {
    default:
      this.m = true;
    case 2:
    case 1:
    }
    while (true)
    {
      return;
      h();
    }
  }

  public void d()
  {
    aq.e("clearHits called");
    this.h.clear();
    switch (w.a[this.b.ordinal()])
    {
    default:
      this.n = true;
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.d.a(0L);
      this.n = false;
      continue;
      this.c.a();
      this.n = false;
    }
  }

  public void e()
  {
    if (this.c != null);
    while (true)
    {
      return;
      this.c = new d(this.g, this, this);
      j();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.t
 * JD-Core Version:    0.6.2
 */