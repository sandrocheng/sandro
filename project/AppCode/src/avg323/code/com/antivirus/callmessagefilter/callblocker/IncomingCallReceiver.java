package com.antivirus.callmessagefilter.callblocker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.antivirus.AVService;

public class IncomingCallReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    AVService.a(paramContext, 12000, 1, paramIntent.getExtras());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.callmessagefilter.callblocker.IncomingCallReceiver
 * JD-Core Version:    0.6.2
 */