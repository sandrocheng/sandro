package org.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class h
  implements DialogInterface.OnCancelListener
{
  h(VersionUpdateProgressDialog paramVersionUpdateProgressDialog)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    VersionUpdateProgressDialog.i(this.a);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.h
 * JD-Core Version:    0.6.2
 */