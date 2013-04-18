package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class ag
  implements DialogInterface.OnDismissListener
{
  ag(MainActivity paramMainActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (this.a.f)
      MainActivity.u(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ag
 * JD-Core Version:    0.6.2
 */