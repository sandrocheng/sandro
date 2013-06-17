package com.antivirus.ui.antitheft;

import android.os.Handler;
import android.os.Message;

class s extends Handler
{
  s(r paramr)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    boolean bool = ((Boolean)paramMessage.obj).booleanValue();
    this.a.b(bool);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.s
 * JD-Core Version:    0.6.2
 */