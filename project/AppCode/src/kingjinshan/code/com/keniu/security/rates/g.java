package com.keniu.security.rates;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.keniu.security.traffic.TrafficZiFeiSettingActivity2;

final class g
  implements DialogInterface.OnClickListener
{
  g(RatesRequestMainActivity paramRatesRequestMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, TrafficZiFeiSettingActivity2.class);
    localIntent.putExtra("context", "RatesRequest");
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.g
 * JD-Core Version:    0.6.2
 */