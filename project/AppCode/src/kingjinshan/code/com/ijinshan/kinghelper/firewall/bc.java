package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;

final class bc
  implements DialogInterface.OnClickListener
{
  bc(FirewallSmsLogListActivity paramFirewallSmsLogListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    FirewallSmsLogListActivity.i(this.a);
    Toast.makeText(this.a, 2131427858, 0).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bc
 * JD-Core Version:    0.6.2
 */