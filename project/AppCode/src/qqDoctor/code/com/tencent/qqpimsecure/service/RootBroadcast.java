package com.tencent.qqpimsecure.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import za;

public class RootBroadcast extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new za(paramContext).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.RootBroadcast
 * JD-Core Version:    0.6.2
 */