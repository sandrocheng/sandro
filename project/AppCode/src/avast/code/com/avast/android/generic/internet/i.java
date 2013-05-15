package com.avast.android.generic.internet;

import android.content.Intent;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.support.v4.b.a;

class i
  implements Runnable
{
  i(HttpSender.HttpStatusChangedBroadcastReceiver paramHttpStatusChangedBroadcastReceiver, Intent paramIntent)
  {
  }

  public void run()
  {
    try
    {
      NetworkInfo localNetworkInfo = a.a(HttpSender.a(this.b.a), this.a);
      NetworkInfo.State localState = NetworkInfo.State.DISCONNECTED;
      if (localNetworkInfo != null)
        localState = localNetworkInfo.getState();
      if (localState == NetworkInfo.State.CONNECTED)
        this.b.a.a();
      else
        this.b.a.b();
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.i
 * JD-Core Version:    0.6.2
 */