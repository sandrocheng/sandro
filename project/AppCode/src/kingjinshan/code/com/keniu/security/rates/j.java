package com.keniu.security.rates;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.traffic.TrafficZiFeiSettingActivity2;

final class j
  implements n
{
  j(RatesRequestMainActivity paramRatesRequestMainActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, TrafficZiFeiSettingActivity2.class);
    localIntent.putExtra("context", "RatesRequest");
    this.a.startActivity(localIntent);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.j
 * JD-Core Version:    0.6.2
 */