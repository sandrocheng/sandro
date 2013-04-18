package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.database.Cursor;
import android.widget.Toast;

final class ax
  implements DialogInterface.OnClickListener
{
  ax(FirewallSmsLogListActivity paramFirewallSmsLogListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.jxphone.mosecurity.a.a.i(this.a, "sao_sms_del");
    com.ijinshan.kinghelper.firewall.a.a.a(null, null);
    FirewallSmsLogListActivity.d(this.a).getCursor().requery();
    FirewallSmsLogListActivity.d(this.a).notifyDataSetChanged();
    Toast.makeText(this.a, 2131427621, 0).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ax
 * JD-Core Version:    0.6.2
 */