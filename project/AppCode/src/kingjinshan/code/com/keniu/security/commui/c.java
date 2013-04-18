package com.keniu.security.commui;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

public class c
{
  protected WindowManager b;
  protected WindowManager.LayoutParams c;
  protected Context d;
  protected View e;
  protected boolean f = false;

  public c(Context paramContext)
  {
    this.d = paramContext;
    this.b = ((WindowManager)this.d.getSystemService("window"));
    this.c = new WindowManager.LayoutParams();
    this.c.type = 2003;
    this.c.width = -2;
    this.c.height = -2;
    this.c.gravity = 17;
  }

  private boolean a()
  {
    return this.f;
  }

  public final void c()
  {
    if ((this.f) && (this.e != null) && (this.b != null));
    try
    {
      this.b.removeView(this.e);
      this.f = false;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void d()
  {
    if ((!this.f) && (this.e != null) && (this.b != null) && (this.c != null));
    try
    {
      this.b.addView(this.e, this.c);
      this.f = true;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commui.c
 * JD-Core Version:    0.6.2
 */