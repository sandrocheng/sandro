package com.antivirus.ui.callmessagefilter.fragment;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.antivirus.ui.callmessagefilter.b.b;
import com.antivirus.ui.callmessagefilter.b.d;

class z
  implements DialogInterface.OnClickListener
{
  z(v paramv, CheckBox paramCheckBox, b paramb)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool1 = this.a.isChecked();
    boolean bool2 = false;
    if (bool1)
      bool2 = true;
    this.b.a(d.d);
    v.a(this.c, this.b, bool2);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.z
 * JD-Core Version:    0.6.2
 */