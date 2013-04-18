package com.ijinshan.kinghelper.firewall.core;

import android.os.Handler;
import android.os.Message;

final class s extends Handler
{
  s(r paramr, u paramu)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    String[] arrayOfString = (String[])paramMessage.obj;
    this.a.a(arrayOfString[0], arrayOfString[1]);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.s
 * JD-Core Version:    0.6.2
 */