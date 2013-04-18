package com.keniu.security.traffic;

import android.text.TextUtils;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

final class ee
  implements RadioGroup.OnCheckedChangeListener
{
  ee(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == TrafficZiFeiSettingActivity.j(this.a).getId())
      if (TrafficZiFeiSettingActivity.i(this.a) != null);
    while (true)
    {
      return;
      TrafficZiFeiSettingActivity.c(this.a, TrafficZiFeiSettingActivity.i(this.a)[0]);
      TrafficZiFeiSettingActivity.y(this.a);
      TrafficZiFeiSettingActivity.w(this.a);
      TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.e(this.a));
      continue;
      if (paramInt == TrafficZiFeiSettingActivity.k(this.a).getId())
      {
        if (TrafficZiFeiSettingActivity.i(this.a) != null)
        {
          TrafficZiFeiSettingActivity.c(this.a, TrafficZiFeiSettingActivity.i(this.a)[1]);
          TrafficZiFeiSettingActivity.y(this.a);
          TrafficZiFeiSettingActivity.w(this.a);
          TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.e(this.a));
        }
      }
      else if (paramInt == TrafficZiFeiSettingActivity.l(this.a).getId())
      {
        if (TrafficZiFeiSettingActivity.i(this.a) != null)
        {
          TrafficZiFeiSettingActivity.c(this.a, TrafficZiFeiSettingActivity.i(this.a)[2]);
          TrafficZiFeiSettingActivity.y(this.a);
          TrafficZiFeiSettingActivity.w(this.a);
          TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.e(this.a));
        }
      }
      else if (paramInt == TrafficZiFeiSettingActivity.C(this.a).getId())
      {
        TrafficZiFeiSettingActivity.d(this.a, TrafficZiFeiSettingActivity.D(this.a)[0]);
        if ((TextUtils.isEmpty(TrafficZiFeiSettingActivity.m(this.a))) || (!TrafficZiFeiSettingActivity.m(this.a).equals("RatesRequest")))
        {
          TrafficZiFeiSettingActivity.w(this.a);
          TrafficZiFeiSettingActivity.v(this.a);
        }
      }
      else if (paramInt == TrafficZiFeiSettingActivity.E(this.a).getId())
      {
        TrafficZiFeiSettingActivity.d(this.a, TrafficZiFeiSettingActivity.D(this.a)[1]);
        if ((TextUtils.isEmpty(TrafficZiFeiSettingActivity.m(this.a))) || (!TrafficZiFeiSettingActivity.m(this.a).equals("RatesRequest")))
        {
          TrafficZiFeiSettingActivity.w(this.a);
          TrafficZiFeiSettingActivity.v(this.a);
        }
      }
      else if (paramInt == TrafficZiFeiSettingActivity.F(this.a).getId())
      {
        TrafficZiFeiSettingActivity.d(this.a, TrafficZiFeiSettingActivity.D(this.a)[2]);
        if ((TextUtils.isEmpty(TrafficZiFeiSettingActivity.m(this.a))) || (!TrafficZiFeiSettingActivity.m(this.a).equals("RatesRequest")))
        {
          TrafficZiFeiSettingActivity.w(this.a);
          TrafficZiFeiSettingActivity.v(this.a);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ee
 * JD-Core Version:    0.6.2
 */