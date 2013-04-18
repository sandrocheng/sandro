package com.keniu.security.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class bh
  implements DialogInterface.OnClickListener
{
  bh(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    y localy = y.a(this.a);
    localy.u = "1";
    localy.a(this.a, 2131428032);
    dd.a(this.a.getApplicationContext(), 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bh
 * JD-Core Version:    0.6.2
 */