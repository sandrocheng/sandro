package com.keniu.security.i;

import android.app.ActivityManager;
import android.content.Context;
import java.util.ArrayList;

final class l extends u
{
  private static final String[] k = { "com.ijinshan.mguard", "com.ijinshan.killer" };
  private m g;
  private ActivityManager h;
  private ArrayList i = new ArrayList();
  private boolean j = true;

  public l(Context paramContext, t paramt)
  {
    super(paramContext, paramt);
  }

  private static boolean b(String paramString)
  {
    int m;
    if (k != null)
    {
      m = 0;
      if (m < k.length)
        if (!paramString.equals(k[m]));
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      m++;
      break;
    }
  }

  private void d()
  {
    if (this.h == null)
      this.h = ((ActivityManager)this.f.getSystemService("activity"));
    if (this.g == null)
    {
      this.g = new m(this);
      this.g.start();
    }
  }

  private void e()
  {
    if (this.g != null)
    {
      this.g.a();
      this.g = null;
    }
  }

  public final int a(int paramInt)
  {
    if (paramInt != this.d)
      switch (paramInt)
      {
      default:
      case 1:
      case 0:
      case 2:
      }
    while (true)
    {
      return this.d;
      if (this.h == null)
        this.h = ((ActivityManager)this.f.getSystemService("activity"));
      if (this.g == null)
      {
        this.g = new m(this);
        this.g.start();
      }
      this.d = 1;
      continue;
      if (this.g != null)
      {
        this.g.a();
        this.g = null;
      }
      this.d = 0;
      continue;
      this.j = false;
    }
  }

  public final void finalize()
  {
    a(0);
    this.i.clear();
    this.i = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.l
 * JD-Core Version:    0.6.2
 */