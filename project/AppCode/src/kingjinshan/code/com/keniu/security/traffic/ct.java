package com.keniu.security.traffic;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import com.keniu.security.util.ax;

final class ct
  implements RadioGroup.OnCheckedChangeListener
{
  ct(TrafficSoftDetailActivity paramTrafficSoftDetailActivity)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == 2131231704)
    {
      TrafficSoftDetailActivity.b(this.a).setText(ax.c(TrafficSoftDetailActivity.a(this.a)));
      TrafficSoftDetailActivity.d(this.a).setText(ax.c(TrafficSoftDetailActivity.c(this.a)));
      TrafficSoftDetailActivity.a(this.a, 0);
    }
    while (true)
    {
      return;
      if (paramInt == 2131231705)
      {
        TrafficSoftDetailActivity.b(this.a).setText(ax.c(TrafficSoftDetailActivity.e(this.a)));
        TrafficSoftDetailActivity.d(this.a).setText(ax.c(TrafficSoftDetailActivity.f(this.a)));
        TrafficSoftDetailActivity.a(this.a, 1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ct
 * JD-Core Version:    0.6.2
 */