package com.avast.android.generic.h;

import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.t;

public class a extends l
{
  public void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    t.a(paramContext, "Account connected task");
    ae localae1 = (ae)ad.a(a(), ag.class);
    ae localae2 = (ae)ad.a(a(), ah.class);
    localae2.P();
    localae1.P();
    localae2.a("accountReset", true);
    localae2.b();
    a().f();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.a
 * JD-Core Version:    0.6.2
 */