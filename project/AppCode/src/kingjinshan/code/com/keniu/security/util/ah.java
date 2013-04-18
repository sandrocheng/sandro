package com.keniu.security.util;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

final class ah
  implements View.OnClickListener
{
  ah(MyAlertController paramMyAlertController)
  {
  }

  public final void onClick(View paramView)
  {
    Message localMessage;
    boolean bool;
    if ((paramView == MyAlertController.a(this.a)) && (MyAlertController.b(this.a) != null))
    {
      localMessage = Message.obtain(MyAlertController.b(this.a));
      bool = MyAlertController.c(this.a);
    }
    while (true)
    {
      if (localMessage != null)
        localMessage.sendToTarget();
      if (bool)
        MyAlertController.k(this.a).obtainMessage(1, MyAlertController.j(this.a)).sendToTarget();
      return;
      if ((paramView == MyAlertController.d(this.a)) && (MyAlertController.e(this.a) != null))
      {
        localMessage = Message.obtain(MyAlertController.e(this.a));
        bool = MyAlertController.f(this.a);
      }
      else if ((paramView == MyAlertController.g(this.a)) && (MyAlertController.h(this.a) != null))
      {
        localMessage = Message.obtain(MyAlertController.h(this.a));
        bool = MyAlertController.i(this.a);
      }
      else
      {
        bool = true;
        localMessage = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ah
 * JD-Core Version:    0.6.2
 */