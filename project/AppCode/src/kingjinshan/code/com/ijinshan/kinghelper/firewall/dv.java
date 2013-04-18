package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class dv
  implements DialogInterface.OnClickListener
{
  dv(ServicesSmsDetailActivity paramServicesSmsDetailActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ServicesSmsDetailActivity.a(this.a, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dv
 * JD-Core Version:    0.6.2
 */