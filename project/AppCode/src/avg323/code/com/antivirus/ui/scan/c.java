package com.antivirus.ui.scan;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import com.avg.toolkit.f.a;
import java.io.File;

class c
  implements DialogInterface.OnClickListener
{
  c(FileRemover paramFileRemover)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
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
        a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.c
 * JD-Core Version:    0.6.2
 */