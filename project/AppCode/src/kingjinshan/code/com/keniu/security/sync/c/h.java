package com.keniu.security.sync.c;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Handler;

final class h
  implements DialogInterface.OnCancelListener
{
  h(g paramg)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.c.sendMessage(this.a.c.obtainMessage(123));
    this.a.cancel(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.h
 * JD-Core Version:    0.6.2
 */