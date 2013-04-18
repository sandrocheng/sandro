package com.keniu.security.protection;

import android.os.Handler;
import android.os.Message;
import com.keniu.security.protection.ui.ag;

final class s extends Thread
{
  s(q paramq, int paramInt, x paramx)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(20000L);
      if (ag.a(q.a(this.c), this.a, this.b.c, this.b.d, this.b.f) == -1)
      {
        Message localMessage = new Message();
        q.b(this.c).sendMessage(localMessage);
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.s
 * JD-Core Version:    0.6.2
 */