package com.keniu.security.rates;

import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

final class f
  implements View.OnClickListener
{
  f(RatesRequestMainActivity paramRatesRequestMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    com.jxphone.mosecurity.a.a.f(this.a, "6");
    if (TextUtils.isEmpty(((TelephonyManager)this.a.getSystemService("phone")).getSubscriberId()))
      Toast.makeText(this.a, 2131428048, 1).show();
    while (true)
    {
      return;
      int i = a.a(this.a);
      if (i == 1)
      {
        com.jxphone.mosecurity.a.a.f(this.a, "3");
        RatesRequestMainActivity.e.sendEmptyMessage(3);
      }
      else if (i == 2)
      {
        RatesRequestMainActivity.e.sendEmptyMessage(1);
      }
      else if (i == 3)
      {
        Toast.makeText(this.a, 2131428217, 1).show();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.f
 * JD-Core Version:    0.6.2
 */