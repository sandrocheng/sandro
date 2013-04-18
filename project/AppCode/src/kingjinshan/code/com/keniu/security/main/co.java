package com.keniu.security.main;

import android.os.Handler;
import android.os.Message;

final class co extends Handler
{
  co(SplashActivity paramSplashActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    SplashActivity.a(this.a);
    paramMessage.obj = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.co
 * JD-Core Version:    0.6.2
 */