package org.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class b
  implements DialogInterface.OnCancelListener
{
  b(VersionUpdateDialog paramVersionUpdateDialog)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.b
 * JD-Core Version:    0.6.2
 */