package com.tencent.powermanager.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import ca;

public class PhoneCallReceiver extends BroadcastReceiver
{
  private PhoneStateListener a = new ca();

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent.getAction();
    if (!paramIntent.getAction().equals("android.content.Intent.ACTION_NEW_OUTGOING_CALL"))
      ((TelephonyManager)paramContext.getSystemService("phone")).listen(this.a, 32);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.PhoneCallReceiver
 * JD-Core Version:    0.6.2
 */