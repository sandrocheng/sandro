package com.avg.tuneup.battery;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class h
  implements DialogInterface.OnClickListener
{
  h(c paramc)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c.c(this.a, paramInt);
    paramDialogInterface.dismiss();
    c.a(this.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.h
 * JD-Core Version:    0.6.2
 */