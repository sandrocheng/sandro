package com.tencent.powermanager.uilib.view;

import a.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;

public class BatteryScreenView extends LinearLayout
{
  private BatteryLevelScreenView a;
  private TextView b;

  public BatteryScreenView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public BatteryScreenView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext.obtainStyledAttributes(paramAttributeSet, a.a.BatteryScreenView).getString(0);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    addView(LayoutInflater.from(paramContext).inflate(2130903067, null));
    this.a = ((BatteryLevelScreenView)findViewById(2131230816));
    this.b = ((TextView)findViewById(2131230817));
  }

  public final void a()
  {
    this.a.a();
  }

  public final void b()
  {
    this.a.b();
  }

  public void setBatteryLevel(int paramInt)
  {
    this.a.setBatteryLevel(paramInt);
    this.b.setText(paramInt + "%");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BatteryScreenView
 * JD-Core Version:    0.6.2
 */