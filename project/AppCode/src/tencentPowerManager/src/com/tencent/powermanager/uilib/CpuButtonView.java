package com.tencent.powermanager.uilib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class CpuButtonView extends LinearLayout
  implements View.OnClickListener
{
  private TextView a = null;
  private TextView b = null;
  private View.OnClickListener c = null;

  public CpuButtonView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public CpuButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    setBackgroundResource(2130837768);
    setGravity(17);
    setOnClickListener(this);
    View localView = inflate(paramContext, 2130903046, null);
    this.b = ((TextView)localView.findViewById(2131230743));
    this.a = ((TextView)localView.findViewById(2131230742));
    this.a.setVisibility(8);
    addView(localView, new LinearLayout.LayoutParams(-2, -2));
  }

  public void onClick(View paramView)
  {
    if (this.c != null)
      this.c.onClick(paramView);
  }

  public void setText(String paramString)
  {
    if ((this.a != null) && (this.b != null))
    {
      this.a.setText(paramString);
      this.b.setText(paramString);
    }
  }

  public void setmOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.c = paramOnClickListener;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.CpuButtonView
 * JD-Core Version:    0.6.2
 */