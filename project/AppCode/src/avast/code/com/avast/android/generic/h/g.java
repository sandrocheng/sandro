package com.avast.android.generic.h;

import android.content.Context;
import android.os.Bundle;
import com.avast.a.a.a.a.m;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.b.a;
import com.avast.android.generic.b.s;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.z;

public class g extends l
{
  public void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    ae localae1 = (ae)ad.a(paramContext, ag.class);
    ae localae2 = (ae)ad.a(paramContext, ah.class);
    localae2.E();
    localae2.b();
    if (!localae1.u());
    while (true)
    {
      return;
      String str = localae1.I();
      a locala = s.a(a(), "-1", str, paramContext.getString(z.x), m.R);
      locala.a(true);
      locala.c(true);
      a().a(locala, false);
      com.avast.android.generic.util.g.b(a());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.g
 * JD-Core Version:    0.6.2
 */