package com.antivirus.wipe;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class e
  implements DialogInterface.OnClickListener
{
  e(c paramc)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (b.g(this.a.a) != null)
      b.g(this.a.a).dismiss();
    b.j(this.a.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.e
 * JD-Core Version:    0.6.2
 */