package com.google.a.a.a;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class s
  implements Handler.Callback
{
  s(q paramq)
  {
  }

  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == paramMessage.what) && (q.d().equals(paramMessage.obj)))
    {
      ah.a().a(true);
      this.a.c();
      ah.a().a(false);
      if ((q.b(this.a) > 0) && (!q.c(this.a)))
        q.d(this.a).sendMessageDelayed(q.d(this.a).obtainMessage(1, q.d()), 1000 * q.b(this.a));
    }
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.s
 * JD-Core Version:    0.6.2
 */