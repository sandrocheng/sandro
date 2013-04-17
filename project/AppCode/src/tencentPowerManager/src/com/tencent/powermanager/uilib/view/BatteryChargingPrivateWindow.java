package com.tencent.powermanager.uilib.view;

import ac;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import dv;

public class BatteryChargingPrivateWindow extends LinearLayout
{
  private static BatteryChargingPrivateWindow a;
  private boolean b = false;
  private WindowManager.LayoutParams c = null;
  private Context d;
  private View e;
  private int f;

  private BatteryChargingPrivateWindow(Context paramContext)
  {
    super(paramContext);
    this.d = paramContext;
    this.f = ((int)(0.5F + 25.0F * paramContext.getResources().getDisplayMetrics().density));
    this.e = LayoutInflater.from(paramContext).inflate(2130903061, null);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    addView(this.e, localLayoutParams);
  }

  /**
   * mark add_BatteryChargingPrivateWindow_view
   */
  public static void a()
  {
    if (a == null);
    while (true)
    {
      return;
      a.c = null;
      if (a.b)
        ((WindowManager)a.d.getSystemService("window")).updateViewLayout(a, a.d());
    }
  }

  public static void a(Context paramContext)
  {
    if (a == null)
      a = new BatteryChargingPrivateWindow(paramContext);
    if (a.b);
    while (true)
    {
      return;
      a.b = true;
      WindowManager localWindowManager = (WindowManager)a.d.getSystemService("window");
      WindowManager.LayoutParams localLayoutParams = a.d();
      localWindowManager.addView(a, localLayoutParams);
    }
  }

  public static void b()
  {
    if ((a == null) || (!a.b));
    while (true)
    {
      return;
      a.b = false;
      WindowManager localWindowManager = (WindowManager)a.d.getSystemService("window");
      try
      {
        localWindowManager.removeView(a);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public static void c()
  {
    b();
    a = null;
  }

  private WindowManager.LayoutParams d()
  {
    if (this.c == null)
    {
      this.c = new WindowManager.LayoutParams();
      this.c.gravity = 51;
      this.c.type = 2010;
      this.c.format = 1;
      WindowManager.LayoutParams localLayoutParams = this.c;
      localLayoutParams.flags = (0x200 | localLayoutParams.flags);//WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS
      this.c.width = -1;
      if (ac.a != 1)
        break label126;
      this.c.height = (dv.h() + this.f);
    }
    while (true)
    {
      this.c.alpha = 1.0F;
      this.c.x = 0;
      this.c.y = (0 - this.f);
      return this.c;
      label126: if (ac.a == 0)
        this.c.height = (dv.g() + 2 * this.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BatteryChargingPrivateWindow
 * JD-Core Version:    0.6.2
 */