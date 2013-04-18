package com.keniu.security.i;

import android.os.Handler;
import android.os.Message;

final class g extends Handler
{
  g(f paramf)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      f.a(this.a);
      f.b(this.a);
      f.c(this.a);
    }
    while (true)
    {
      return;
      if (paramMessage.what == 2)
        f.a(this.a, (String)paramMessage.obj);
      else if (paramMessage.what == 3)
        f.b(this.a, (String)paramMessage.obj);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.g
 * JD-Core Version:    0.6.2
 */