package org.antivirus.tuneup;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;

final class v extends Handler
{
  v(BatteryStateActivity paramBatteryStateActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    BatteryStateActivity.a(this.a, (Intent)paramMessage.obj);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.v
 * JD-Core Version:    0.6.2
 */