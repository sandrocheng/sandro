package com.antivirus.ui.callmessagefilter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.antivirus.c;

class s
  implements DialogInterface.OnClickListener
{
  s(r paramr, CheckBox paramCheckBox)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      r.a(this.b, true);
    boolean bool = c.r();
    c.h(false);
    this.b.a.b.setChecked(true);
    c.h(bool);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.s
 * JD-Core Version:    0.6.2
 */