package com.jxphone.mosecurity.logic;

import android.os.Handler;
import android.telephony.TelephonyManager;
import com.keniu.security.a;

final class k
  implements Runnable
{
  k(i parami)
  {
  }

  public final void run()
  {
    int i;
    if (i.g(this.a))
    {
      i = a.a(i.h(this.a)).an();
      if ((i.i(this.a).getCallState() != 0) || (i <= 0))
        break label49;
      i.j(this.a);
    }
    while (true)
    {
      return;
      label49: i.k(this.a).postDelayed(this, i * 1000);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.k
 * JD-Core Version:    0.6.2
 */