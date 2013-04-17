package com.tencent.powermanager.uilib;

import a.a;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class TabButtonView extends LinearLayout
{
  private Context a = null;
  private TextView b = null;
  private TextView c = null;
  private ImageView d = null;
  private LinearLayout e = null;
  private int f;
  private int g;
  private boolean h = false;
  private String i;

  public TabButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.a.TabButtonView);
    this.i = localTypedArray.getString(0);
    this.h = localTypedArray.getBoolean(1, false);
    this.f = localTypedArray.getResourceId(2, 0);
    this.g = localTypedArray.getResourceId(3, 0);
    setGravity(17);
    this.e = ((LinearLayout)LayoutInflater.from(this.a).inflate(2130903088, null));
    this.b = ((TextView)this.e.findViewById(2131230825));
    this.c = ((TextView)this.e.findViewById(2131230824));
    this.d = ((ImageView)this.e.findViewById(2131230882));
    if (this.h)
    {
      this.d.setImageResource(this.f);
      this.c.setTextColor(this.a.getResources().getColor(2131034114));
      this.b.setTextColor(this.a.getResources().getColor(2131034113));
    }
    while (true)
    {
      this.b.setText(this.i);
      this.c.setText(this.i);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      addView(this.e, localLayoutParams);
      setBackgroundResource(2130837823);
      return;
      this.d.setImageResource(this.g);
      this.c.setTextColor(this.a.getResources().getColor(2131034114));
      this.b.setTextColor(this.a.getResources().getColor(2131034112));
    }
  }

  public void setChecked(boolean paramBoolean)
  {
    this.h = paramBoolean;
    if (this.h)
    {
      this.d.setImageResource(this.f);
      this.c.setTextColor(this.a.getResources().getColor(2131034114));
      this.b.setTextColor(this.a.getResources().getColor(2131034113));
    }
    while (true)
    {
      return;
      this.d.setImageResource(this.g);
      this.c.setTextColor(this.a.getResources().getColor(2131034114));
      this.b.setTextColor(this.a.getResources().getColor(2131034112));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.TabButtonView
 * JD-Core Version:    0.6.2
 */