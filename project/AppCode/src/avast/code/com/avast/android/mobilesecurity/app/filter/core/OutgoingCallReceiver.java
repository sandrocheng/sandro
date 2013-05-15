package com.avast.android.mobilesecurity.app.filter.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;

public class OutgoingCallReceiver extends BroadcastReceiver
{
  private boolean a = false;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("android.intent.extra.PHONE_NUMBER");
    com.avast.android.generic.util.m.c("OutgoingCallReceiver call to " + str);
    m localm = new m(this, paramContext, u.a(paramContext));
    if ((str != null) && (str.length() > 0))
      localm.a(str);
    while (true)
    {
      return;
      localm.a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.OutgoingCallReceiver
 * JD-Core Version:    0.6.2
 */