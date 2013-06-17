package com.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import com.antivirus.AVService;
import com.avg.toolkit.c.a;

class c
  implements DialogInterface.OnClickListener
{
  c(VersionUpdateDialog paramVersionUpdateDialog)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a(this.a, "version_update", "ok", null, 0);
    Bundle localBundle = new Bundle();
    localBundle.putInt("vu_action", 0);
    localBundle.putString("url", VersionUpdateDialog.a(this.a));
    localBundle.putInt("revision", VersionUpdateDialog.b(this.a));
    AVService.a(this.a, 6000, 1, localBundle);
    Intent localIntent = new Intent(this.a, VersionUpdateProgressDialog.class);
    localIntent.putExtra("progress", 0);
    localIntent.putExtra("progress_max", 0);
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.versionUpdate.c
 * JD-Core Version:    0.6.2
 */