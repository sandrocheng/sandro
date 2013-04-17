package com.tencent.powermanager.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cg;

public class RootBroadcastReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new cg().start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.RootBroadcastReceiver
 * JD-Core Version:    0.6.2
 */