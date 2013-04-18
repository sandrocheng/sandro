package com.keniu.security.traffic;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;

final class w
  implements RadioGroup.OnCheckedChangeListener
{
  w(TrafficAdjustByHandActivity paramTrafficAdjustByHandActivity)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramRadioGroup.getChildAt(0).getId() == paramInt)
      TrafficAdjustByHandActivity.a(this.a).setText("M");
    while (true)
    {
      return;
      TrafficAdjustByHandActivity.a(this.a).setText("G");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.w
 * JD-Core Version:    0.6.2
 */