package com.avast.android.mobilesecurity.ui.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class w
  implements DialogInterface.OnClickListener
{
  w(YesNoDialogFragment paramYesNoDialogFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    YesNoDialogFragment.a(this.a).b(this.a);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.w
 * JD-Core Version:    0.6.2
 */