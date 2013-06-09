package org.antivirus.ui.scan;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;

final class b
  implements DialogInterface.OnClickListener
{
  b(FileRemover paramFileRemover, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    new EngineSettings(this.b.getApplicationContext()).setIgnoreFile(this.a);
    try
    {
      Intent localIntent = (Intent)this.b.getIntent().getParcelableExtra("continue");
      if (localIntent != null)
        this.b.startActivity(localIntent);
      this.b.finish();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.b
 * JD-Core Version:    0.6.2
 */