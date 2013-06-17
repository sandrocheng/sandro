package com.antivirus.ui.callmessagefilter.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

class af extends BroadcastReceiver
{
  private Handler b;

  af(v paramv, Handler paramHandler)
  {
    this.b = paramHandler;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.b.sendEmptyMessage(158);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.af
 * JD-Core Version:    0.6.2
 */