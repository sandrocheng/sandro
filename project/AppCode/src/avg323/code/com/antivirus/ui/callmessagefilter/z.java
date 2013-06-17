package com.antivirus.ui.callmessagefilter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

class z
  implements DialogInterface.OnClickListener
{
  z(y paramy, CheckBox paramCheckBox)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      this.b.b();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.z
 * JD-Core Version:    0.6.2
 */