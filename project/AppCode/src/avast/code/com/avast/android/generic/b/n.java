package com.avast.android.generic.b;

import android.os.Handler;
import android.os.Message;
import com.avast.android.generic.util.t;

class n extends Handler
{
  n(m paramm)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    t.a("AvastGeneric", l.a(this.a.a), "Received message in command handler");
    try
    {
      l.b(this.a.a);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        t.a("AvastGeneric", "Error in handling command", localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.n
 * JD-Core Version:    0.6.2
 */