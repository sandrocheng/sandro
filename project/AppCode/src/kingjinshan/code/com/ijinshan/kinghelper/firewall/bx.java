package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class bx
  implements DialogInterface.OnClickListener
{
  bx(IPDialTypeActivity paramIPDialTypeActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    dc.c(this.a.getString(2131427501));
    Intent localIntent = new Intent(this.a, IpDialHeaderAddActivity.class);
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bx
 * JD-Core Version:    0.6.2
 */