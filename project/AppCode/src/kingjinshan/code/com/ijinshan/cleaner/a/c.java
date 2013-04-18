package com.ijinshan.cleaner.a;

import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;

public final class c
{
  private ImageView a;
  private String b;
  private String c;
  private String d;
  private long e;
  private boolean f;
  private List g = new ArrayList();

  private void a(ImageView paramImageView)
  {
    this.a = paramImageView;
  }

  private void d(String paramString)
  {
    this.g.add(paramString);
  }

  private List f()
  {
    return this.g;
  }

  private ImageView g()
  {
    return this.a;
  }

  public final String a()
  {
    return this.c;
  }

  public final void a(long paramLong)
  {
    this.e = paramLong;
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public final String b()
  {
    return this.d;
  }

  public final void b(String paramString)
  {
    this.d = paramString;
  }

  public final void c(String paramString)
  {
    this.b = paramString;
  }

  public final boolean c()
  {
    return this.f;
  }

  public final String d()
  {
    return this.b;
  }

  public final long e()
  {
    return this.e;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (this == paramObject)
      bool = true;
    while (true)
    {
      return bool;
      if (paramObject == null)
      {
        bool = false;
      }
      else if (getClass() != paramObject.getClass())
      {
        bool = false;
      }
      else
      {
        c localc = (c)paramObject;
        if (this.d == null)
        {
          if (localc.d != null)
            bool = false;
        }
        else if (!this.d.equals(localc.d))
          bool = false;
        else
          bool = true;
      }
    }
  }

  public final int hashCode()
  {
    if (this.d == null);
    for (int i = 0; ; i = this.d.hashCode())
      return i + 31;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.a.c
 * JD-Core Version:    0.6.2
 */