package org.antivirus.antitheft;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.antivirus.AVService;
import org.antivirus.AVSettings;

final class r extends BroadcastReceiver
{
  r(q paramq)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((AVSettings.getPermLock()) && (paramIntent != null) && (paramIntent.getAction() != null) && (paramIntent.getAction().equalsIgnoreCase("android.intent.action.SCREEN_ON")))
    {
      Intent localIntent = new Intent(paramContext, AVService.class);
      localIntent.putExtra("__SAC", 103);
      paramContext.startService(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.r
 * JD-Core Version:    0.6.2
 */