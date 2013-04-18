package com.keniu.security.protection;

import android.os.Handler;
import android.os.Message;

final class n
  implements Runnable
{
  n(m paramm)
  {
  }

  public final void run()
  {
    Message localMessage = l.d(this.a.a).obtainMessage();
    localMessage.what = 2;
    l.d(this.a.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.n
 * JD-Core Version:    0.6.2
 */