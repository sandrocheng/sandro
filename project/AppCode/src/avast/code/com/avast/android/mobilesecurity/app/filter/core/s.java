package com.avast.android.mobilesecurity.app.filter.core;

import android.provider.BaseColumns;
import com.avast.android.generic.util.m;
import java.lang.reflect.Field;

public final class s
  implements BaseColumns
{
  public static final String a;

  static
  {
    try
    {
      String str = (String)Class.forName("android.provider.Telephony$CanonicalAddressesColumns").getField("ADDRESS").get(null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.c("Telephony.CanonicalAddressesColumns", "Android class not found.", localException);
        a = "address";
      }
    }
    finally
    {
      a = "address";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.s
 * JD-Core Version:    0.6.2
 */