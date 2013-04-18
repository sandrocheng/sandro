package com.ijinshan.kinghelper.firewall;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;

final class az
  implements View.OnClickListener
{
  az(FirewallSmsLogListActivity paramFirewallSmsLogListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    FirewallSmsLogListActivity.b(this.a);
    FirewallSmsLogListActivity.f(this.a).dismiss();
    FirewallSmsLogListActivity.g(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.az
 * JD-Core Version:    0.6.2
 */