package com.antivirus.ui.callmessagefilter.fragment;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.i;
import android.widget.CheckBox;
import com.antivirus.c;
import com.antivirus.ui.callmessagefilter.d;

class e
  implements DialogInterface.OnClickListener
{
  e(a parama, CheckBox paramCheckBox, i parami, d paramd)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      c.w();
    this.d.a(this.b, this.c);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.e
 * JD-Core Version:    0.6.2
 */