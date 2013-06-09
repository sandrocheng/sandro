package org.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import org.antivirus.AVSettings;

final class a
  implements DialogInterface.OnClickListener
{
  a(VersionUpdateDialog paramVersionUpdateDialog)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AVSettings.setVersionUpdateNotificationLastTime(System.currentTimeMillis());
    paramDialogInterface.cancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.a
 * JD-Core Version:    0.6.2
 */