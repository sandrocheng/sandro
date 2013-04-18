package com.ijinshan.cleaner;

import android.os.Handler;
import android.os.Message;

public final class i extends Thread
{
  public i(CacheCleanerActivity paramCacheCleanerActivity)
  {
  }

  public final void run()
  {
    super.run();
    try
    {
      this.a.d();
      label11: Message localMessage = this.a.h.obtainMessage(6);
      this.a.h.sendMessage(localMessage);
      CacheCleanerActivity.b(this.a, false);
      return;
    }
    catch (Exception localException)
    {
      break label11;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.i
 * JD-Core Version:    0.6.2
 */