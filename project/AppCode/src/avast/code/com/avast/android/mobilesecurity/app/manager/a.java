package com.avast.android.mobilesecurity.app.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.util.t;

class a extends BroadcastReceiver
{
  a(AppDetailFragment paramAppDetailFragment)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if ((this.a.isAdded()) && (paramIntent.getAction() != null) && (paramIntent.getAction().equals("com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED")))
        AppDetailFragment.a(this.a);
    }
    catch (Exception localException)
    {
      t.a("AvastMobileSecurity", "Error in network info stats receiver", localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a
 * JD-Core Version:    0.6.2
 */