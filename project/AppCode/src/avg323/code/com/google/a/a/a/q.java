package com.google.a.a.a;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;

public class q
  implements bb
{
  private static final Object a = new Object();
  private static q m;
  private Context b;
  private h c;
  private volatile j d;
  private int e = 1800;
  private boolean f = true;
  private boolean g = true;
  private boolean h = true;
  private i i = new r(this);
  private Handler j;
  private p k;
  private boolean l = false;

  public static q a()
  {
    if (m == null)
      m = new q();
    return m;
  }

  private void e()
  {
    this.k = new p(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    this.b.registerReceiver(this.k, localIntentFilter);
  }

  private void f()
  {
    this.j = new Handler(this.b.getMainLooper(), new s(this));
    if (this.e > 0)
      this.j.sendMessageDelayed(this.j.obtainMessage(1, a), 1000 * this.e);
  }

  public void a(int paramInt)
  {
    try
    {
      if (this.j == null)
      {
        aq.h("Need to call initialize() and be in fallback mode to start dispatch.");
        this.e = paramInt;
      }
      while (true)
      {
        return;
        ah.a().a(ai.T);
        if ((!this.l) && (this.g) && (this.e > 0))
          this.j.removeMessages(1, a);
        this.e = paramInt;
        if ((paramInt > 0) && (!this.l) && (this.g))
          this.j.sendMessageDelayed(this.j.obtainMessage(1, a), paramInt * 1000);
      }
    }
    finally
    {
    }
  }

  void a(Context paramContext, j paramj)
  {
    try
    {
      Context localContext = this.b;
      if (localContext != null);
      while (true)
      {
        return;
        this.b = paramContext.getApplicationContext();
        if (this.d == null)
        {
          this.d = paramj;
          if (this.f)
            paramj.a();
        }
      }
    }
    finally
    {
    }
  }

  public void a(boolean paramBoolean)
  {
    try
    {
      a(this.l, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    while (true)
    {
      try
      {
        if (this.l == paramBoolean1)
        {
          boolean bool = this.g;
          if (bool == paramBoolean2)
            return;
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (this.e > 0))
          this.j.removeMessages(1, a);
        if ((!paramBoolean1) && (paramBoolean2) && (this.e > 0))
          this.j.sendMessageDelayed(this.j.obtainMessage(1, a), 1000 * this.e);
        StringBuilder localStringBuilder = new StringBuilder().append("PowerSaveMode ");
        if (paramBoolean1)
          break label158;
        if (!paramBoolean2)
        {
          break label158;
          aq.e(str);
          this.l = paramBoolean1;
          this.g = paramBoolean2;
          continue;
        }
      }
      finally
      {
      }
      String str = "terminated.";
      continue;
      label158: str = "initiated.";
    }
  }

  h b()
  {
    try
    {
      if (this.c != null)
        break label50;
      if (this.b == null)
        throw new IllegalStateException("Cant get a store unless we have a context");
    }
    finally
    {
    }
    this.c = new ax(this.i, this.b);
    label50: if (this.j == null)
      f();
    if ((this.k == null) && (this.h))
      e();
    h localh = this.c;
    return localh;
  }

  public void c()
  {
    try
    {
      if (this.d == null)
      {
        aq.h("dispatch call queued.  Need to call GAServiceManager.getInstance().initialize().");
        this.f = true;
      }
      while (true)
      {
        return;
        ah.a().a(ai.S);
        this.d.a();
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.q
 * JD-Core Version:    0.6.2
 */