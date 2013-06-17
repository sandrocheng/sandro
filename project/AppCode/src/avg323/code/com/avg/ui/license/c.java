package com.avg.ui.license;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class c
  implements DialogInterface.OnClickListener
{
  c(b paramb, boolean paramBoolean)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.a(this.b.a, null);
    if ((this.a) && (!a.g(this.b.a).o()))
      a.h(this.b.a).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.c
 * JD-Core Version:    0.6.2
 */