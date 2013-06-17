package com.avg.toolkit.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class d extends BroadcastReceiver
{
  private d(a parama)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((f.a(paramContext)) && (a.a(this.a)))
      a.a(this.a, false);
    try
    {
      paramContext.unregisterReceiver(this);
      this.a.a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b.d
 * JD-Core Version:    0.6.2
 */