package com.avg.tuneup.battery;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.o;
import com.avg.a.e;

class q
  implements DialogInterface.OnClickListener
{
  q(BatteryStateActivity paramBatteryStateActivity, int[] paramArrayOfInt)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((r)this.b.f().a(e.middle_part)).b(this.a[paramInt]);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.q
 * JD-Core Version:    0.6.2
 */