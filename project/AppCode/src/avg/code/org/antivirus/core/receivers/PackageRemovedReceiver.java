package org.antivirus.core.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.antivirus.core.AVCoreService;

public class PackageRemovedReceiver extends BroadcastReceiver
{
  public static final String c_extraPackageName = "package_name";
  public static final String c_extraUpdating = "updating";

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().compareTo("android.intent.action.PACKAGE_REMOVED") == 0)
    {
      Intent localIntent = new Intent();
      localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
      localIntent.putExtra("__SAC", 20);
      localIntent.putExtra("package_name", paramIntent.getDataString());
      localIntent.putExtra("updating", paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false));
      paramContext.startService(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.receivers.PackageRemovedReceiver
 * JD-Core Version:    0.6.2
 */