package com.keniu.security.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.keniu.security.a;
import com.keniu.security.util.CustomCheckBoxPreference;

final class bx
  implements DialogInterface.OnClickListener
{
  bx(bw parambw)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.a(false);
    TrafficSettingActivity.c(this.a.b).a = false;
    TrafficSettingActivity.c(this.a.b).a(this.a.b, 2131428288);
    dd.b(this.a.b);
    a locala = a.a(this.a.b);
    if (locala.at())
    {
      locala.ap();
      this.a.b.c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bx
 * JD-Core Version:    0.6.2
 */