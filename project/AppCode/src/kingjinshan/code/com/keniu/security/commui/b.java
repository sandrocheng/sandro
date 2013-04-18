package com.keniu.security.commui;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class b extends c
  implements View.OnClickListener, View.OnKeyListener
{
  private Button a;
  private Button g;
  private TextView h;
  private TextView i;
  private ImageView j;

  public b(Context paramContext)
  {
    super(paramContext);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.b.getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.c.width = (localDisplayMetrics.widthPixels - (int)(20.0F * localDisplayMetrics.density));
    this.c.format = 1;
    this.e = LayoutInflater.from(paramContext).inflate(2130903232, null);
    this.e.setBackgroundResource(2130838043);
    this.e.findViewById(2131231459).setVisibility(8);
    this.e.findViewById(2131231463).setVisibility(8);
    this.e.findViewById(2131231335).setVisibility(0);
    this.a = ((Button)this.e.findViewById(2131231462));
    this.g = ((Button)this.e.findViewById(2131231464));
    this.h = ((TextView)this.e.findViewById(2131231456));
    this.i = ((TextView)this.e.findViewById(2131231344));
    this.j = ((ImageView)this.e.findViewById(2131231455));
    this.e.findViewById(2131231458).setBackgroundDrawable(null);
    a(this.e);
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 != 0)
      this.h.setText(paramInt1);
    if (paramInt2 != 0)
      this.i.setText(paramInt2);
    if (paramInt3 != 0)
      this.a.setText(paramInt3);
    if (paramInt4 != 0)
      this.g.setText(paramInt4);
  }

  private void a(View paramView)
  {
    paramView.setOnClickListener(this);
    paramView.setOnKeyListener(this);
    if (paramView.getClass() == LinearLayout.class)
    {
      LinearLayout localLinearLayout = (LinearLayout)paramView;
      for (int k = 0; k < localLinearLayout.getChildCount(); k++)
        a(localLinearLayout.getChildAt(k));
    }
  }

  public final void a()
  {
    this.j.setImageResource(2130837821);
  }

  public final void a(View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2)
  {
    if (paramOnClickListener1 != null)
      this.a.setOnClickListener(paramOnClickListener1);
    if (paramOnClickListener2 != null)
      this.g.setOnClickListener(paramOnClickListener2);
  }

  public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString1 != null)
      this.h.setText(paramString1);
    if (paramString2 != null)
      this.i.setText(paramString2);
    if (paramString3 != null)
      this.a.setText(paramString3);
    if (paramString4 != null)
      this.g.setText(paramString4);
  }

  public final void b()
  {
    this.a.setVisibility(8);
    this.e.findViewById(2131231410).setVisibility(0);
    this.e.findViewById(2131231413).setVisibility(0);
  }

  public final void onClick(View paramView)
  {
    paramView.setFocusable(true);
    if (paramView == this.a)
      c();
    while (true)
    {
      return;
      if (paramView == this.g)
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
 * Qualified Name:     com.keniu.security.commui.b
 * JD-Core Version:    0.6.2
 */