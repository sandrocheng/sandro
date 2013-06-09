package org.antivirus.license.qrreader.general;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class InactivityTimer$PowerStatusReceiver extends BroadcastReceiver
{
  private InactivityTimer$PowerStatusReceiver(InactivityTimer paramInactivityTimer)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction())) && (paramIntent.getIntExtra("plugged", -1) > 0))
      InactivityTimer.access$200(this.this$0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.InactivityTimer.PowerStatusReceiver
 * JD-Core Version:    0.6.2
 */