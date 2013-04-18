package com.keniu.security.traffic;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RadioButton;

final class eo
  implements CompoundButton.OnCheckedChangeListener
{
  eo(en paramen)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (TrafficZiFeiSettingActivity.H(this.a.a) != -1)
      {
        RadioButton localRadioButton = (RadioButton)this.a.a.findViewById(TrafficZiFeiSettingActivity.H(this.a.a));
        if (localRadioButton != null)
          localRadioButton.setChecked(false);
      }
      TrafficZiFeiSettingActivity.b(this.a.a, paramCompoundButton.getId());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.eo
 * JD-Core Version:    0.6.2
 */