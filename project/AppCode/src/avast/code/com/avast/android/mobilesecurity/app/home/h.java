package com.avast.android.mobilesecurity.app.home;

import android.os.Handler.Callback;
import android.os.Message;
import android.view.View;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.generic.util.s;

class h
  implements Handler.Callback
{
  h(HomeActivity paramHomeActivity, View paramView, s params)
  {
  }

  public boolean handleMessage(Message paramMessage)
  {
    if ((paramMessage.what == 2131165212) && (paramMessage.arg1 == PasswordDialog.a))
    {
      HomeActivity.a(this.c, this.a);
      this.b.b(2131165212, HomeActivity.d(this.c));
      HomeActivity.a(this.c, null);
    }
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.h
 * JD-Core Version:    0.6.2
 */