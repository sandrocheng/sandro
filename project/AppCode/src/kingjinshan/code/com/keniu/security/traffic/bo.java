package com.keniu.security.traffic;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class bo
  implements View.OnClickListener
{
  bo(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, TrafficMonthLimitSettingActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bo
 * JD-Core Version:    0.6.2
 */