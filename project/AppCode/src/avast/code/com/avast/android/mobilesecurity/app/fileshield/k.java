package com.avast.android.mobilesecurity.app.fileshield;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.Semaphore;

class k extends Handler
{
  k(j paramj, Looper paramLooper, FileShieldService paramFileShieldService)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    j.a(this.b).release();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.k
 * JD-Core Version:    0.6.2
 */