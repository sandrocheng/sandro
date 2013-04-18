package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import com.ijinshan.kpref.Preference;

final class cu
  implements DialogInterface.OnClickListener
{
  cu(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0)
    {
      dc.c("拨打长途时");
      IpDialSettingsActivity.a(this.a, dc.b("不使用IP拨号"));
      IpDialSettingsActivity.b(this.a).a(IpDialSettingsActivity.a(this.a));
      if (!"拨打长途时".equals(IpDialSettingsActivity.a(this.a)))
        break label184;
      IpDialSettingsActivity.c(this.a).c(true);
      IpDialSettingsActivity.d(this.a).c(true);
      IpDialSettingsActivity.e(this.a).c(true);
      IpDialSettingsActivity.f(this.a).c(true);
      if ((TextUtils.isEmpty(IpDialSettingsActivity.g(this.a))) || (this.a.getString(2131429015).equals(IpDialSettingsActivity.g(this.a))))
      {
        this.a.showDialog(4096);
        IpDialSettingsActivity.a(this.a, true);
      }
    }
    while (true)
    {
      this.a.removeDialog(24576);
      return;
      if (paramInt == 1)
      {
        dc.c("拨打所有电话时");
        break;
      }
      dc.c("不使用IP拨号");
      break;
      label184: if ("拨打所有电话时".equals(IpDialSettingsActivity.a(this.a)))
      {
        IpDialSettingsActivity.c(this.a).c(true);
        IpDialSettingsActivity.d(this.a).c(true);
        IpDialSettingsActivity.e(this.a).c(true);
        IpDialSettingsActivity.f(this.a).c(true);
      }
      else
      {
        IpDialSettingsActivity.c(this.a).c(false);
        IpDialSettingsActivity.d(this.a).c(false);
        IpDialSettingsActivity.e(this.a).c(false);
        IpDialSettingsActivity.f(this.a).c(false);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cu
 * JD-Core Version:    0.6.2
 */