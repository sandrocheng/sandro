package org.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import org.antivirus.AVService;

final class i
  implements DialogInterface.OnClickListener
{
  i(VersionUpdateProgressDialog paramVersionUpdateProgressDialog)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(this.a, AVService.class);
    localIntent.putExtra("__SAC", 117);
    localIntent.putExtra("action", 1);
    this.a.startService(localIntent);
    VersionUpdateProgressDialog.i(this.a);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.i
 * JD-Core Version:    0.6.2
 */