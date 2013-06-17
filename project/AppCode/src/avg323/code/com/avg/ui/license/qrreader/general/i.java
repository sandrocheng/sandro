package com.avg.ui.license.qrreader.general;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;

public final class i
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, Runnable
{
  private final Activity a;

  public i(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    run();
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    run();
  }

  public void run()
  {
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.i
 * JD-Core Version:    0.6.2
 */