package com.avast.android.generic.ui;

import android.os.Handler.Callback;
import android.os.Message;

final class u
  implements Handler.Callback
{
  u(ad paramad)
  {
  }

  public boolean handleMessage(Message paramMessage)
  {
    boolean bool = true;
    if (paramMessage.arg1 == PasswordDialog.a)
      this.a.a();
    while (true)
    {
      return bool;
      if (paramMessage.arg1 == PasswordDialog.b)
        this.a.b();
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.u
 * JD-Core Version:    0.6.2
 */