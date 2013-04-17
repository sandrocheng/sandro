package com.tencent.powermanager.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public abstract class BaseListItemView extends LinearLayout
{
  protected Context a = null;
  private TextView b = null;
  private LinearLayout c = null;

  public BaseListItemView(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    View localView = inflate(this.a, 2130903041, null);
    if (b() == 4)
    {
      localView.setBackgroundDrawable(this.a.getResources().getDrawable(2130837832));
      addView(localView, new LinearLayout.LayoutParams(-1, -2));
      this.b = ((TextView)localView.findViewById(2131230725));
      this.b.setTextSize(14.0F);
    }
    while (true)
    {
      return;
      localView.setBackgroundDrawable(this.a.getResources().getDrawable(2130837803));
      addView(localView, new LinearLayout.LayoutParams(-1, (int)(0.5F + 70.0F * this.a.getResources().getDisplayMetrics().density)));
      this.b = ((TextView)localView.findViewById(2131230725));
      this.c = ((LinearLayout)localView.findViewById(2131230726));
      this.c.addView(a(), new LinearLayout.LayoutParams(-2, -2));
    }
  }

  public abstract View a();

  public abstract int b();

  public void setEnable(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      setClickable(true);
      this.b.setTextColor(this.a.getResources().getColor(2131034122));
    }
    while (true)
    {
      return;
      setClickable(false);
      this.b.setTextColor(this.a.getResources().getColor(2131034123));
    }
  }

  public void setTitleText(String paramString)
  {
    if (this.b != null)
      this.b.setText(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BaseListItemView
 * JD-Core Version:    0.6.2
 */