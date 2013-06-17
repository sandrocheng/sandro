package com.avg.ui.license.qrreader.general;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class m extends BroadcastReceiver
{
  private m(j paramj)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction())) && (paramIntent.getIntExtra("plugged", -1) > 0))
      j.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.m
 * JD-Core Version:    0.6.2
 */