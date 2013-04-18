package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class cn
  implements DialogInterface.OnClickListener
{
  cn(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.removeDialog(12288);
    this.a.removeDialog(16384);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cn
 * JD-Core Version:    0.6.2
 */