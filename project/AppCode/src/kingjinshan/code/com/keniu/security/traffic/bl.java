package com.keniu.security.traffic;

import android.os.Handler;
import android.os.Message;
import android.widget.RadioGroup;
import com.keniu.security.a;
import com.keniu.security.util.at;

final class bl extends Handler
{
  bl(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (TrafficMainActivity.a(this.a));
    y localy;
    do
    {
      do
        while (true)
        {
          return;
          switch (paramMessage.what)
          {
          default:
            break;
          case 0:
            TrafficMainActivity.a(this.a, paramMessage.obj);
            a locala = a.a(this.a);
            y.a(this.a);
            if ((at.c(this.a)) && (y.d(this.a)) && (y.b()) && (locala.F()))
              TrafficMainActivity.i(this.a);
            break;
          case 288:
          }
        }
      while (TrafficMainActivity.j(this.a) == null);
      localy = y.a(this.a);
    }
    while (TrafficMainActivity.k(this.a) == -1);
    if (TrafficMainActivity.k(this.a) == 2131231492)
      localy.w = 0;
    while (true)
    {
      localy.a(this.a, 2131428292);
      TrafficMainActivity.j(this.a).check(TrafficMainActivity.k(this.a));
      break;
      if (TrafficMainActivity.k(this.a) == 2131231493)
        localy.w = 1;
      else if (TrafficMainActivity.k(this.a) == 2131231494)
        localy.w = 2;
      else
        localy.w = 3;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bl
 * JD-Core Version:    0.6.2
 */