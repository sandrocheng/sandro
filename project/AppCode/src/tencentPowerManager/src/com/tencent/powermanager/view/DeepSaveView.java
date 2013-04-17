package com.tencent.powermanager.view;

import af;
import aj;
import an;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import ao;
import bx;
import com.tencent.powermanager.uilib.CpuButtonView;
import com.tencent.powermanager.uilib.ExpectTimeView;
import com.tencent.powermanager.uilib.view.BaseTabView;
import com.tencent.powermanager.uilib.view.CpuStatuGridView;
import dx;
import p;
import r;
import s.a;

public class DeepSaveView extends BaseTabView
  implements View.OnClickListener, bx
{
  private int b = 1;
  private ImageView c;
  private CpuStatuGridView d = null;
  private CpuButtonView e = null;
  private ExpectTimeView f = null;
  private an g = null;
  private r h = null;
  private Handler i = new dx(this);

  public DeepSaveView(Context paramContext)
  {
    super(paramContext);
  }

  private void a()
  {
    int j = this.g.f();
    for (int k = 0; k < j; k++)
      this.d.setCpuStatus(k, false, this.a.getResources().getText(2131099721).toString());
    String[] arrayOfString = an.g();
    int m = an.c();
    int n = arrayOfString.length;
    int i1 = 0;
    if (i1 < n)
    {
      int i2 = Integer.parseInt(arrayOfString[i1]);
      CpuStatuGridView localCpuStatuGridView = this.d;
      String str;
      if (m == 0)
        str = "N/A";
      while (true)
      {
        localCpuStatuGridView.setCpuStatus(i2, true, str);
        i1++;
        break;
        int i3 = m / 1000;
        if (i3 < 1000)
        {
          str = i3 + "MHz";
        }
        else
        {
          float f1 = i3 / 1000.0F;
          str = f1 + "GHz";
        }
      }
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.b == 1)
    {
      this.f.setVisibility(0);
      this.e.setVisibility(4);
    }
    while (true)
    {
      return;
      if ((paramBoolean == true) && (this.b != -1) && (this.b != 1))
      {
        this.f.setVisibility(0);
        this.e.setVisibility(4);
      }
      else if ((!paramBoolean) && (this.b != -1) && (this.b != 1))
      {
        this.f.setVisibility(4);
        this.e.setVisibility(0);
      }
    }
  }

  public final void a(double paramDouble)
  {
    ao localao = ao.a();
    this.f.setTimeText(localao.b(), localao.c(), (int)paramDouble, (int)(60.0D * paramDouble) % 60);
    localao.a(paramDouble);
  }

  public final void d()
  {
    super.d();
    this.d = ((CpuStatuGridView)findViewById(2131230757));
    this.e = ((CpuButtonView)findViewById(2131230756));
    this.f = ((ExpectTimeView)findViewById(2131230755));
    this.c = ((ImageView)findViewById(2131230754));
    this.g = an.a();
    this.h = s.a.d();
    this.i.sendEmptyMessageDelayed(2, 500L);
    af.a(this);
  }

  public final void e()
  {
    super.e();
    this.e.setOnClickListener(this);
    int j = this.g.f();
    this.d.setCpuLayout(j);
    a();
    a(this.h.r());
    if (this.h.r())
      this.c.setImageResource(2130837742);
    while (true)
    {
      return;
      this.c.setImageResource(2130837741);
    }
  }

  public final void f()
  {
    super.f();
    af.b(this);
  }

  public final int g()
  {
    return 2130903049;
  }

  public final void h()
  {
  }

  public void onClick(View paramView)
  {
    if (this.b == 0)
    {
      aj.c();
      this.h.g(true);
      this.c.setImageResource(2130837742);
      a();
      this.f.setVisibility(0);
      this.e.setVisibility(8);
      p.a(this.a, 2131099718);
    }
    while (true)
    {
      return;
      if (this.b == 1)
      {
        p.a(this.a, 2131099719);
      }
      else if (this.b == 2)
      {
        p.a(this.a, 2131099720);
        this.i.sendEmptyMessage(2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.view.DeepSaveView
 * JD-Core Version:    0.6.2
 */