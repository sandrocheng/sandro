package com.avast.android.mobilesecurity.app.firewall;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class x extends Handler
{
  x(FirewallLogsFragment paramFirewallLogsFragment, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (!FirewallLogsFragment.a(this.a))
    {
      FirewallLogsFragment.b(this.a);
      FirewallLogsFragment.c(this.a).sendMessageDelayed(FirewallLogsFragment.c(this.a).obtainMessage(), 30000L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.x
 * JD-Core Version:    0.6.2
 */