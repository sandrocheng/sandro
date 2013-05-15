package com.avast.android.mobilesecurity.app.scanner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class c
  implements DialogInterface.OnClickListener
{
  c(DeleteFileActivity.DialogFragment paramDialogFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.setResult(0);
    this.a.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.c
 * JD-Core Version:    0.6.2
 */