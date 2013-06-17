package com.avg.ui.general;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class m
  implements DialogInterface.OnDismissListener
{
  m(boolean paramBoolean, Context paramContext)
  {
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (this.a)
      ((Activity)this.b).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.m
 * JD-Core Version:    0.6.2
 */