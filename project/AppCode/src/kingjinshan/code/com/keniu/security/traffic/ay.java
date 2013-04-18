package com.keniu.security.traffic;

import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;

final class ay extends Handler
{
  ay(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    TrafficMainActivity.c(this.a);
    if (TrafficMainActivity.a(this.a));
    while (true)
    {
      return;
      if ((TrafficMainActivity.d(this.a) != null) && (TrafficMainActivity.d(this.a).getVisibility() == 0))
        TrafficMainActivity.d(this.a).setVisibility(8);
      if ((TrafficMainActivity.e(this.a) != null) && (TrafficMainActivity.e(this.a).getVisibility() == 8))
        TrafficMainActivity.e(this.a).setVisibility(0);
      if (paramMessage.what == 0)
      {
        if (TrafficMainActivity.f(this.a))
        {
          TrafficMainActivity.a(this.a, false);
          a.d(this.a, "10");
        }
        Toast.makeText(this.a, 2131428142, 1).show();
      }
      else if (paramMessage.what == 1)
      {
        Toast.makeText(this.a, 2131428005, 1).show();
        if (y.d(this.a))
        {
          y localy = y.a(this.a);
          at.a(this.a.getApplicationContext(), localy);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ay
 * JD-Core Version:    0.6.2
 */