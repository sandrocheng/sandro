package com.avg.tuneup.battery;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class g
  implements DialogInterface.OnClickListener
{
  g(c paramc)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c.b(this.a, paramInt);
    c.a(this.a).notifyDataSetChanged();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.g
 * JD-Core Version:    0.6.2
 */