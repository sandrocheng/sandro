package com.google.analytics.tracking.android;

import android.content.Context;
import android.os.Handler;

public class w
  implements bk
{
  private static final Object a = new Object();
  private static w j;
  private Context b;
  private j c;
  private volatile l d;
  private int e = 1800;
  private boolean f = true;
  private k g = new x(this);
  private Handler h;
  private boolean i = false;

  public static w a()
  {
    if (j == null)
      j = new w();
    return j;
  }

  private void e()
  {
    this.h = new Handler(this.b.getMainLooper(), new y(this));
    if (this.e > 0)
      this.h.sendMessageDelayed(this.h.obtainMessage(1, a), 1000 * this.e);
  }

  public void a(int paramInt)
  {
    try
    {
      if (this.h == null)
      {
        ay.h("Need to call initialize() and be in fallback mode to start dispatch.");
        this.e = paramInt;
      }
      while (true)
      {
        return;
        an.a().a(ao.T);
        if ((!this.i) && (this.e > 0))
          this.h.removeMessages(1, a);
        this.e = paramInt;
        if ((paramInt > 0) && (!this.i))
          this.h.sendMessageDelayed(this.h.obtainMessage(1, a), paramInt * 1000);
      }
    }
    finally
    {
    }
  }

  void a(Context paramContext, l paraml)
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
          this.d = paraml;
          if (this.f)
            paraml.a();
        }
      }
    }
    finally
    {
    }
  }

  void a(boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        boolean bool = this.i;
        if (bool == paramBoolean)
          return;
        if ((paramBoolean) && (this.e > 0))
          this.h.removeMessages(1, a);
        if ((!paramBoolean) && (this.e > 0))
          this.h.sendMessageDelayed(this.h.obtainMessage(1, a), 1000 * this.e);
        StringBuilder localStringBuilder = new StringBuilder().append("PowerSaveMode ");
        if (paramBoolean)
        {
          str = "initiated.";
          ay.e(str);
          this.i = paramBoolean;
          continue;
        }
      }
      finally
      {
      }
      String str = "terminated.";
    }
  }

  j b()
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
    this.c = new bh(this.g, this.b);
    label50: if (this.h == null)
      e();
    j localj = this.c;
    return localj;
  }

  public void c()
  {
    try
    {
      if (this.d == null)
      {
        ay.h("dispatch call queued.  Need to call GAServiceManager.getInstance().initialize().");
        this.f = true;
      }
      while (true)
      {
        return;
        an.a().a(ao.S);
        this.d.a();
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.w
 * JD-Core Version:    0.6.2
 */