package org.antivirus.core.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.antivirus.core.AVCoreService;
import org.antivirus.core.Logger;

public class LG extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if (paramIntent.getAction().compareTo("com.antivirus.LG") == 0)
      {
        Intent localIntent = new Intent();
        localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
        localIntent.putExtra("__SAC", 6);
        localIntent.putExtra("__SAD", paramIntent.getStringExtra("__SAD"));
        paramContext.startService(localIntent);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.receivers.LG
 * JD-Core Version:    0.6.2
 */