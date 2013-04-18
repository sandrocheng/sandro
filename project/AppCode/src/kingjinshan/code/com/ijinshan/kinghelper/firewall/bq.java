package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class bq
  implements DialogInterface.OnDismissListener
{
  bq(FirewallSmsLogListActivity paramFirewallSmsLogListActivity, long paramLong, String paramString)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    FirewallSmsLogListActivity.a(this.c, this.a, this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bq
 * JD-Core Version:    0.6.2
 */