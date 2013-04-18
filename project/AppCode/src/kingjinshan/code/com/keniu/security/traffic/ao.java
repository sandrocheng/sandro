package com.keniu.security.traffic;

import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import android.widget.Toast;
import com.keniu.security.malware.bz;

final class ao extends Handler
{
  ao(TrafficFireWallMainActivity paramTrafficFireWallMainActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (e.j.e())
      if (e.b(this.a.getApplicationContext(), true))
        e.b(this.a.getApplicationContext());
    while (true)
    {
      return;
      Toast.makeText(this.a, this.a.getString(2131428221), 300).show();
      continue;
      e.j.c();
      if (TrafficFireWallMainActivity.g(this.a))
      {
        if (e.b(this.a.getApplicationContext(), true))
          e.b(this.a.getApplicationContext());
        else
          Toast.makeText(this.a, this.a.getString(2131428221), 300).show();
      }
      else
      {
        TrafficFireWallMainActivity.b(this.a).invalidate();
        Toast.makeText(this.a, this.a.getString(2131428221), 300).show();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ao
 * JD-Core Version:    0.6.2
 */