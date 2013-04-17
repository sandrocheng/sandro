package com.tencent.tmsecure.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.telephony.TelephonyManager;

public class DualSimCallUtil
{
  public static int getCallState(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("state");
    int i;
    if (str != null)
      if (str.equals("IDLE"))
        i = 0;
    while (true)
    {
      return i;
      if (str.equals("RINGING"))
      {
        i = 1;
      }
      else if (str.equals("OFFHOOK"))
      {
        i = 2;
      }
      else
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if (localTelephonyManager != null)
          i = localTelephonyManager.getCallState();
        else
          i = 0;
      }
    }
  }

  public static void registerDaulSimCallStateReceiver(Context paramContext, BroadcastReceiver paramBroadcastReceiver)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.setPriority(2147483647);
    localIntentFilter.addCategory("android.intent.category.DEFAULT");
    localIntentFilter.addAction("android.intent.action.PHONE_STATE");
    localIntentFilter.addAction("android.intent.action.PHONE_STATE_2");
    localIntentFilter.addAction("android.intent.action.PHONE_STATE2");
    localIntentFilter.addAction("android.intent.action.PHONE_STATE_EXT");
    paramContext.registerReceiver(paramBroadcastReceiver, localIntentFilter);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.DualSimCallUtil
 * JD-Core Version:    0.6.2
 */