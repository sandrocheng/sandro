package com.tencent.qqpimsecure.service;

import aac;
import aaf;
import aag;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import ho;
import java.util.Timer;

public class ScreenEventReceiverEUP extends BroadcastReceiver
{
  private Timer a;
  private Timer b;
  private float c;
  private float d;
  private String e = "";
  private String f = "";
  private Handler g = new Handler(new aac(this));

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
      if (86400000L + ho.a().dO() < System.currentTimeMillis())
      {
        this.b = new Timer();
        this.b.schedule(new aaf(this), 600000L);
      }
    while (true)
    {
      return;
      if ((paramIntent.getAction().equals("android.intent.action.SCREEN_ON")) && (86400000L + ho.a().dN() < System.currentTimeMillis()))
      {
        this.a = new Timer();
        this.a.schedule(new aag(this), 180000L);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.ScreenEventReceiverEUP
 * JD-Core Version:    0.6.2
 */