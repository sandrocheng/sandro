package com.keniu.security.rates;

import android.os.Handler;
import android.os.Message;

final class d extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (paramMessage.what == 0)
    {
      RatesRequestMainActivity.c();
      RatesRequestMainActivity.e();
    }
    while (true)
    {
      return;
      if (paramMessage.what == 1)
        RatesRequestMainActivity.d();
      else if (paramMessage.what == 2)
        RatesRequestMainActivity.f();
      else if (paramMessage.what == 3)
        RatesRequestMainActivity.g();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.d
 * JD-Core Version:    0.6.2
 */