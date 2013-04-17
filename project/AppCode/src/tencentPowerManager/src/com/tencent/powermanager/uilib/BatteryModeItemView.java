package com.tencent.powermanager.uilib;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class BatteryModeItemView extends LinearLayout
{
  private Context a = null;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private ImageView f;
  private ImageView g;
  private boolean h;

  public BatteryModeItemView(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    a(paramContext);
  }

  public BatteryModeItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    View localView = inflate(paramContext, 2130903042, null);
    addView(localView, new LinearLayout.LayoutParams(-1, -2));
    this.b = ((TextView)localView.findViewById(2131230729));
    this.c = ((TextView)localView.findViewById(2131230728));
    this.d = ((TextView)localView.findViewById(2131230732));
    this.e = ((TextView)localView.findViewById(2131230731));
    this.f = ((ImageView)localView.findViewById(2131230733));
    this.g = ((ImageView)localView.findViewById(2131230734));
  }

  public final boolean a()
  {
    return this.h;
  }

  public void setChecked(boolean paramBoolean)
  {
    this.h = paramBoolean;
    if (paramBoolean)
    {
      setBackgroundResource(2130837807);
      this.f.setVisibility(4);
      this.g.setVisibility(0);
      if (!paramBoolean)
        break label147;
      this.c.setVisibility(8);
      this.e.setVisibility(8);
      this.b.setTextColor(this.a.getResources().getColor(2131034146));
      this.c.setTextColor(this.a.getResources().getColor(2131034147));
      this.d.setTextColor(this.a.getResources().getColor(2131034146));
      this.e.setTextColor(this.a.getResources().getColor(2131034147));
    }
    while (true)
    {
      return;
      setBackgroundResource(2130837809);
      this.g.setVisibility(4);
      break;
      label147: this.c.setVisibility(8);
      this.e.setVisibility(8);
      this.b.setTextColor(this.a.getResources().getColor(2131034148));
      this.d.setTextColor(this.a.getResources().getColor(2131034149));
    }
  }

  public void setSummaryText(String paramString)
  {
    this.d.setText(paramString);
    this.e.setText(paramString);
  }

  public void setTitleText(String paramString)
  {
    this.b.setText(paramString);
    this.c.setText(paramString);
  }

  public void setUnderLine(boolean paramBoolean)
  {
    if (paramBoolean)
      this.f.setVisibility(0);
    while (true)
    {
      return;
      this.f.setVisibility(4);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.BatteryModeItemView
 * JD-Core Version:    0.6.2
 */