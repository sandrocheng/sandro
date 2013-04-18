package com.keniu.security.traffic;

import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

final class ez
  implements RadioGroup.OnCheckedChangeListener
{
  ez(TrafficZiFeiSubOperatorSettingActivity paramTrafficZiFeiSubOperatorSettingActivity)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == TrafficZiFeiSubOperatorSettingActivity.c(this.a).getId())
      TrafficZiFeiSubOperatorSettingActivity.a(this.a, TrafficZiFeiSubOperatorSettingActivity.d(this.a)[0]);
    while (true)
    {
      return;
      if (paramInt == TrafficZiFeiSubOperatorSettingActivity.e(this.a).getId())
        TrafficZiFeiSubOperatorSettingActivity.a(this.a, TrafficZiFeiSubOperatorSettingActivity.d(this.a)[1]);
      else if (paramInt == TrafficZiFeiSubOperatorSettingActivity.f(this.a).getId())
        TrafficZiFeiSubOperatorSettingActivity.a(this.a, TrafficZiFeiSubOperatorSettingActivity.d(this.a)[2]);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ez
 * JD-Core Version:    0.6.2
 */