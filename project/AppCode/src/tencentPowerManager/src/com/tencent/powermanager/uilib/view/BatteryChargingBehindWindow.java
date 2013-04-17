package com.tencent.powermanager.uilib.view;

import ac;
import ac.b;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.powermanager.uilib.services.OnSuspendedViewTouch;
import dv;
import java.util.ArrayList;
import java.util.Iterator;

public class BatteryChargingBehindWindow extends OnSuspendedViewTouch
{
  private static BatteryChargingBehindWindow g;
  private static ArrayList<ac.b> l = new ArrayList();
  private WindowManager.LayoutParams h = null;
  private Context i;
  private View j;
  private int k;
  private boolean m = false;

  private BatteryChargingBehindWindow(Context paramContext)
  {
    super(paramContext);
    this.i = paramContext;
    this.e = 2;
    this.d = 1;
    this.k = ((int)(0.5F + 25.0F * paramContext.getResources().getDisplayMetrics().density));
    this.j = LayoutInflater.from(paramContext).inflate(2130903060, null);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    addView(this.j, localLayoutParams);
  }

  public static void a(ac.b paramb)
  {
    l.remove(paramb);
  }

  /**
   * //mark BatteryChargingBehindWindow_init
   * @param paramContext
   */
  public static void a(Context paramContext)
  {
    if (g == null)
      g = new BatteryChargingBehindWindow(paramContext);
  }

  
  /**
   * mark add_BatteryChargingBehindWindow_view
   */
  public static void b()
  {
    if (g == null);
    while (true)
    {
      return;
      g.h = null;
      if (g.m)
        ((WindowManager)g.i.getSystemService("window")).updateViewLayout(g, g.a(-1, -1));
    }
  }

  public static void b(Context paramContext)
  {
    if (g == null)
      g = new BatteryChargingBehindWindow(paramContext);
    if (g.m);
    while (true)
    {
      return;
      g.m = true;
      WindowManager localWindowManager = (WindowManager)g.i.getSystemService("window");
      WindowManager.LayoutParams localLayoutParams = g.a(-1, -1);
      localWindowManager.addView(g, localLayoutParams);
    }
  }

  public static void c()
  {
    d();
    g = null;
  }

  public static void d()
  {
    if ((g == null) || (!g.m));
    while (true)
    {
      return;
      g.m = false;
      WindowManager localWindowManager = (WindowManager)g.i.getSystemService("window");
      try
      {
        localWindowManager.removeView(g);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public static void setOnTouchBehindListener(ac.b paramb)
  {
    if (!l.contains(paramb))
      l.add(paramb);
  }

  public final WindowManager.LayoutParams a(int paramInt1, int paramInt2)
  {
    if (this.h == null)
    {
      this.h = new WindowManager.LayoutParams();
      this.h.gravity = 51;
      this.h.type = 2010;
      this.h.format = 1;
      WindowManager.LayoutParams localLayoutParams = this.h;
      localLayoutParams.flags = (0x200 | localLayoutParams.flags);
      this.h.width = -1;
      if (ac.a == 1)
      {
        this.h.height = (dv.h() + this.k);
        this.h.alpha = 0.0F;
      }
    }
    else
    {
      if (paramInt1 == -1)
        break label152;
      this.h.x = paramInt1;
      this.h.y = paramInt2;
    }
    while (true)
    {
      return this.h;
      if (ac.a != 0)
        break;
      this.h.height = (dv.g() + 2 * this.k);
      break;
      label152: this.h.x = 0;
      this.h.y = (0 - this.k);
      this.b = (0 - this.k);
    }
  }

  public final void a(int paramInt)
  {
  }

  public final boolean a()
  {
    return false;
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    super.onTouch(paramView, paramMotionEvent);
    Iterator localIterator = l.iterator();
    while (localIterator.hasNext())
    {
      localIterator.next();
      if (BatteryChargingWindow.b() != null)
        BatteryChargingWindow.b().onTouch(paramView, paramMotionEvent);
    }
    return true;
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (g == null);
    while (true)
    {
      return;
      if (!paramBoolean)
      {
        requestFocus();
        WindowManager localWindowManager = (WindowManager)g.i.getSystemService("window");
        if (g != null)
        {
          localWindowManager.removeView(g);
          localWindowManager.addView(g, g.a(-1, -1));
        }
      }
      else
      {
        super.onWindowFocusChanged(paramBoolean);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BatteryChargingBehindWindow
 * JD-Core Version:    0.6.2
 */