package com.keniu.security.process;

import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.keniu.security.MoSecurityApplication;

public class ProcessWidget extends AppWidgetProvider
{
  private static ad a;
  private static Handler b;
  private static HandlerThread c;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
    String str = paramIntent.getAction();
    if ("android.appwidget.action.APPWIDGET_UPDATE".equals(str))
    {
      if (c == null)
      {
        HandlerThread localHandlerThread = new HandlerThread("widget_update");
        c = localHandlerThread;
        localHandlerThread.start();
      }
      if (b == null)
      {
        Handler localHandler = new Handler(c.getLooper());
        b = localHandler;
        localHandler.postDelayed(new ae(this, paramContext), 0L);
      }
      if (a == null)
      {
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("android.intent.action.SCREEN_ON");
        localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
        a = new ad(this);
        MoSecurityApplication.a().registerReceiver(a, localIntentFilter);
      }
    }
    while (true)
    {
      return;
      if (!"android.appwidget.action.APPWIDGET_DISABLED".equals(str))
        continue;
      if (c != null)
      {
        c.getLooper().quit();
        c = null;
      }
      try
      {
        MoSecurityApplication.a().unregisterReceiver(a);
        label179: b = null;
        a = null;
      }
      catch (Exception localException)
      {
        break label179;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.ProcessWidget
 * JD-Core Version:    0.6.2
 */