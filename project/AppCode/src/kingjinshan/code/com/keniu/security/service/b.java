package com.keniu.security.service;

import android.content.Context;
import android.content.Intent;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import com.keniu.security.commui.c;
import com.keniu.security.process.ProcessManagerActivity;

final class b extends c
  implements View.OnClickListener, View.OnKeyListener
{
  private Button g;
  private Button h;

  public b(ProcessService paramProcessService, Context paramContext)
  {
    super(paramContext);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.b.getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.c.width = (localDisplayMetrics.widthPixels - (int)(40.0F * localDisplayMetrics.density));
    this.c.format = 1;
    this.e = LayoutInflater.from(paramContext).inflate(2130903329, null);
    this.g = ((Button)this.e.findViewById(2131231754));
    this.h = ((Button)this.e.findViewById(2131231755));
    a(this.e);
  }

  private void a(View paramView)
  {
    paramView.setOnClickListener(this);
    paramView.setOnKeyListener(this);
    if (paramView.getClass() == LinearLayout.class)
    {
      LinearLayout localLinearLayout = (LinearLayout)paramView;
      for (int i = 0; i < localLinearLayout.getChildCount(); i++)
        a(localLinearLayout.getChildAt(i));
    }
  }

  public final void onClick(View paramView)
  {
    paramView.setFocusable(true);
    if (paramView == this.g)
    {
      Intent localIntent = new Intent(this.a, ProcessManagerActivity.class);
      localIntent.setFlags(268435456);
      this.a.startActivity(localIntent);
      c();
    }
    while (true)
    {
      return;
      if (paramView == this.h)
        c();
    }
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    c();
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.b
 * JD-Core Version:    0.6.2
 */