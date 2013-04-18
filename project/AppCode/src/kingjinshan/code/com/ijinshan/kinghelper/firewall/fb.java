package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class fb
  implements DialogInterface.OnClickListener
{
  fb(UserWhiteBlackListActivity paramUserWhiteBlackListActivity, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    UserWhiteBlackListActivity.a(this.b, paramInt, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.fb
 * JD-Core Version:    0.6.2
 */