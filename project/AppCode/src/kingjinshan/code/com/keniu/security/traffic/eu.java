package com.keniu.security.traffic;

import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

final class eu
  implements RadioGroup.OnCheckedChangeListener
{
  eu(TrafficZiFeiSubBrandSettingActivity paramTrafficZiFeiSubBrandSettingActivity)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == TrafficZiFeiSubBrandSettingActivity.a(this.a).getId())
      TrafficZiFeiSubBrandSettingActivity.a(this.a, TrafficZiFeiSubBrandSettingActivity.b(this.a)[0]);
    while (true)
    {
      return;
      if (paramInt == TrafficZiFeiSubBrandSettingActivity.c(this.a).getId())
        TrafficZiFeiSubBrandSettingActivity.a(this.a, TrafficZiFeiSubBrandSettingActivity.b(this.a)[1]);
      else if (paramInt == TrafficZiFeiSubBrandSettingActivity.d(this.a).getId())
        TrafficZiFeiSubBrandSettingActivity.a(this.a, TrafficZiFeiSubBrandSettingActivity.b(this.a)[2]);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.eu
 * JD-Core Version:    0.6.2
 */