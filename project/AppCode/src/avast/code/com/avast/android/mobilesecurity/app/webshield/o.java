package com.avast.android.mobilesecurity.app.webshield;

import android.database.ContentObserver;
import android.os.Handler;
import android.os.Message;

class o extends ContentObserver
{
  private final n b;

  public o(WebshieldService paramWebshieldService, Handler paramHandler, n paramn)
  {
    super(paramHandler);
    this.b = paramn;
  }

  public boolean deliverSelfNotifications()
  {
    return true;
  }

  public void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    if (paramBoolean);
    while (true)
    {
      return;
      Message localMessage = new Message();
      localMessage.obj = this.b;
      WebshieldService.c(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.o
 * JD-Core Version:    0.6.2
 */