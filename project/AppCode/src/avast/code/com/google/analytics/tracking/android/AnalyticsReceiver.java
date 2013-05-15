package com.google.analytics.tracking.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class AnalyticsReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("referrer");
    if ((!"com.android.vending.INSTALL_REFERRER".equals(paramIntent.getAction())) || (str == null));
    while (true)
    {
      return;
      try
      {
        FileOutputStream localFileOutputStream = paramContext.openFileOutput("gaInstallData", 0);
        localFileOutputStream.write(str.getBytes());
        localFileOutputStream.close();
      }
      catch (IOException localIOException)
      {
        ay.c("Error storing install campaign.");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.AnalyticsReceiver
 * JD-Core Version:    0.6.2
 */