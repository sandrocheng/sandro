package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.database.Cursor;
import android.widget.Toast;
import com.ijinshan.kinghelper.firewall.a.a;

final class m
  implements DialogInterface.OnClickListener
{
  m(FirewallCallLogListActivity paramFirewallCallLogListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.b(FirewallCallLogListActivity.d(this.a), null);
    FirewallCallLogListActivity.b(this.a).getCursor().requery();
    this.a.setListAdapter(FirewallCallLogListActivity.b(this.a));
    FirewallCallLogListActivity.b(this.a).b();
    if (FirewallCallLogListActivity.b(this.a).getCursor().getCount() <= 0)
    {
      FirewallCallLogListActivity.e(this.a);
      FirewallCallLogListActivity.f(this.a);
    }
    FirewallCallLogListActivity.b(this.a).notifyDataSetChanged();
    Toast.makeText(this.a, 2131427621, 0).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.m
 * JD-Core Version:    0.6.2
 */