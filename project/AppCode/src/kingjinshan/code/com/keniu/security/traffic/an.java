package com.keniu.security.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.keniu.security.malware.bz;

final class an
  implements DialogInterface.OnClickListener
{
  an(TrafficFireWallMainActivity paramTrafficFireWallMainActivity, CheckBox paramCheckBox, com.keniu.security.a parama)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      this.b.D();
    bz.a().c();
    this.c.b.a(com.keniu.security.monitor.a.x, this.c, 1073741823);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.an
 * JD-Core Version:    0.6.2
 */