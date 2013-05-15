package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.Intent;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

class z
  implements bl, h, i
{
  private volatile long a;
  private volatile ad b;
  private volatile e c;
  private j d;
  private j e;
  private final l f;
  private final Context g;
  private final Queue h = new ConcurrentLinkedQueue();
  private volatile int i;
  private volatile Timer j;
  private volatile Timer k;
  private volatile Timer l;
  private boolean m;
  private boolean n;
  private n o;
  private long p = 300000L;

  z(Context paramContext, l paraml)
  {
    this(paramContext, paraml, null);
  }

  z(Context paramContext, l paraml, j paramj)
  {
    this.e = paramj;
    this.g = paramContext;
    this.f = paraml;
    this.o = new aa(this);
    this.i = 0;
    this.b = ad.g;
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
          this.f.b().add(new ab(this));
          return;
        }
        if (this.n)
          d();
        switch (ac.a[this.b.ordinal()])
        {
        case 1:
          if (!this.h.isEmpty())
          {
            ag localag2 = (ag)this.h.poll();
            ay.e("Sending hit to store");
            this.d.a(localag2.a(), localag2.b(), localag2.c(), localag2.d());
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
          ag localag1 = (ag)this.h.peek();
          ay.e("Sending hit to service");
          this.c.a(localag1.a(), localag1.b(), localag1.c(), localag1.d());
          this.h.poll();
        }
        this.a = this.o.a();
        continue;
        ay.e("Need to reconnect");
        if (!this.h.isEmpty())
          j();
      }
    }
  }

  private void h()
  {
    this.d.b();
    this.m = false;
  }

  private void i()
  {
    while (true)
    {
      try
      {
        ad localad1 = this.b;
        ad localad2 = ad.c;
        if (localad1 == localad2)
          return;
        f();
        ay.e("falling back to local store");
        if (this.e != null)
        {
          this.d = this.e;
          this.b = ad.c;
          g();
          continue;
        }
      }
      finally
      {
      }
      w localw = w.a();
      localw.a(this.g, this.f);
      this.d = localw.b();
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
          ad localad1 = this.b;
          ad localad2 = ad.c;
          if (localad1 != localad2)
            try
            {
              this.i = (1 + this.i);
              a(this.k);
              this.b = ad.a;
              this.k = new Timer("Failed Connect");
              this.k.schedule(new af(this, null), 3000L);
              ay.e("connecting to Analytics service");
              this.c.b();
              return;
            }
            catch (SecurityException localSecurityException)
            {
              ay.h("security exception on connectToService");
              i();
              continue;
            }
        }
      }
      finally
      {
      }
      ay.h("client not initialized.");
      i();
    }
  }

  private void k()
  {
    try
    {
      if ((this.c != null) && (this.b == ad.b))
      {
        this.b = ad.f;
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
    this.j.schedule(new ah(this, null), 5000L);
  }

  public void a()
  {
    try
    {
      this.k = a(this.k);
      this.i = 0;
      ay.e("Connected to service");
      this.b = ad.b;
      g();
      this.l = a(this.l);
      this.l = new Timer("disconnect check");
      this.l.schedule(new ae(this, null), this.p);
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
      ay.h("Connection to service failed " + paramInt);
      this.b = ad.e;
      if (this.i < 2)
        l();
      while (true)
      {
        return;
        i();
      }
    }
    finally
    {
    }
  }

  public void a(Map paramMap, long paramLong, String paramString, List paramList)
  {
    ay.e("putHit called");
    this.h.add(new ag(paramMap, paramLong, paramString, paramList));
    g();
  }

  public void b()
  {
    while (true)
    {
      try
      {
        if (this.b == ad.f)
        {
          ay.e("Disconnected from service");
          f();
          this.b = ad.g;
          return;
        }
        ay.e("Unexpected disconnect.");
        this.b = ad.e;
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
    switch (ac.a[this.b.ordinal()])
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
    ay.e("clearHits called");
    this.h.clear();
    switch (ac.a[this.b.ordinal()])
    {
    default:
      this.n = true;
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.d.a();
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
      this.c = new f(this.g, this, this);
      j();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.z
 * JD-Core Version:    0.6.2
 */