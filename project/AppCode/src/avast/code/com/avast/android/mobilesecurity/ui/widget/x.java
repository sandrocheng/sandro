package com.avast.android.mobilesecurity.ui.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class x
  implements DialogInterface.OnClickListener
{
  x(YesNoDialogFragment paramYesNoDialogFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    YesNoDialogFragment.a(this.a).a(this.a);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.x
 * JD-Core Version:    0.6.2
 */