package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.database.Cursor;
import android.util.Log;
import android.util.SparseBooleanArray;
import com.ijinshan.kinghelper.firewall.a.a;

final class r
  implements DialogInterface.OnClickListener
{
  r(q paramq, p paramp)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = a.b(this.a.k);
    Log.d("FirewallCallLogListActivity", "delete log call " + this.a.k + ",re=" + i);
    this.b.getCursor().requery();
    this.b.a.setListAdapter(FirewallCallLogListActivity.b(this.b.a));
    q.a(this.b).clear();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.r
 * JD-Core Version:    0.6.2
 */