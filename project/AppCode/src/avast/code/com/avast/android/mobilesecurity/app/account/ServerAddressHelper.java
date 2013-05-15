package com.avast.android.mobilesecurity.app.account;

import android.content.Context;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.engine.q;
import com.avast.android.mobilesecurity.engine.y;

public class ServerAddressHelper
{
  private static String a(byte[] paramArrayOfByte)
  {
    String str = null;
    if (paramArrayOfByte != null)
    {
      y localy = y.a(paramArrayOfByte);
      str = null;
      if (localy != null)
        str = localy.b + "//" + localy.a + "/" + localy.d;
    }
    return str;
  }

  public static String getPairingServerAddress(Context paramContext)
  {
    return a(i.a(paramContext, null, q.f));
  }

  public static String getStatusServerAddress(Context paramContext)
  {
    return a(i.a(paramContext, null, q.e));
  }

  public static String getUnpairingServerAddress(Context paramContext)
  {
    return a(i.a(paramContext, null, q.h));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.ServerAddressHelper
 * JD-Core Version:    0.6.2
 */