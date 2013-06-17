package com.antivirus.ui.versionUpdate;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.antivirus.c;

class a
  implements DialogInterface.OnClickListener
{
  a(VersionUpdateDialog paramVersionUpdateDialog)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c.a(System.currentTimeMillis());
    paramDialogInterface.cancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.versionUpdate.a
 * JD-Core Version:    0.6.2
 */