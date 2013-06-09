package org.antivirus.ui.main;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;

final class h extends Handler
{
  h(AntivirusMainScreen paramAntivirusMainScreen)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    AntivirusMainScreen.a(this.a, (Intent)paramMessage.obj);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.h
 * JD-Core Version:    0.6.2
 */