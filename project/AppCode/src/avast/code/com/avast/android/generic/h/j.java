package com.avast.android.generic.h;

import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.internet.b;
import com.avast.android.generic.internet.e;
import com.avast.android.generic.service.AvastService;

public class j extends l
{
  public void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    ae localae = (ae)ad.a(a(), ag.class);
    if (localae.u())
    {
      a().a(true);
      e locale = new e(b.a(localae, localae.z()), false);
      locale.a(paramBundle);
      a().a(locale, null, false);
    }
    while (true)
    {
      return;
      a().a(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.j
 * JD-Core Version:    0.6.2
 */