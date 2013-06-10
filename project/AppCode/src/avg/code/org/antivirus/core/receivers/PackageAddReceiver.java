package org.antivirus.core.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.antivirus.core.AVCoreService;
import org.antivirus.core.Logger;

public class PackageAddReceiver extends BroadcastReceiver
{
  public static final String c_extraUpdating = "updating";

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().compareTo("android.intent.action.PACKAGE_ADDED") == 0);
    try
    {
      Intent localIntent = new Intent();
      localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
      localIntent.putExtra("__SAC", 23);
      localIntent.putExtra("package", paramIntent.getDataString());
      localIntent.putExtra("updating", paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false));
      paramContext.startService(localIntent);
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
 * Qualified Name:     org.antivirus.core.receivers.PackageAddReceiver
 * JD-Core Version:    0.6.2
 */