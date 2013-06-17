package com.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.antivirus.AVService;

class e
  implements DialogInterface.OnClickListener
{
  e(VersionUpdateProgressDialog paramVersionUpdateProgressDialog)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("vu_action", 1);
    AVService.a(this.a, 6000, 1, localBundle);
    VersionUpdateProgressDialog.a(this.a, null);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.versionUpdate.e
 * JD-Core Version:    0.6.2
 */