package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kpref.Preference;

final class cy
  implements DialogInterface.OnClickListener
{
  cy(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    IpDialSettingsActivity.c(this.a, IpDialSettingsActivity.j(this.a)[IpDialSettingsActivity.k(this.a)]);
    IpDialSettingsActivity.b(this.a, IpDialSettingsActivity.g(this.a) + IpDialSettingsActivity.l(this.a));
    dc.a(IpDialSettingsActivity.h(this.a));
    dc.e(IpDialSettingsActivity.g(this.a));
    dc.b(IpDialSettingsActivity.k(this.a));
    IpDialSettingsActivity.c(this.a).a(IpDialSettingsActivity.g(this.a));
    this.a.removeDialog(4096);
    this.a.removeDialog(8192);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cy
 * JD-Core Version:    0.6.2
 */