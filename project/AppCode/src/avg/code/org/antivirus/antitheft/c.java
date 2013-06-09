package org.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import java.util.HashMap;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;
import org.antivirus.core.telephony.TelephonyInfo;

public class c extends v
{
  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    HashMap localHashMap = (HashMap)paramObject;
    String str;
    if ((localHashMap.get("Status") != null) && (((String)localHashMap.get("Status")).equalsIgnoreCase("ok")) && (localHashMap.get("IsLocked") != null))
    {
      str = ((String)localHashMap.get("IsLocked")).toLowerCase();
      if (!str.equals("true"))
        break label157;
      StringBuffer localStringBuffer = new StringBuffer(TelephonyInfo.getUniqueId(paramContext, this.i));
      AVSettings.setPremPass(localStringBuffer.delete(4, localStringBuffer.length()).reverse().toString());
      AVSettings.setPermLock(true);
      Intent localIntent = new Intent(paramContext, AVService.class);
      localIntent.putExtra("__SAC", 103);
      paramContext.startService(localIntent);
      if (localHashMap.get("LostMessage") != null)
        AVSettings.setLostMsg((String)localHashMap.get("LostMessage"));
    }
    while (true)
    {
      return true;
      label157: if (str.equals("false"))
        AVSettings.setPermLock(false);
      else
        Logger.errorBadAgrument();
    }
  }

  public final q b()
  {
    return q.c;
  }

  public final int c()
  {
    return 1031;
  }

  public final String d()
  {
    return "Device.getIsLocked";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.c
 * JD-Core Version:    0.6.2
 */