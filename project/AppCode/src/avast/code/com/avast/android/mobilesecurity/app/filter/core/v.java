package com.avast.android.mobilesecurity.app.filter.core;

import com.avast.android.generic.util.m;
import java.lang.reflect.Field;

public final class v
{
  public static final String a;

  static
  {
    try
    {
      String str = (String)Class.forName("android.provider.Telephony$Sms$Conversations").getField("DEFAULT_SORT_ORDER").get(null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.c("Telephony.Sms.Conversations", "Android class not found.", localException);
        a = "date DESC";
      }
    }
    finally
    {
      a = "date DESC";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.v
 * JD-Core Version:    0.6.2
 */