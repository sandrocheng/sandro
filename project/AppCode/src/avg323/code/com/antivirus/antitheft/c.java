package com.antivirus.antitheft;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Message;
import com.antivirus.AVService;
import com.avg.toolkit.b.e;
import com.avg.toolkit.b.g;
import java.util.HashMap;
import java.util.Locale;

public class c extends g
{
  public e a()
  {
    return e.c;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    com.avg.toolkit.UID.a locala = new com.avg.toolkit.UID.a(paramContext);
    HashMap localHashMap = (HashMap)paramObject;
    String str;
    if ((localHashMap.get("Status") != null) && (((String)localHashMap.get("Status")).equalsIgnoreCase("ok")) && (localHashMap.get("IsLocked") != null))
    {
      Locale localLocale = paramContext.getResources().getConfiguration().locale;
      str = ((String)localHashMap.get("IsLocked")).toLowerCase(localLocale);
      if (!str.equals("true"))
        break label183;
      StringBuffer localStringBuffer = new StringBuffer(locala.a());
      if (localStringBuffer.length() == 0)
        throw new IllegalArgumentException("UUID should not be null at this point!");
      com.antivirus.c.h(localStringBuffer.delete(4, localStringBuffer.length()).reverse().toString());
      com.antivirus.c.f(true);
      AVService.a(paramContext, 9000, 9002, null);
      if (localHashMap.get("LostMessage") != null)
        com.antivirus.c.e((String)localHashMap.get("LostMessage"));
    }
    while (true)
    {
      return true;
      label183: if (str.equals("false"))
        com.antivirus.c.f(false);
      else
        com.avg.toolkit.f.a.a();
    }
  }

  public boolean b(Context paramContext)
  {
    return true;
  }

  public int b_()
  {
    return 9002;
  }

  public String c()
  {
    return "Device.getIsLocked";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.c
 * JD-Core Version:    0.6.2
 */