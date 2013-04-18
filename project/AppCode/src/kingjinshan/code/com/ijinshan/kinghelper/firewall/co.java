package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class co
  implements DialogInterface.OnClickListener
{
  co(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    IpDialSettingsActivity.a(this.a, paramInt);
    IpDialSettingsActivity.v(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.co
 * JD-Core Version:    0.6.2
 */