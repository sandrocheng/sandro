package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.database.Cursor;
import android.widget.Toast;

final class o
  implements DialogInterface.OnClickListener
{
  o(FirewallCallLogListActivity paramFirewallCallLogListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.jxphone.mosecurity.a.a.i(this.a, "sao_call_del");
    com.ijinshan.kinghelper.firewall.a.a.b(null, null);
    FirewallCallLogListActivity.b(this.a).getCursor().requery();
    FirewallCallLogListActivity.b(this.a).notifyDataSetChanged();
    Toast.makeText(this.a, 2131427621, 0).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.o
 * JD-Core Version:    0.6.2
 */