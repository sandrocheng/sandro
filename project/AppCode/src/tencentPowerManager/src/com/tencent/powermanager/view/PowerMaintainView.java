package com.tencent.powermanager.view;

import a;
import ai;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.powermanager.service.BatteryEventReceiver;
import com.tencent.powermanager.service.BatteryEventReceiver.a;
import com.tencent.powermanager.uilib.BatteryFlowView;
import com.tencent.powermanager.uilib.CircleProgressButton;
import com.tencent.powermanager.uilib.ExpectTimeView;
import com.tencent.powermanager.uilib.view.BaseTabView;
import r;
import s.a;

public class PowerMaintainView extends BaseTabView
  implements BatteryEventReceiver.a
{
  private CircleProgressButton b = null;
  private TextView c = null;
  private TextView d = null;
  private CircleProgressButton e = null;
  private TextView f = null;
  private TextView g = null;
  private CircleProgressButton h = null;
  private TextView i = null;
  private TextView j = null;
  private BatteryFlowView k = null;
  private LinearLayout l = null;
  private ExpectTimeView m = null;
  private TextView n = null;
  private TextView o = null;

  public PowerMaintainView(Context paramContext)
  {
    super(paramContext);
  }

  private void a()
  {
    int[] arrayOfInt = s.a.d().w();
    this.k = new BatteryFlowView(this.a, arrayOfInt);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(this.k.b(), this.k.a());
    this.l.removeAllViews();
    this.l.addView(this.k, localLayoutParams);
  }

  private void a(TextView paramTextView, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      paramTextView.setTextColor(this.a.getResources().getColor(2131034123));
      continue;
      paramTextView.setTextColor(this.a.getResources().getColor(2131034124));
      continue;
      paramTextView.setTextColor(this.a.getResources().getColor(2131034122));
    }
  }

  private void a(boolean paramBoolean, int paramInt)
  {
    String str1;
    String str2;
    if (!paramBoolean)
    {
      str1 = this.a.getString(2131099699);
      str2 = this.a.getString(2131099698);
    }
    while (true)
    {
      this.n.setText(str1);
      this.o.setText(str2);
      return;
      if (paramInt < 90)
      {
        str1 = this.a.getString(2131099700);
        str2 = this.a.getString(2131099694) + this.a.getString(2131099693);
      }
      else if (paramInt < 100)
      {
        str1 = this.a.getString(2131099701);
        str2 = this.a.getString(2131099695) + this.a.getString(2131099693);
      }
      else
      {
        str1 = this.a.getString(2131099702);
        str2 = this.a.getString(2131099696) + this.a.getString(2131099693);
      }
    }
  }

  private void b(boolean paramBoolean, int paramInt)
  {
    if (ai.g == null)
      ai.g = new ai();
    ai localai = ai.g;
    long l1;
    label94: label109: long l2;
    label121: long l3;
    if (BatteryEventReceiver.c)
    {
      this.d.setVisibility(4);
      this.g.setVisibility(4);
      this.j.setVisibility(4);
      if (BatteryEventReceiver.a >= 90)
        this.d.setVisibility(0);
      if (BatteryEventReceiver.a >= 100)
        this.g.setVisibility(0);
      if (localai.a != 0L)
        break label270;
      l1 = 0L;
      if (l1 > 0L)
        break label311;
      this.d.setVisibility(4);
      if (localai.b != 0L)
        break label330;
      l2 = 0L;
      if (l2 > 0L)
        break label371;
      this.g.setVisibility(4);
      label136: if (localai.c != 0L)
        break label390;
      l3 = 0L;
      label148: if (l3 > 0L)
        break label423;
      this.j.setVisibility(4);
      label163: if (paramBoolean)
        break label442;
      this.b.setActive(false);
      this.e.setActive(false);
      this.h.setActive(false);
      this.b.setEnableAnimation(false);
      this.e.setEnableAnimation(false);
      this.h.setEnableAnimation(false);
      a(this.c, 1);
      a(this.f, 1);
      a(this.i, 1);
    }
    while (true)
    {
      return;
      this.d.setVisibility(0);
      this.g.setVisibility(0);
      this.j.setVisibility(0);
      break;
      label270: if ((BatteryEventReceiver.a < 90) && (BatteryEventReceiver.c))
      {
        l1 = System.currentTimeMillis() - localai.a;
        break label94;
      }
      l1 = localai.d - localai.a;
      break label94;
      label311: this.d.setText(a.b(this.a, l1));
      break label109;
      label330: if ((BatteryEventReceiver.a < 100) && (BatteryEventReceiver.c))
      {
        l2 = System.currentTimeMillis() - localai.b;
        break label121;
      }
      l2 = localai.e - localai.b;
      break label121;
      label371: this.g.setText(a.b(this.a, l2));
      break label136;
      label390: if (BatteryEventReceiver.c)
      {
        l3 = System.currentTimeMillis() - localai.c;
        break label148;
      }
      l3 = localai.f - localai.c;
      break label148;
      label423: this.j.setText(a.b(this.a, l3));
      break label163;
      label442: if (paramInt < 90)
      {
        this.b.setActive(false);
        this.e.setActive(false);
        this.h.setActive(false);
        this.e.setEnableAnimation(false);
        this.h.setEnableAnimation(false);
        this.b.setEnableAnimation(true);
        a(this.c, 2);
        a(this.f, 3);
        a(this.i, 3);
      }
      else if (paramInt < 100)
      {
        this.b.setActive(true);
        this.b.setEnableAnimation(false);
        this.e.setActive(false);
        this.e.setEnableAnimation(true);
        this.h.setActive(false);
        this.h.setEnableAnimation(false);
        a(this.c, 1);
        a(this.f, 2);
        a(this.i, 3);
      }
      else
      {
        this.b.setActive(true);
        this.b.setEnableAnimation(false);
        this.e.setActive(true);
        this.e.setEnableAnimation(false);
        a(this.c, 1);
        a(this.f, 1);
        a(this.i, 2);
        this.h.setActive(false);
        this.h.setEnableAnimation(true);
      }
    }
  }

  public final void a(Intent paramIntent)
  {
    int i1;
    if (paramIntent.getAction().equals("android.intent.action.BATTERY_CHANGED"))
    {
      a();
      i1 = paramIntent.getIntExtra("status", 1);
      if (i1 != 2)
        break label63;
      a(true, BatteryEventReceiver.a);
    }
    while (true)
    {
      b(BatteryEventReceiver.c, BatteryEventReceiver.a);
      if (BatteryEventReceiver.c)
        break;
      this.m.setVisibility(8);
      return;
      label63: if (i1 == 5)
        a(true, 100);
      else if ((i1 == 4) || (i1 == 3))
        a(false, 0);
    }
    this.m.setVisibility(0);
    if (BatteryEventReceiver.a >= 100)
      this.m.setViewType(3);
    while (true)
    {
      long l1 = a.a();
      this.m.setTextHour((int)l1 / 3600000);
      this.m.setTextMin((int)(l1 % 3600000L) / 60000);
      break;
      this.m.setViewType(2);
    }
  }

  public final void d()
  {
    super.d();
    this.b = ((CircleProgressButton)findViewById(2131230858));
    this.e = ((CircleProgressButton)findViewById(2131230861));
    this.h = ((CircleProgressButton)findViewById(2131230864));
    this.b.setButtonType(3);
    this.e.setButtonType(2);
    this.h.setButtonType(1);
    this.b.setAnimSpeedType(1);
    this.e.setAnimSpeedType(2);
    this.h.setAnimSpeedType(3);
    this.c = ((TextView)findViewById(2131230859));
    this.f = ((TextView)findViewById(2131230862));
    this.i = ((TextView)findViewById(2131230865));
    this.d = ((TextView)findViewById(2131230860));
    this.g = ((TextView)findViewById(2131230863));
    this.j = ((TextView)findViewById(2131230866));
    this.n = ((TextView)findViewById(2131230870));
    this.l = ((LinearLayout)findViewById(2131230868));
    this.o = ((TextView)findViewById(2131230869));
    this.m = ((ExpectTimeView)findViewById(2131230755));
    a();
  }

  public final void e()
  {
    super.e();
    b(BatteryEventReceiver.c, BatteryEventReceiver.a);
    a(false, 0);
    BatteryEventReceiver.a(this);
  }

  public final void f()
  {
    super.f();
    this.b = null;
    this.c = null;
    this.e = null;
    this.f = null;
    this.h = null;
    this.i = null;
  }

  public final int g()
  {
    return 2130903084;
  }

  public final void h()
  {
    BatteryEventReceiver.b(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.view.PowerMaintainView
 * JD-Core Version:    0.6.2
 */