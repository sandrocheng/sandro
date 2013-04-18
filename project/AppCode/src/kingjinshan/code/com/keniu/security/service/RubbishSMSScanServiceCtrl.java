package com.keniu.security.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import com.jxphone.mosecurity.a.a;

public class RubbishSMSScanServiceCtrl extends Service
{
  Binder a = new g(this);
  private f b = null;
  private h c = null;
  private Handler d = new Handler();

  public final void a()
  {
    try
    {
      if (this.c == null)
      {
        this.c = new h(this);
        this.c.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    try
    {
      if (this.b != null)
        this.b.a(paramInt1, paramInt2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(f paramf)
  {
    try
    {
      this.b = paramf;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean, int paramInt)
  {
    while (true)
    {
      try
      {
        if (this.b != null)
        {
          this.b.a(paramInt);
          if (paramBoolean)
          {
            a.g(this, "5");
            a.b(this, paramInt);
            this.c = null;
          }
        }
        else
        {
          this.d.post(new e(this, paramInt));
          continue;
        }
      }
      finally
      {
      }
      a.g(this, "4");
    }
  }

  public final void b()
  {
    try
    {
      if (this.c != null)
        this.c.a();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b(f paramf)
  {
    try
    {
      if (paramf == this.b)
        this.b = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean c()
  {
    try
    {
      h localh = this.c;
      if (localh != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final void d()
  {
    try
    {
      if (this.b != null)
        this.b.c();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.RubbishSMSScanServiceCtrl
 * JD-Core Version:    0.6.2
 */