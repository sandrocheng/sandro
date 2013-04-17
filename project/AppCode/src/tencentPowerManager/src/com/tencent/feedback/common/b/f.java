package com.tencent.feedback.common.b;

import com.tencent.feedback.common.Constants;

public class f
{
  private int a = 1;
  private int b = 50;
  private int c = 3;
  private String d = "http://monitor.uu.qq.com/analytics/upload";
  private boolean e = true;
  private boolean f = true;
  private boolean g = true;
  private boolean h = true;
  private boolean i = true;
  private boolean j = true;

  public final int a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.a = paramInt;
  }

  public final void a(String paramString)
  {
    this.d = paramString;
  }

  public final void a(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public final int b()
  {
    return this.b;
  }

  public final void b(int paramInt)
  {
    this.b = paramInt;
  }

  public final void b(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public final int c()
  {
    return this.c;
  }

  public final void c(int paramInt)
  {
    this.c = paramInt;
  }

  public final void c(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  protected Object clone()
  {
    return super.clone();
  }

  public final String d()
  {
    String str;
    if (Constants.IS_USETESTSERVER)
      if (Constants.IS_ZHUANTEST)
        str = "http://112.90.139.158:8080/analytics/upload";
    while (true)
    {
      return str;
      str = "http://monitor.sp0309.3g.qq.com/analytics/upload";
      continue;
      str = this.d;
    }
  }

  public final void d(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public final void e(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }

  public final boolean e()
  {
    return this.e;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == null)
      bool = false;
    while (true)
    {
      return bool;
      if (f.class.isInstance(paramObject))
      {
        f localf = (f)f.class.cast(paramObject);
        if (localf.f != this.f)
          bool = false;
        else if (localf.i != this.i)
          bool = false;
        else if (localf.e != this.e)
          bool = false;
        else if (localf.h != this.h)
          bool = false;
        else if (localf.g != this.g)
          bool = false;
        else if (localf.j != this.j)
          bool = false;
        else if (localf.b != this.b)
          bool = false;
        else if (localf.a != this.a)
          bool = false;
        else if (!localf.d.equals(this.d))
          bool = false;
        else if (localf.c != this.c)
          bool = false;
        else
          bool = true;
      }
      else
      {
        bool = false;
      }
    }
  }

  public final void f(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public final boolean f()
  {
    return this.f;
  }

  public final boolean g()
  {
    return this.g;
  }

  public final boolean h()
  {
    return this.h;
  }

  public final boolean i()
  {
    return this.i;
  }

  public final boolean j()
  {
    return this.j;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("uploadServer:");
    String str;
    if (Constants.IS_USETESTSERVER)
      if (Constants.IS_ZHUANTEST)
        str = "http://112.90.139.158:8080/analytics/upload";
    while (true)
    {
      return str + "\n" + "maxPackageSize:" + this.b + "\n" + "uploadStrategy:" + this.c + "\n" + "speedMonitorServerOpen:" + this.e + "\n" + "speedMonitorUserOpen:" + this.h + "\n" + "exceptionUploadServerOpen:" + this.f + "\n" + "exceptionUploadUserOpen:" + this.i + "\n" + "userEventServerOpen:" + this.g + "\n" + "userEventUserOpen:" + this.j + "\n";
      str = "http://monitor.sp0309.3g.qq.com/analytics/upload";
      continue;
      str = this.d;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.b.f
 * JD-Core Version:    0.6.2
 */