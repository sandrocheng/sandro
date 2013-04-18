package com.keniu.security.g;

import android.os.Handler;
import android.os.Message;

final class q extends Handler
{
  q(n paramn)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((paramMessage.what == 1) && (!n.b(this.a)))
      Message.obtain(a.b(this.a.b), 0, this.a).sendToTarget();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g.q
 * JD-Core Version:    0.6.2
 */