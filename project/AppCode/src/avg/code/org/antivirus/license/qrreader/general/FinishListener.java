package org.antivirus.license.qrreader.general;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;

public final class FinishListener
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, Runnable
{
  private final Activity activityToFinish;

  public FinishListener(Activity paramActivity)
  {
    this.activityToFinish = paramActivity;
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.activityToFinish.finish();
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.activityToFinish.finish();
  }

  public final void run()
  {
    this.activityToFinish.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.FinishListener
 * JD-Core Version:    0.6.2
 */