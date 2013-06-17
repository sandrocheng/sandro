package com.antivirus.ui.scan;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.antivirus.core.b;

class i
  implements DialogInterface.OnClickListener
{
  i(UnInstall paramUnInstall, String paramString)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    new b(this.b.getApplicationContext()).c(this.a);
    this.b.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.i
 * JD-Core Version:    0.6.2
 */