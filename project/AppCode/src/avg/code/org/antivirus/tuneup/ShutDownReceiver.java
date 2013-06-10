package org.antivirus.tuneup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.antivirus.AVService;

public class ShutDownReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, AVService.class);
    localIntent.putExtra("__SAC", 113);
    paramContext.startService(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ShutDownReceiver
 * JD-Core Version:    0.6.2
 */