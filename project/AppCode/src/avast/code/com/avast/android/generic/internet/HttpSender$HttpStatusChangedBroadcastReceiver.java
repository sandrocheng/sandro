package com.avast.android.generic.internet;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class HttpSender$HttpStatusChangedBroadcastReceiver extends BroadcastReceiver
{
  public HttpSender$HttpStatusChangedBroadcastReceiver(HttpSender paramHttpSender)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new Thread(new i(this, paramIntent), "httpSenderOnlineChecker").start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.HttpSender.HttpStatusChangedBroadcastReceiver
 * JD-Core Version:    0.6.2
 */