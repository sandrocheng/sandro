package com.avg.tuneup.battery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;

class d extends BroadcastReceiver
{
  d(c paramc)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED"))
    {
      c.a(this.a).notifyDataSetChanged();
      c.a(this.a, null);
    }
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("android.net.wifi.STATE_CHANGE"))
      {
        c.a(this.a, (NetworkInfo)paramIntent.getParcelableExtra("networkInfo"));
        c.a(this.a).notifyDataSetChanged();
      }
      else if (paramIntent.getAction().equals("android.bluetooth.adapter.action.STATE_CHANGED"))
      {
        c.a(this.a).notifyDataSetChanged();
      }
      else if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
      {
        c.a(this.a).notifyDataSetChanged();
      }
      else if (paramIntent.getAction().equals("android.intent.action.AIRPLANE_MODE"))
      {
        c.a(this.a).notifyDataSetChanged();
      }
      else if (paramIntent.getAction().equals("android.net.wifi.WIFI_AP_STATE_CHANGED"))
      {
        c.a(this.a).notifyDataSetChanged();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.d
 * JD-Core Version:    0.6.2
 */