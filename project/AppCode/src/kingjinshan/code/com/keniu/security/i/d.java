package com.keniu.security.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class d extends BroadcastReceiver
{
  d(c paramc)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (str == null);
    while (true)
    {
      return;
      if (str.equals("android.intent.action.MEDIA_MOUNTED"))
        c.a(this.a).a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.d
 * JD-Core Version:    0.6.2
 */