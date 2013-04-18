package com.ijinshan.kinghelper.firewall;

import android.os.Handler;
import android.os.Message;

final class bm extends Thread
{
  bm(FirewallSmsLogListActivity paramFirewallSmsLogListActivity)
  {
  }

  public final void run()
  {
    FirewallSmsLogListActivity.l(this.a);
    Message localMessage = this.a.b.obtainMessage();
    localMessage.what = 1;
    this.a.b.sendMessage(localMessage);
    super.run();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bm
 * JD-Core Version:    0.6.2
 */