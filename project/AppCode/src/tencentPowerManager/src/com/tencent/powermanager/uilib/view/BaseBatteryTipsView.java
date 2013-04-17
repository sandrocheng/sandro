package com.tencent.powermanager.uilib.view;

import ab;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.powermanager.PowerManagerApplication;

public abstract class BaseBatteryTipsView extends LinearLayout
  implements View.OnClickListener
{
  private static WindowManager.LayoutParams b;
  protected Context a;
  private boolean c;
  private View d;
  private ImageView e;
  private Button f;
  private TextView g;

  static
  {
    WindowManager.LayoutParams localLayoutParams1 = new WindowManager.LayoutParams();
    b = localLayoutParams1;
    localLayoutParams1.type = 2002;
    b.format = 1;
    WindowManager.LayoutParams localLayoutParams2 = b;
    localLayoutParams2.flags = (0x8 | localLayoutParams2.flags);
    b.width = -2;
    b.height = -2;
    b.gravity = 17;
  }

  protected BaseBatteryTipsView(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    this.d = ((FrameLayout)LayoutInflater.from(PowerManagerApplication.a()).inflate(2130903065, null));
    addView(this.d);
    setFocusable(true);
    setFocusableInTouchMode(true);
    this.f = ((Button)this.d.findViewById(2131230806));
    this.e = ((ImageView)this.d.findViewById(2131230807));
    this.g = ((TextView)this.d.findViewById(2131230805));
    if (b() != null)
    {
      this.g.setText(b());
      if (c() != -1)
        this.g.setTextSize(c());
    }
    if (d() != null)
    {
      this.f.setVisibility(0);
      this.f.setText(d());
      this.f.setOnClickListener(this);
    }
    while (true)
    {
      this.e.setOnClickListener(this);
      return;
      this.f.setVisibility(8);
    }
  }

  private void f()
  {
    try
    {
      boolean bool = this.c;
      if (!bool);
      while (true)
      {
        return;
        this.c = false;
        ((WindowManager)PowerManagerApplication.a().getSystemService("window")).removeView(this);
      }
    }
    finally
    {
    }
  }

  protected final void a()
  {
    try
    {
      boolean bool = this.c;
      if (bool);
      while (true)
      {
        return;
        this.c = true;
        ((WindowManager)PowerManagerApplication.a().getSystemService("window")).addView(this, b);
      }
    }
    finally
    {
    }
  }

  protected abstract String b();

  protected abstract int c();

  protected abstract String d();

  protected abstract void e();

  public void onClick(View paramView)
  {
    f();
    switch (paramView.getId())
    {
    default:
    case 2131230807:
    case 2131230806:
    }
    while (true)
    {
      return;
      ab.a(50025);
      continue;
      e();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BaseBatteryTipsView
 * JD-Core Version:    0.6.2
 */