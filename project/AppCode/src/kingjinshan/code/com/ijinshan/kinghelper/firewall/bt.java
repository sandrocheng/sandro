package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.jxphone.mosecurity.a.a;

final class bt
  implements DialogInterface.OnClickListener
{
  bt(FirewallSmsLogListActivity paramFirewallSmsLogListActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    dd.x();
    paramDialogInterface.dismiss();
    a.g(this.b, "2");
    FirewallSmsLogListActivity.b(this.b);
    if (this.a.isChecked())
    {
      dd.k(true);
      a.a(this.b, true);
    }
    FirewallSmsLogListActivity.c(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bt
 * JD-Core Version:    0.6.2
 */