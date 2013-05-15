package com.avast.android.mobilesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.avast.android.mobilesecurity.app.locking.core.h;

public class ScreenReceiver extends BroadcastReceiver
{
  public static void a(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.registerReceiver(new ScreenReceiver(), localIntentFilter);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"));
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("android.intent.action.SCREEN_ON"))
        h.a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.ScreenReceiver
 * JD-Core Version:    0.6.2
 */