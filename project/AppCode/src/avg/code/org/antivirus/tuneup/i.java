package org.antivirus.tuneup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;

final class i extends BroadcastReceiver
{
  i(BatterySaveSettingsActivity paramBatterySaveSettingsActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED"))
    {
      ((q)this.a.getListAdapter()).notifyDataSetChanged();
      BatterySaveSettingsActivity.a(this.a, null);
    }
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("android.net.wifi.STATE_CHANGE"))
      {
        BatterySaveSettingsActivity.a(this.a, (NetworkInfo)paramIntent.getParcelableExtra("networkInfo"));
        ((q)this.a.getListAdapter()).notifyDataSetChanged();
      }
      else if (paramIntent.getAction().equals("android.bluetooth.adapter.action.STATE_CHANGED"))
      {
        ((q)this.a.getListAdapter()).notifyDataSetChanged();
      }
      else if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
      {
        ((q)this.a.getListAdapter()).notifyDataSetChanged();
      }
      else if (paramIntent.getAction().equals("android.intent.action.AIRPLANE_MODE"))
      {
        ((q)this.a.getListAdapter()).notifyDataSetChanged();
      }
      else if (paramIntent.getAction().equals("android.net.wifi.WIFI_AP_STATE_CHANGED"))
      {
        ((q)this.a.getListAdapter()).notifyDataSetChanged();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.i
 * JD-Core Version:    0.6.2
 */