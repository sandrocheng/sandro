package com.keniu.security.traffic;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;

final class eq
  implements RadioGroup.OnCheckedChangeListener
{
  eq(TrafficZiFeiSettingActivity2 paramTrafficZiFeiSettingActivity2, TextView paramTextView)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramRadioGroup.getChildAt(0).getId() == paramInt)
      this.a.setText("M");
    while (true)
    {
      return;
      this.a.setText("G");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.eq
 * JD-Core Version:    0.6.2
 */