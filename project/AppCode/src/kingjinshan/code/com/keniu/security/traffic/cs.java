package com.keniu.security.traffic;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;

final class cs
  implements RadioGroup.OnCheckedChangeListener
{
  cs(TrafficSmsShowActivity paramTrafficSmsShowActivity)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramRadioGroup.getChildAt(0).getId() == paramInt)
      TrafficSmsShowActivity.a(this.a).setText("K");
    while (true)
    {
      return;
      if (paramRadioGroup.getChildAt(1).getId() == paramInt)
        TrafficSmsShowActivity.a(this.a).setText("M");
      else
        TrafficSmsShowActivity.a(this.a).setText("G");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cs
 * JD-Core Version:    0.6.2
 */