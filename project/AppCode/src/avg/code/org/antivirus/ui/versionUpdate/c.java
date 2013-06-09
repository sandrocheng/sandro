package org.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import org.antivirus.AVService;
import org.antivirus.ganalytics.a;

final class c
  implements DialogInterface.OnClickListener
{
  c(VersionUpdateDialog paramVersionUpdateDialog)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a(this.a, "version_update", "ok", null);
    Intent localIntent1 = new Intent(this.a, VersionUpdateProgressDialog.class);
    localIntent1.putExtra("progress", 0);
    localIntent1.putExtra("progress_max", 0);
    this.a.startActivity(localIntent1);
    Intent localIntent2 = new Intent(this.a, AVService.class);
    localIntent2.putExtra("__SAC", 117);
    localIntent2.putExtra("url", VersionUpdateDialog.a(this.a));
    localIntent2.putExtra("revision", VersionUpdateDialog.b(this.a));
    localIntent2.putExtra("action", 0);
    this.a.startService(localIntent2);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.c
 * JD-Core Version:    0.6.2
 */