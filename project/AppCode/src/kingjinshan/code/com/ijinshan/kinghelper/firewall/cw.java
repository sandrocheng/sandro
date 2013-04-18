package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kpref.Preference;
import com.keniu.security.mydb.opt.a;

final class cw
  implements DialogInterface.OnClickListener
{
  cw(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String[] arrayOfString = a.a(this.a.getApplicationContext());
    if ((IpDialSettingsActivity.h(this.a) < 0) || (IpDialSettingsActivity.h(this.a) >= arrayOfString.length))
      return;
    IpDialSettingsActivity.b(this.a, arrayOfString[IpDialSettingsActivity.h(this.a)]);
    if (IpDialSettingsActivity.h(this.a) < 4)
    {
      dc.a(IpDialSettingsActivity.h(this.a));
      dc.e(IpDialSettingsActivity.g(this.a));
      IpDialSettingsActivity.c(this.a).a(IpDialSettingsActivity.g(this.a));
    }
    while (true)
    {
      this.a.removeDialog(4096);
      break;
      IpDialSettingsActivity.a(this.a, a.b(IpDialSettingsActivity.g(this.a)));
      this.a.showDialog(8192);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cw
 * JD-Core Version:    0.6.2
 */