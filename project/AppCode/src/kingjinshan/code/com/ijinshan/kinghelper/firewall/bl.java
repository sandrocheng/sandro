package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

final class bl
  implements DialogInterface.OnClickListener
{
  bl(FirewallSmsLogListActivity paramFirewallSmsLogListActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      FirewallSmsLogListActivity.k(this.b).k();
    com.jxphone.mosecurity.a.a.a(this.b, false);
    dd.k(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bl
 * JD-Core Version:    0.6.2
 */