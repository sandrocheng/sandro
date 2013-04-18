package com.jxphone.mosecurity.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class p
  implements DialogInterface.OnCancelListener
{
  p(Activity paramActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((this.a instanceof BaseContactActivity))
      ((BaseContactActivity)this.a).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.p
 * JD-Core Version:    0.6.2
 */