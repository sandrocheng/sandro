package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

final class ak
  implements DialogInterface.OnKeyListener
{
  private ak(MonitorUninstallActivity paramMonitorUninstallActivity, byte paramByte)
  {
  }

  public final boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (MonitorUninstallActivity.d(this.a))
    {
      this.a.finish();
      bool = false;
    }
    while (true)
    {
      return bool;
      if (paramInt == 66)
        bool = true;
      else if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.ak
 * JD-Core Version:    0.6.2
 */