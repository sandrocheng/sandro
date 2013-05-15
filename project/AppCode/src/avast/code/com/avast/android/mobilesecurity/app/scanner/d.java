package com.avast.android.mobilesecurity.app.scanner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class d
  implements DialogInterface.OnClickListener
{
  d(DeleteFileActivity.DialogFragment paramDialogFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.setResult(-1);
    this.a.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.d
 * JD-Core Version:    0.6.2
 */