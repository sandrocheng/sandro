package com.keniu.security.traffic;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RadioButton;

final class ff
  implements CompoundButton.OnCheckedChangeListener
{
  ff(fe paramfe)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (TrafficZiFeiSubProviceSettingActivity.o(this.a.a) != -1)
      {
        RadioButton localRadioButton = (RadioButton)this.a.a.findViewById(TrafficZiFeiSubProviceSettingActivity.o(this.a.a));
        if (localRadioButton != null)
          localRadioButton.setChecked(false);
      }
      TrafficZiFeiSubProviceSettingActivity.b(this.a.a, paramCompoundButton.getId());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ff
 * JD-Core Version:    0.6.2
 */