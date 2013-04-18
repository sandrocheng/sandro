package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.database.Cursor;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.a.g;

final class fd
  implements DialogInterface.OnClickListener
{
  fd(UserWhiteBlackListActivity paramUserWhiteBlackListActivity, g paramg)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    e.a(this.a.i);
    UserWhiteBlackListActivity.a(this.b).getCursor().requery();
    this.b.setListAdapter(UserWhiteBlackListActivity.a(this.b));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.fd
 * JD-Core Version:    0.6.2
 */