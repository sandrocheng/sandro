package com.avast.android.mobilesecurity.app.filter.core;

import android.net.Uri;
import com.avast.android.generic.util.m;
import java.lang.reflect.Field;

public final class y extends z
{
  public static final Uri a;
  private static final Uri k = Uri.withAppendedPath(t.a, "conversations");

  static
  {
    Uri localUri1 = k;
    try
    {
      Uri localUri2 = (Uri)Class.forName("android.provider.Telephony$Threads").getField("CONTENT_URI").get(null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.c("Telephony.Threads", "Android class not found.", localException);
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
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.y
 * JD-Core Version:    0.6.2
 */