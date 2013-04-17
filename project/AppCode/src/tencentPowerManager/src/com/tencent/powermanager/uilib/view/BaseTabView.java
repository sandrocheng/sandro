package com.tencent.powermanager.uilib.view;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.powermanager.PowerManagerApplication;

public abstract class BaseTabView extends LinearLayout
{
  protected Context a;
  private boolean b = false;

  public BaseTabView(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
  }

  public final boolean c()
  {
    return this.b;
  }

  public void d()
  {
    try
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      addView(inflate(PowerManagerApplication.a(), g(), null), localLayoutParams);
      this.b = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void e()
  {
    if (!this.b)
      d();
  }

  public void f()
  {
    this.a = null;
  }

  public abstract int g();

  public abstract void h();

  public void setmCreated(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BaseTabView
 * JD-Core Version:    0.6.2
 */