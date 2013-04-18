package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.keniu.security.service.RubbishSMSScanServiceCtrl;

final class bd
  implements DialogInterface.OnClickListener
{
  bd(FirewallSmsLogListActivity paramFirewallSmsLogListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (FirewallSmsLogListActivity.a(this.a) != null)
    {
      FirewallSmsLogListActivity.a(this.a).b();
      FirewallSmsLogListActivity.i(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bd
 * JD-Core Version:    0.6.2
 */