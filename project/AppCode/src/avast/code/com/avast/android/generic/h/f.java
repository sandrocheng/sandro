package com.avast.android.generic.h;

import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.b.u;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.t;

public class f extends l
{
  public void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    String str = paramBundle.getString("message");
    try
    {
      com.avast.android.generic.b.a locala1 = u.a(a(), str);
      a().a(locala1, true);
      return;
    }
    catch (com.avast.android.generic.b.a.a locala)
    {
      while (true)
        t.a("AvastGeneric", paramContext, "Authorization failed", locala);
    }
    catch (Throwable localThrowable)
    {
      while (true)
        t.a("AvastGeneric", paramContext, "Generic throwable in internet command handling", localThrowable);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.f
 * JD-Core Version:    0.6.2
 */