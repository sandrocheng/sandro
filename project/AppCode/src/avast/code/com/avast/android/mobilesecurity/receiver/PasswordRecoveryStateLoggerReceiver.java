package com.avast.android.mobilesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;

public class PasswordRecoveryStateLoggerReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    u localu = u.a(paramContext);
    if (paramIntent.getAction().equals("com.avast.android.generic.app.passwordrecovery.ACTION_PASSWORD_RECOVERY_INITIATED"))
      localu.a(y.A, null, null, null, null, null, null);
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("com.avast.android.generic.app.passwordrecovery.ACTION_PASSWORD_RECOVERY_EXPIRED"))
        localu.a(y.B, null, null, null, null, null, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.PasswordRecoveryStateLoggerReceiver
 * JD-Core Version:    0.6.2
 */