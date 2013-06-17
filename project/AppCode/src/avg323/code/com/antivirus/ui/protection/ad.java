package com.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.widget.CheckBox;
import com.antivirus.c;

class ad
  implements DialogInterface.OnDismissListener
{
  ad(r paramr, CheckBox paramCheckBox)
  {
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (this.a.isChecked())
      c.y();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.ad
 * JD-Core Version:    0.6.2
 */