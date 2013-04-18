package com.ijinshan.kinghelper.firewall;

import com.hoi.widget.o;

final class bg
  implements Runnable
{
  bg(FirewallSmsLogListActivity paramFirewallSmsLogListActivity, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    if (FirewallSmsLogListActivity.j(this.c) != null)
    {
      FirewallSmsLogListActivity.j(this.c).b(this.a);
      FirewallSmsLogListActivity.j(this.c).a(this.b);
      o localo = FirewallSmsLogListActivity.j(this.c);
      FirewallSmsLogListActivity localFirewallSmsLogListActivity = this.c;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = (this.b + "/" + this.a);
      localo.a(localFirewallSmsLogListActivity.getString(2131427684, arrayOfObject));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bg
 * JD-Core Version:    0.6.2
 */