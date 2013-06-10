package org.antivirus.core.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.antivirus.core.AVCoreService;

public class BootReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
    localIntent.putExtra("__SAC", 2);
    paramContext.startService(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.receivers.BootReceiver
 * JD-Core Version:    0.6.2
 */