package org.antivirus.ui.antitheft;

import android.os.Handler;
import android.os.Message;

final class a extends Handler
{
  a(AntiTheftActivity paramAntiTheftActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    boolean bool = ((Boolean)paramMessage.obj).booleanValue();
    AntiTheftActivity.a(this.a, bool);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.a
 * JD-Core Version:    0.6.2
 */