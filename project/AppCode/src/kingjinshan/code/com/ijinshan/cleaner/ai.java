package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ai
  implements DialogInterface.OnClickListener
{
  ai(MonitorUninstallActivity paramMonitorUninstallActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MonitorUninstallActivity.a(paramDialogInterface, true);
    paramDialogInterface.dismiss();
    MonitorUninstallActivity.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.ai
 * JD-Core Version:    0.6.2
 */