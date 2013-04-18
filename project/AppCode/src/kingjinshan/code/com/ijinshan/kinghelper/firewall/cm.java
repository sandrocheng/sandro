package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kpref.Preference;

final class cm
  implements DialogInterface.OnClickListener
{
  cm(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    IpDialSettingsActivity.g(this.a, IpDialSettingsActivity.s(this.a)[IpDialSettingsActivity.t(this.a)]);
    dc.c(IpDialSettingsActivity.q(this.a));
    dc.g(IpDialSettingsActivity.r(this.a));
    dc.d(IpDialSettingsActivity.t(this.a));
    dc.i(IpDialSettingsActivity.u(this.a));
    if ("选择全省".equals(IpDialSettingsActivity.u(this.a)))
      IpDialSettingsActivity.f(this.a).a(IpDialSettingsActivity.r(this.a));
    while (true)
    {
      this.a.removeDialog(12288);
      this.a.removeDialog(16384);
      return;
      IpDialSettingsActivity.f(this.a).a(IpDialSettingsActivity.r(this.a) + IpDialSettingsActivity.u(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cm
 * JD-Core Version:    0.6.2
 */