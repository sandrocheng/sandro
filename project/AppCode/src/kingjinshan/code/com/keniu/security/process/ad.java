package com.keniu.security.process;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

final class ad extends BroadcastReceiver
{
  private ad(ProcessWidget paramProcessWidget, byte paramByte)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (str.equals("android.intent.action.SCREEN_ON"))
    {
      if (ProcessWidget.a() == null)
      {
        ProcessWidget.a(new HandlerThread("widget_update"));
        ProcessWidget.a().start();
      }
      ProcessWidget.a(new Handler(ProcessWidget.a().getLooper()));
      ProcessWidget.b().postDelayed(new ae(this.a, paramContext), 3000L);
    }
    while (true)
    {
      return;
      if (str.equals("android.intent.action.SCREEN_OFF"))
      {
        if (ProcessWidget.a() != null)
        {
          ProcessWidget.a().getLooper().quit();
          ProcessWidget.a(null);
        }
        ProcessWidget.a(null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.ad
 * JD-Core Version:    0.6.2
 */