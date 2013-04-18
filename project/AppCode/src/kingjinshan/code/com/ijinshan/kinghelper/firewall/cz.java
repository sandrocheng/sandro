package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kpref.Preference;

final class cz
  implements DialogInterface.OnClickListener
{
  cz(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    dc.a(0);
    dc.b(0);
    if (IpDialSettingsActivity.i(this.a))
    {
      IpDialSettingsActivity.a(this.a, false);
      dc.c("不使用IP拨号");
      IpDialSettingsActivity.c(this.a).c(false);
      IpDialSettingsActivity.d(this.a).c(false);
      IpDialSettingsActivity.e(this.a).c(false);
      IpDialSettingsActivity.f(this.a).c(false);
      IpDialSettingsActivity.b(this.a).a("不使用IP拨号");
    }
    this.a.removeDialog(4096);
    this.a.removeDialog(8192);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cz
 * JD-Core Version:    0.6.2
 */