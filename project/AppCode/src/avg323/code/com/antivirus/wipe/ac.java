package com.antivirus.wipe;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avg.ui.general.a.a;

class ac
  implements DialogInterface.OnClickListener
{
  ac(ab paramab)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (ab.a(this.a) != null)
      ab.a(this.a).dismiss();
    ab.b(this.a).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.ac
 * JD-Core Version:    0.6.2
 */