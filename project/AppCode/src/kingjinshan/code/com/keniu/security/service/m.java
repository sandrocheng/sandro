package com.keniu.security.service;

import android.os.Handler;
import android.os.Message;
import com.keniu.security.protection.l;
import java.io.PrintStream;

final class m extends Handler
{
  m(StartupReceiver paramStartupReceiver)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 0)
    {
      System.out.println("location send message");
      new l(StartupReceiver.a(this.a), paramMessage.obj.toString(), "huanka").a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.m
 * JD-Core Version:    0.6.2
 */