package com.tencent.powermanager.uilib.view;

import a;
import ac;
import ac.a;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.powermanager.uilib.button.SleekButtonView;
import com.tencent.powermanager.uilib.services.OnSuspendedViewTouch;
import com.tencent.powermanager.uilib.view.fireflyView.FireflyPointLayout;
import do;
import dv;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

public class BatteryChargingWindow extends OnSuspendedViewTouch
{
  private static int A = 1;
  private static int B = 2;
  private static BatteryChargingWindow g;
  private static ArrayList<ac.a> h = new ArrayList();
  private static int k;
  private static a l;
  private Handler C = new do();
  private WindowManager.LayoutParams i = null;
  private Context j;
  private View m;
  private BatteryScreenView n;
  private TextView o;
  private TextView p;
  private SleekButtonView q;
  private FireflyPointLayout r;
  private BatteryScreenView s;
  private TextView t;
  private TextView u;
  private SleekButtonView v;
  private LinearLayout w;
  private LinearLayout x;
  private int y;
  private boolean z = false;

  private BatteryChargingWindow(Context paramContext)
  {
    super(paramContext);
    this.j = paramContext;
    this.e = 2;
    this.d = 1;
    k = Integer.parseInt(Build.VERSION.SDK);
    this.y = ((int)(0.5F + 25.0F * paramContext.getResources().getDisplayMetrics().density));
    this.m = LayoutInflater.from(paramContext).inflate(2130903062, null);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    addView(this.m, localLayoutParams);
    this.n = ((BatteryScreenView)this.m.findViewById(2131230789));
    this.s = ((BatteryScreenView)this.m.findViewById(2131230795));
    this.q = ((SleekButtonView)this.m.findViewById(2131230793));
    this.v = ((SleekButtonView)this.m.findViewById(2131230801));
    this.r = ((FireflyPointLayout)this.m.findViewById(2131230802));
    this.o = ((TextView)this.m.findViewById(2131230787));
    this.p = ((TextView)this.m.findViewById(2131230788));
    this.t = ((TextView)this.m.findViewById(2131230796));
    this.u = ((TextView)this.m.findViewById(2131230797));
    this.w = ((LinearLayout)this.m.findViewById(2131230786));
    this.x = ((LinearLayout)this.m.findViewById(2131230794));
    if (ac.a == 1)
    {
      this.w.setVisibility(8);
      this.x.setVisibility(0);
    }
    while (true)
    {
      return;
      this.w.setVisibility(0);
      this.x.setVisibility(8);
    }
  }

  public static void a(ac.a parama)
  {
    h.remove(parama);
  }

  /**
   * mark BatteryChargingWindow_init
   * @param paramContext
   */
  public static void a(Context paramContext)
  {
    if (g == null)
    {
      g = new BatteryChargingWindow(paramContext);
      l = new a((byte)0);
    }
  }

  public static BatteryChargingWindow b()
  {
    return g;
  }

  public static void b(int paramInt)
  {
    BatteryChargingWindow localBatteryChargingWindow;
    TextView localTextView1;
    TextView localTextView2;
    TextView localTextView3;
    TextView localTextView4;
    if ((g != null) && (g.n != null))
    {
      g.n.setBatteryLevel(paramInt);
      g.s.setBatteryLevel(paramInt);
      localBatteryChargingWindow = g;
      long l1 = a.a();
      localTextView1 = (TextView)localBatteryChargingWindow.m.findViewById(2131230792);
      localTextView2 = (TextView)localBatteryChargingWindow.m.findViewById(2131230791);
      localTextView3 = (TextView)localBatteryChargingWindow.m.findViewById(2131230800);
      localTextView4 = (TextView)localBatteryChargingWindow.m.findViewById(2131230799);
      if (l1 <= 0L)
        break label144;
      localTextView1.setText(a.a(localBatteryChargingWindow.j, l1));
      localTextView3.setText(a.a(localBatteryChargingWindow.j, l1));
      localTextView2.setVisibility(0);
      localTextView4.setVisibility(0);
    }
    while (true)
    {
      return;
      label144: localTextView1.setText(localBatteryChargingWindow.j.getString(2131099750));
      localTextView3.setText(localBatteryChargingWindow.j.getString(2131099750));
      localTextView2.setVisibility(8);
      localTextView4.setVisibility(8);
    }
  }

  public static void b(Context paramContext)
  {
    if (g == null)
    {
      g = new BatteryChargingWindow(paramContext);
      l = new a((byte)0);
    }
    f();
    if (g.z);
    while (true)
    {
      return;
      g.z = true;
      ((WindowManager)g.j.getSystemService("window")).addView(g, g.a(-1, -1));
      g.C.sendEmptyMessage(A);
      paramContext.registerReceiver(l, new IntentFilter("android.intent.action.TIME_TICK"));
      g.k();
    }
  }

  /**
   * mark add_BatteryChargingWindow_view
   */
  public static void c()
  {
    if (g == null)
      return;
    if (ac.a == 1)
    {
      BatteryChargingWindow localBatteryChargingWindow2 = g;
      localBatteryChargingWindow2.w.setVisibility(8);
      localBatteryChargingWindow2.x.setVisibility(0);
    }
    while (true)
    {
      g.i = null;
      if (!g.z)
        break;
      ((WindowManager)g.j.getSystemService("window")).updateViewLayout(g, g.a(-1, -1));
      g.C.sendEmptyMessage(B);
      break;
      BatteryChargingWindow localBatteryChargingWindow1 = g;
      localBatteryChargingWindow1.w.setVisibility(0);
      localBatteryChargingWindow1.x.setVisibility(8);
    }
  }

  public static void d()
  {
    l = null;
    g = null;
  }

  public static void e()
  {
    if ((g == null) || (!g.z));
    while (true)
    {
      return;
      g();
      g.z = false;
      g.j.unregisterReceiver(l);
      WindowManager localWindowManager = (WindowManager)g.j.getSystemService("window");
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

  public static void f()
  {
    if (g == null);
    while (true)
    {
      return;
      g.q.a();
      g.n.a();
      g.v.a();
      g.s.a();
      g.r.b();
    }
  }

  public static void g()
  {
    if ((g == null) || (!g.z));
    while (true)
    {
      return;
      g.q.b();
      g.n.b();
      g.v.b();
      g.s.b();
      g.r.c();
    }
  }

  private void k()
  {
    Calendar localCalendar = Calendar.getInstance();
    int i1 = localCalendar.get(10);
    int i2 = localCalendar.get(12);
    if (localCalendar.get(9) == 1)
      i1 += 12;
    String str1;
    String str3;
    label92: String str6;
    String str7;
    if (i1 >= 10)
    {
      str1 = String.valueOf(i1);
      String str2 = str1 + ":";
      StringBuilder localStringBuilder = new StringBuilder().append(str2);
      if (i2 < 10)
        break label309;
      str3 = String.valueOf(i2);
      String str4 = str3;
      this.o.setText(str4);
      this.t.setText(str4);
      String str5 = this.j.getString(2131099742);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(1 + localCalendar.get(2));
      arrayOfObject[1] = Integer.valueOf(localCalendar.get(5));
      str6 = String.format(str5, arrayOfObject);
      Integer.valueOf(localCalendar.get(7));
      switch (localCalendar.get(7))
      {
      default:
        str7 = str6 + "  " + this.j.getString(2131099743);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 1:
      }
    }
    while (true)
    {
      this.p.setText(str7);
      this.u.setText(str7);
      return;
      str1 = "0" + i1;
      break;
      label309: str3 = "0" + i2;
      break label92;
      str7 = str6 + "  " + this.j.getString(2131099743);
      continue;
      str7 = str6 + "  " + this.j.getString(2131099744);
      continue;
      str7 = str6 + "  " + this.j.getString(2131099745);
      continue;
      str7 = str6 + "  " + this.j.getString(2131099746);
      continue;
      str7 = str6 + "  " + this.j.getString(2131099747);
      continue;
      str7 = str6 + "  " + this.j.getString(2131099748);
      continue;
      str7 = str6 + "  " + this.j.getString(2131099749);
    }
  }

  public static void setOnControlListener(ac.a parama)
  {
    if (!h.contains(parama))
      h.add(parama);
  }

  public final WindowManager.LayoutParams a(int paramInt1, int paramInt2)
  {
    if (this.i == null)
    {
      this.i = new WindowManager.LayoutParams();
      this.i.gravity = 51;
      if (k > 10)
      {
        this.i.type = 2010;
        WindowManager.LayoutParams localLayoutParams2 = this.i;
        localLayoutParams2.flags = (0x228 | localLayoutParams2.flags);
        this.i.format = 1;
        this.i.width = -1;
        if (ac.a != 1)
          break label167;
        this.i.height = (dv.h() + this.y);
        label103: this.i.alpha = 1.0F;
      }
    }
    else
    {
      if (paramInt1 == -1)
        break label193;
      this.i.x = paramInt1;
      this.i.y = paramInt2;
    }
    while (true)
    {
      return this.i;
      this.i.type = 2006;
      WindowManager.LayoutParams localLayoutParams1 = this.i;
      localLayoutParams1.flags = (0x208 | localLayoutParams1.flags);
      break;
      label167: if (ac.a != 0)
        break label103;
      this.i.height = (dv.g() + 2 * this.y);
      break label103;
      label193: this.i.x = 0;
      this.i.y = (0 - this.y);
      this.b = (0 - this.y);
    }
  }

  public final void a(int paramInt)
  {
    if (paramInt > 0)
    {
      Iterator localIterator = h.iterator();
      while (localIterator.hasNext())
      {
        localIterator.next();
        ac.c();
      }
    }
  }

  public final boolean a()
  {
    return false;
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    super.onTouch(paramView, paramMotionEvent);
    return true;
  }

  static final class a extends BroadcastReceiver
  {
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent.getAction() == "android.intent.action.TIME_TICK")
        BatteryChargingWindow.d(BatteryChargingWindow.i());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BatteryChargingWindow
 * JD-Core Version:    0.6.2
 */