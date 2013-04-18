package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.jxphone.mosecurity.a.a;

final class ad
  implements DialogInterface.OnClickListener
{
  ad(MonitorUninstallActivity paramMonitorUninstallActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.i(this.a, "mg_unst_continue");
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.ad
 * JD-Core Version:    0.6.2
 */