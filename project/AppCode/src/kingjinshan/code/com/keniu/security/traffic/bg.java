package com.keniu.security.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class bg
  implements DialogInterface.OnClickListener
{
  bg(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    TrafficMainActivity.p(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bg
 * JD-Core Version:    0.6.2
 */