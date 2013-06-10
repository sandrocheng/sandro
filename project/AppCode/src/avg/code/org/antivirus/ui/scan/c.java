package org.antivirus.ui.scan;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import java.io.File;
import org.antivirus.core.Logger;

final class c
  implements DialogInterface.OnClickListener
{
  c(FileRemover paramFileRemover)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.a.getIntent().getExtras().getString("file_path");
    try
    {
      new File(str).delete();
      this.a.finish();
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
 * Qualified Name:     org.antivirus.ui.scan.c
 * JD-Core Version:    0.6.2
 */