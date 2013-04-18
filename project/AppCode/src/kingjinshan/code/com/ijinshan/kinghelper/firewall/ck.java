package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kpref.Preference;
import com.keniu.security.mydb.opt.a;

final class ck
  implements DialogInterface.OnClickListener
{
  ck(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String[] arrayOfString1 = a.a(this.a.getApplicationContext());
    if ((IpDialSettingsActivity.q(this.a) > 0) && (IpDialSettingsActivity.q(this.a) <= arrayOfString1.length))
    {
      IpDialSettingsActivity.f(this.a, arrayOfString1[(IpDialSettingsActivity.q(this.a) - 1)]);
      if (IpDialSettingsActivity.q(this.a) >= 5)
        break label133;
      dc.c(IpDialSettingsActivity.q(this.a));
      dc.g(IpDialSettingsActivity.r(this.a));
      IpDialSettingsActivity.f(this.a).a(IpDialSettingsActivity.r(this.a));
      dc.d(0);
      dc.i("选择全省");
    }
    while (true)
    {
      this.a.removeDialog(12288);
      return;
      IpDialSettingsActivity.f(this.a, "未选择任何地区");
      break;
      label133: String[] arrayOfString2 = a.b(IpDialSettingsActivity.r(this.a));
      IpDialSettingsActivity.b(this.a, new String[1 + arrayOfString2.length]);
      IpDialSettingsActivity.s(this.a)[0] = "选择全省";
      for (int i = 0; i < arrayOfString2.length; i++)
        IpDialSettingsActivity.s(this.a)[(i + 1)] = arrayOfString2[i];
      this.a.showDialog(16384);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ck
 * JD-Core Version:    0.6.2
 */