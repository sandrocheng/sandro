package com.avast.android.mobilesecurity.app.filter.core;

import android.net.Uri;
import android.provider.BaseColumns;
import com.avast.android.generic.util.m;
import java.lang.reflect.Field;

public final class t
  implements BaseColumns
{
  public static final Uri a;
  private static final Uri b = Uri.parse("content://mms-sms/");

  static
  {
    Uri localUri1 = b;
    try
    {
      Uri localUri2 = (Uri)Class.forName("android.provider.Telephony$MmsSms").getField("CONTENT_URI").get(null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.c("Telephony.MmsSms", "Android class not found.", localException);
        a = localUri1;
      }
    }
    finally
    {
      a = localUri1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.t
 * JD-Core Version:    0.6.2
 */