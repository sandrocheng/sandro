package com.antivirus.ui.tablet;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;

class f extends Handler
{
  f(DualPaneActivity paramDualPaneActivity)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    if (this.a.t)
      this.a.a((Intent)paramMessage.obj);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.tablet.f
 * JD-Core Version:    0.6.2
 */