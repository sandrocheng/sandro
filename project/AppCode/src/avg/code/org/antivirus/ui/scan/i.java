package org.antivirus.ui.scan;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import org.antivirus.core.EngineSettings;

final class i
  implements DialogInterface.OnClickListener
{
  i(UnInstall paramUnInstall, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    new EngineSettings(this.b.getApplicationContext()).setIgnorePackages(this.a);
    this.b.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.i
 * JD-Core Version:    0.6.2
 */