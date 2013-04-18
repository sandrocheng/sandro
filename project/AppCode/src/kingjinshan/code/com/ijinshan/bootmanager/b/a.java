package com.ijinshan.bootmanager.b;

import android.graphics.drawable.Drawable;
import java.util.List;

public final class a
{
  private Drawable a;
  private String b;
  private List c;
  private String d;
  private String e;
  private String f;
  private boolean g;

  private List g()
  {
    return this.c;
  }

  private String h()
  {
    return this.f;
  }

  public final void a(Drawable paramDrawable)
  {
    this.a = paramDrawable;
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final void a(List paramList)
  {
    this.c = paramList;
  }

  public final void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public final boolean a()
  {
    return this.g;
  }

  public final Drawable b()
  {
    return this.a;
  }

  public final void b(String paramString)
  {
    this.d = paramString;
  }

  public final String c()
  {
    return this.b;
  }

  public final void c(String paramString)
  {
    this.e = paramString;
  }

  public final List d()
  {
    return this.c;
  }

  public final void d(String paramString)
  {
    this.f = paramString;
  }

  public final String e()
  {
    return this.d;
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
        a locala = (a)paramObject;
        if (this.b == null)
        {
          if (locala.b != null)
            bool = false;
        }
        else if (!this.b.equals(locala.b))
          bool = false;
        else
          bool = true;
      }
    }
  }

  public final String f()
  {
    return this.e;
  }

  public final int hashCode()
  {
    if (this.b == null);
    for (int i = 0; ; i = this.b.hashCode())
      return i + 31;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.b.a
 * JD-Core Version:    0.6.2
 */