package com.ijinshan.kinghelper.firewall;

import com.hoi.widget.o;

final class bi
  implements Runnable
{
  bi(FirewallSmsLogListActivity paramFirewallSmsLogListActivity, int paramInt)
  {
  }

  public final void run()
  {
    if (FirewallSmsLogListActivity.j(this.b) != null)
    {
      FirewallSmsLogListActivity.j(this.b).dismiss();
      FirewallSmsLogListActivity.i(this.b);
    }
    FirewallSmsLogListActivity.a(this.b, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bi
 * JD-Core Version:    0.6.2
 */