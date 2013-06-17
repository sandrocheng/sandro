package com.antivirus.ui.antitheft;

import android.os.Handler;
import android.os.Message;

class t extends Handler
{
  t(r paramr)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    boolean bool = ((Boolean)paramMessage.obj).booleanValue();
    this.a.a(bool);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.t
 * JD-Core Version:    0.6.2
 */