package com.tencent.powermanager.uilib;

import a.a;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import r;
import s.a;

public class CpuStatusView extends LinearLayout
{
  private TextView a;
  private TextView b;
  private ImageView c;
  private boolean d;
  private Context e = null;

  public CpuStatusView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.e = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.a.CpuStatusView);
    String str = localTypedArray.getString(0);
    this.d = localTypedArray.getBoolean(1, false);
    View localView = inflate(paramContext, 2130903048, null);
    addView(localView);
    this.a = ((TextView)localView.findViewById(2131230753));
    this.b = ((TextView)localView.findViewById(2131230752));
    this.c = ((ImageView)localView.findViewById(2131230751));
    a(this.d);
    setCpuName(str);
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.setBackgroundResource(2130837771);
      this.c.setImageResource(2130837769);
    }
    while (true)
    {
      this.a.setPadding((int)(0.5F + 4.0F * this.e.getResources().getDisplayMetrics().density), 0, (int)(0.5F + 4.0F * this.e.getResources().getDisplayMetrics().density), 0);
      return;
      this.a.setBackgroundResource(2130837772);
      if (!s.a.d().r())
        break;
      this.c.setImageResource(2130837770);
    }
  }

  public void setActivie(boolean paramBoolean)
  {
    this.d = paramBoolean;
    a(paramBoolean);
  }

  public void setCpuHZ(String paramString)
  {
    if (this.a != null)
      this.a.setText(paramString);
  }

  public void setCpuName(String paramString)
  {
    if (this.b != null)
      this.b.setText(paramString);
  }

  public void setCpuStatus(boolean paramBoolean, String paramString)
  {
    setCpuHZ(paramString);
    setActivie(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.CpuStatusView
 * JD-Core Version:    0.6.2
 */