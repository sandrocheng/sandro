package com.jxphone.mosecurity.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class b
  implements DialogInterface.OnClickListener
{
  b(Activity paramActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if ((this.a instanceof BaseContactActivity))
      ((BaseContactActivity)this.a).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.b
 * JD-Core Version:    0.6.2
 */