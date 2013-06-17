package com.antivirus.e;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;

public abstract class h extends Handler
{
  protected abstract void a();

  protected abstract void a(int paramInt1, int paramInt2);

  protected abstract void a(Intent paramIntent);

  protected abstract void b();

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      a(paramMessage.arg1, paramMessage.arg2);
      continue;
      a();
      continue;
      a((Intent)paramMessage.obj);
      continue;
      b();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.e.h
 * JD-Core Version:    0.6.2
 */