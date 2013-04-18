package com.keniu.security.rates;

import android.os.Handler;
import android.widget.Toast;

final class k
  implements Runnable
{
  private String b;

  public k(RatesRequestMainActivity paramRatesRequestMainActivity, String paramString)
  {
    this.b = paramString;
  }

  public final void run()
  {
    int i = a.a(this.a);
    if (i == 1)
    {
      com.jxphone.mosecurity.a.a.f(this.a, "3");
      RatesRequestMainActivity.e.sendEmptyMessage(3);
    }
    while (true)
    {
      return;
      if (i == 2)
        RatesRequestMainActivity.e.sendEmptyMessage(1);
      else if (i == 3)
        Toast.makeText(this.a, 2131428217, 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.k
 * JD-Core Version:    0.6.2
 */