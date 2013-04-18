package com.ijinshan.bootmanager.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.keniu.security.malware.bz;

final class l
  implements DialogInterface.OnClickListener
{
  private String b;
  private com.ijinshan.bootmanager.b.a c;
  private CheckBox d;

  public l(AutoBootMangerActivity paramAutoBootMangerActivity, String paramString, com.ijinshan.bootmanager.b.a parama, CheckBox paramCheckBox)
  {
    this.b = paramString;
    this.c = parama;
    this.d = paramCheckBox;
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ("ROOT_REQUEST".equals(this.b))
    {
      if (this.d.isChecked())
        this.a.b.z();
      bz.a().c();
      this.a.a.a(com.keniu.security.monitor.a.x, this.a, 1073741823);
    }
    while (true)
    {
      return;
      if (("SECRET_PRO_TYPE".equals(this.b)) || ("BATTERY_DOC_TYPE".equals(this.b)) || ("DUBA_DOC_TYPE".equals(this.b)))
      {
        AutoBootMangerActivity.a(2, AutoBootMangerActivity.o(this.a));
        new m(this).start();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.l
 * JD-Core Version:    0.6.2
 */