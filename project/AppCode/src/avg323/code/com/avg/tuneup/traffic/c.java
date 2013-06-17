package com.avg.tuneup.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class c
  implements DialogInterface.OnClickListener
{
  c(a parama)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.f(this.a, paramInt);
    a.a(this.a).notifyDataSetChanged();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.c
 * JD-Core Version:    0.6.2
 */