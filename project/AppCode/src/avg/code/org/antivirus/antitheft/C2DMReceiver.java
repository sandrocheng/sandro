package org.antivirus.antitheft;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.text.TextUtils;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.core.Logger;

public class C2DMReceiver extends BroadcastReceiver
{
  public static void a(Context paramContext)
  {
    try
    {
      if ((Integer.parseInt(Build.VERSION.SDK) >= 8) && (TextUtils.isEmpty(AVSettings.getC2dmToken())))
      {
        Intent localIntent = new Intent("com.google.android.c2dm.intent.REGISTER");
        localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
        localIntent.putExtra("sender", "c2dm@droidsecurity.com");
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

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      boolean bool1 = paramIntent.getAction().equals("com.google.android.c2dm.intent.REGISTRATION");
      if (bool1)
        try
        {
          String str = paramIntent.getStringExtra("registration_id");
          if ((paramIntent.getStringExtra("error") == null) && (paramIntent.getStringExtra("unregistered") == null) && (str != null))
          {
            Intent localIntent2 = new Intent(paramContext, AVService.class);
            localIntent2.putExtra("__SAC", 7);
            localIntent2.putExtra("__SAD", 1035);
            localIntent2.putExtra("registration_id", str);
            paramContext.startService(localIntent2);
          }
          return;
        }
        catch (Exception localException3)
        {
          while (true)
            Logger.log(localException3);
        }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        Logger.log(localException1);
        continue;
        boolean bool2 = paramIntent.getAction().equals("com.google.android.c2dm.intent.RECEIVE");
        if (bool2)
          try
          {
            Intent localIntent1 = new Intent(paramContext, AVService.class);
            localIntent1.putExtras(paramIntent);
            localIntent1.putExtra("__SAC", 100);
            paramContext.startService(localIntent1);
          }
          catch (Exception localException2)
          {
            Logger.log(localException2);
          }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.C2DMReceiver
 * JD-Core Version:    0.6.2
 */