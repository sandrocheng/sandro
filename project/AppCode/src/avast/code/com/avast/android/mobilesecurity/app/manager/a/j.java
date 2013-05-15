package com.avast.android.mobilesecurity.app.manager.a;

import android.app.ActivityManager;

public class j
  implements i
{
  private k a;
  private l b;
  private float c;
  private m d;
  private m e;
  private int f;

  public j(k paramk, l paraml)
  {
    this.a = paramk;
    this.b = paraml;
    b();
  }

  public float a()
  {
    try
    {
      if (this.c < 0.0F)
        this.c = this.a.a();
      float f1 = this.c;
      return f1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int a(ActivityManager paramActivityManager)
  {
    try
    {
      if (this.f < 0)
        this.f = this.a.a(paramActivityManager);
      int i = this.f;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void b()
  {
    try
    {
      this.c = -1.0F;
      this.d = null;
      this.e = null;
      this.f = -1;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public m c()
  {
    try
    {
      if (this.d == null)
        this.d = this.b.c();
      m localm = this.d;
      return localm;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public m d()
  {
    try
    {
      if (this.e == null)
        this.e = this.b.d();
      m localm = this.e;
      return localm;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.j
 * JD-Core Version:    0.6.2
 */