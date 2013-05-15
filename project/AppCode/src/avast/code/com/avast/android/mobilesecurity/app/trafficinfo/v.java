package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.e.a;
import com.avast.android.generic.util.t;

class v extends BroadcastReceiver
{
  v(TrafficinfoFragment paramTrafficinfoFragment)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if ((this.a.isAdded()) && (paramIntent.getAction() != null) && (paramIntent.getAction().equals("com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED")))
      {
        TrafficinfoFragment.a(this.a);
        ((a)this.a.getListAdapter()).notifyDataSetChanged();
      }
    }
    catch (Exception localException)
    {
      t.a("AvastMobileSecurity", "Error in network info stats receiver", localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.v
 * JD-Core Version:    0.6.2
 */