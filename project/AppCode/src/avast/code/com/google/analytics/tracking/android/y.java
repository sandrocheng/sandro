package com.google.analytics.tracking.android;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class y
  implements Handler.Callback
{
  y(w paramw)
  {
  }

  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == paramMessage.what) && (w.d().equals(paramMessage.obj)))
    {
      an.a().a(true);
      this.a.c();
      an.a().a(false);
      if ((w.a(this.a) > 0) && (!w.b(this.a)))
        w.c(this.a).sendMessageDelayed(w.c(this.a).obtainMessage(1, w.d()), 1000 * w.a(this.a));
    }
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.y
 * JD-Core Version:    0.6.2
 */