package com.tencent.qqpimsecure.view.tab;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TextView;

public class FileSafeTabView extends LinearLayout
  implements View.OnClickListener
{
  private Context a;
  private LinearLayout b;
  private LinearLayout c;
  private LinearLayout d;
  private ImageView e;
  private ImageView f;
  private ImageView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TabHost.OnTabChangeListener k;
  private int l = 2131231443;

  public FileSafeTabView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(this.a).inflate(2130903266, null);
    this.b = ((LinearLayout)localLinearLayout.findViewById(2131231443));
    this.b.setOnClickListener(this);
    this.c = ((LinearLayout)localLinearLayout.findViewById(2131231446));
    this.c.setOnClickListener(this);
    this.d = ((LinearLayout)localLinearLayout.findViewById(2131231449));
    this.d.setOnClickListener(this);
    this.e = ((ImageView)localLinearLayout.findViewById(2131231444));
    this.f = ((ImageView)localLinearLayout.findViewById(2131231447));
    this.g = ((ImageView)localLinearLayout.findViewById(2131231451));
    this.h = ((TextView)localLinearLayout.findViewById(2131231445));
    this.i = ((TextView)localLinearLayout.findViewById(2131231448));
    this.j = ((TextView)localLinearLayout.findViewById(2131231450));
    addView(localLinearLayout);
    a(this.l);
  }

  private void a()
  {
    this.b.setBackgroundResource(2130838204);
    this.c.setBackgroundResource(2130838205);
    this.d.setBackgroundResource(2130838206);
    this.e.setBackgroundResource(2130838208);
    this.f.setBackgroundResource(2130838217);
    this.g.setBackgroundResource(2130838211);
    this.h.setTextColor(this.a.getResources().getColor(2131296273));
    this.i.setTextColor(this.a.getResources().getColor(2131296273));
    this.j.setTextColor(this.a.getResources().getColor(2131296274));
  }

  private void a(int paramInt)
  {
    a();
    int m = -1;
    switch (paramInt)
    {
    default:
    case 2131231443:
    case 2131231446:
    case 2131231449:
    }
    while (true)
    {
      if (this.k != null)
        this.k.onTabChanged(String.valueOf(m));
      return;
      this.b.setBackgroundResource(2130838213);
      this.e.setBackgroundResource(2130838209);
      this.h.setTextColor(this.a.getResources().getColor(2131296275));
      m = 0;
      continue;
      this.c.setBackgroundResource(2130838214);
      this.f.setBackgroundResource(2130838218);
      this.i.setTextColor(this.a.getResources().getColor(2131296275));
      m = 1;
      continue;
      this.d.setBackgroundResource(2130838215);
      this.g.setBackgroundResource(2130838212);
      this.j.setTextColor(this.a.getResources().getColor(2131296275));
      m = 2;
    }
  }

  public void onClick(View paramView)
  {
    a(paramView.getId());
  }

  public void setOnTabChangeListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    this.k = paramOnTabChangeListener;
  }

  public void setTabBackground(int paramInt)
  {
    a();
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.b.setBackgroundResource(2130838213);
      this.e.setBackgroundResource(2130838209);
      this.h.setTextColor(this.a.getResources().getColor(2131296275));
      continue;
      this.c.setBackgroundResource(2130838214);
      this.f.setBackgroundResource(2130838218);
      this.i.setTextColor(this.a.getResources().getColor(2131296275));
      continue;
      this.d.setBackgroundResource(2130838215);
      this.g.setBackgroundResource(2130838212);
      this.j.setTextColor(this.a.getResources().getColor(2131296275));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.tab.FileSafeTabView
 * JD-Core Version:    0.6.2
 */