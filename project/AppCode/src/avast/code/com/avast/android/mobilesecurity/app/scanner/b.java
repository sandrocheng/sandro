package com.avast.android.mobilesecurity.app.scanner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.Fragment;

class b
  implements DialogInterface.OnClickListener
{
  b(ConfirmResolveAllFragment paramConfirmResolveAllFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Fragment localFragment = this.a.getTargetFragment();
    if (localFragment != null)
      ((ap)localFragment).a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.b
 * JD-Core Version:    0.6.2
 */