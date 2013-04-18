package com.keniu.security.rates;

import android.os.SystemClock;

final class i extends Thread
{
  i(RatesRequestMainActivity paramRatesRequestMainActivity, String paramString)
  {
  }

  public final void run()
  {
    SystemClock.sleep(100L);
    RatesRequestMainActivity.b(this.b, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.i
 * JD-Core Version:    0.6.2
 */