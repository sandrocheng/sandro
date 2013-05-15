package com.avast.android.mobilesecurity.app.scanner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class e
  implements DialogInterface.OnClickListener
{
  e(DeleteFileActivity.DialogFragment paramDialogFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    DeleteFileActivity.b(this.a.a);
    this.a.a.setResult(-1);
    this.a.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.e
 * JD-Core Version:    0.6.2
 */