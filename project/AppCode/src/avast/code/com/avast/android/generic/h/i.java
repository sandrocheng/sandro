package com.avast.android.generic.h;

import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.b.a;
import com.avast.android.generic.b.ab;
import com.avast.android.generic.internet.b;
import com.avast.android.generic.internet.j;
import com.avast.android.generic.service.AvastService;

public class i extends l
{
  public void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    ae localae1 = (ae)ad.a(paramContext, ag.class);
    ae localae2 = (ae)ad.a(paramContext, ah.class);
    if (!localae1.u());
    while (true)
    {
      return;
      String str1 = paramBundle.getString("registration");
      localae2.a(paramContext, str1);
      localae2.b();
      String str2 = localae1.I();
      a locala = ab.a(a(), "-1", str2, j.a(a(), localae1, str1), b.b(localae1, str1));
      locala.a(true);
      locala.c(true);
      a().a(locala, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.i
 * JD-Core Version:    0.6.2
 */