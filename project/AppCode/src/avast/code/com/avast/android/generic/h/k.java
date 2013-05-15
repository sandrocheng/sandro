package com.avast.android.generic.h;

import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.b.aa;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.t;

public class k extends l
{
  public void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    String str1 = paramBundle.getString("number");
    String str2 = paramBundle.getString("text");
    if ((str2 == null) || (str2.equals("")));
    while (true)
    {
      return;
      try
      {
        com.avast.android.generic.b.a locala1 = aa.a(a(), str1, str2);
        a().a(locala1, true);
      }
      catch (com.avast.android.generic.b.a.a locala)
      {
        t.a("AvastGeneric", "Authorization failed (" + str2 + ")", locala);
      }
      catch (Throwable localThrowable)
      {
        t.a("AvastGeneric", "Generic throwable in SMS command handling (" + str2 + ")", localThrowable);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.k
 * JD-Core Version:    0.6.2
 */