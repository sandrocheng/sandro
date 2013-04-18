package com.jxphone.mosecurity.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class g
  implements DialogInterface.OnDismissListener
{
  g(BaseContactActivity paramBaseContactActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!BaseContactActivity.a(this.a))
      this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.g
 * JD-Core Version:    0.6.2
 */