package com.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class d
  implements DialogInterface.OnCancelListener
{
  d(VersionUpdateProgressDialog paramVersionUpdateProgressDialog)
  {
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    VersionUpdateProgressDialog.a(this.a, null);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.versionUpdate.d
 * JD-Core Version:    0.6.2
 */