package com.antivirus.wipe;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class j
  implements DialogInterface.OnClickListener
{
  j(i parami)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (b.g(this.a.b) != null)
      b.g(this.a.b).dismiss();
    if (b.A(this.a.b) != null)
      b.A(this.a.b).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.j
 * JD-Core Version:    0.6.2
 */