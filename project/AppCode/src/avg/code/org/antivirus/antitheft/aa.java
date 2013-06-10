package org.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import org.antivirus.AVService;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.telephony.TelephonyInfo;

final class aa
  implements Runnable
{
  aa(z paramz)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(120000L);
      if (!this.a.c)
      {
        z localz = this.a;
        if (TextUtils.isEmpty(localz.d.getSimID()))
        {
          TelephonyInfo localTelephonyInfo = new TelephonyInfo(localz.a);
          localTelephonyInfo.grabLineAndSimNumbers(localz.a);
          String str1 = localTelephonyInfo.getSimNumber();
          if (str1 == null)
            str1 = "";
          localz.d.setSimID(str1);
          String str2 = localTelephonyInfo.getLine1Number();
          if (str2 == null)
            str2 = "";
          localz.d.setLine1Number(str2);
        }
        else
        {
          String str3 = ((TelephonyManager)localz.a.getSystemService("phone")).getSimSerialNumber();
          String str4 = localz.d.getSimID();
          if ((str3 != null) && (str4 != null) && (str3.length() > 0) && (str4.length() > 0) && (!str3.equals(str4)))
          {
            localz.d.setSimID(str3);
            Intent localIntent = new Intent(localz.a, AVService.class);
            localIntent.putExtra("__SAC", 7);
            localIntent.putExtra("__SAD", 1036);
            localz.a.startService(localIntent);
          }
        }
      }
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.aa
 * JD-Core Version:    0.6.2
 */