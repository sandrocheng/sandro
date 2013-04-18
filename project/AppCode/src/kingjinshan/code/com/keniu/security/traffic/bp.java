package com.keniu.security.traffic;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class bp
  implements View.OnClickListener
{
  bp(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, TrafficZiFeiSettingActivity2.class);
    localIntent.putExtra("context", "RatesRequest");
    this.a.startActivityForResult(localIntent, 23);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bp
 * JD-Core Version:    0.6.2
 */