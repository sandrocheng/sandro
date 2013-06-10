package org.antivirus.ganalytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import org.antivirus.AVService;
import org.antivirus.core.Logger;

public class AnalyticsReferrerReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().compareTo("com.android.vending.INSTALL_REFERRER") == 0)
      try
      {
        Intent localIntent = new Intent(paramContext, AVService.class);
        Bundle localBundle = paramIntent.getExtras();
        if (localBundle != null)
        {
          localIntent.putExtra("__SAC", 102);
          localIntent.putExtra("referrer", localBundle.getString("referrer"));
          paramContext.startService(localIntent);
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ganalytics.AnalyticsReferrerReceiver
 * JD-Core Version:    0.6.2
 */