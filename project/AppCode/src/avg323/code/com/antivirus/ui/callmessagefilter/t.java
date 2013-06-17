package com.antivirus.ui.callmessagefilter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

class t
  implements DialogInterface.OnClickListener
{
  t(r paramr, CheckBox paramCheckBox)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      r.a(this.b, false);
    this.b.a.b.setChecked(false);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.t
 * JD-Core Version:    0.6.2
 */