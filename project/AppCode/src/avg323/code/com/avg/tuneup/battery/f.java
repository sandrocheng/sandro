package com.avg.tuneup.battery;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class f
  implements DialogInterface.OnClickListener
{
  f(c paramc)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c.a(this.a, paramInt);
    c.a(this.a).notifyDataSetChanged();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.f
 * JD-Core Version:    0.6.2
 */