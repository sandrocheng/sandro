package com.avast.android.generic.b;

import com.avast.a.a.a.a.m;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.z;

public class u extends a
{
  public u(d paramd, String paramString1, String paramString2, String paramString3)
  {
    super(paramd, paramString1, paramString2, paramString3);
  }

  public static a a(AvastService paramAvastService, String paramString)
  {
    boolean bool1 = true;
    ae localae = (ae)ad.a(paramAvastService, ag.class);
    boolean bool2 = paramAvastService.j();
    if (!localae.u())
      throw new com.avast.android.generic.b.a.a();
    d locald = d.a(paramAvastService, localae, paramString);
    locald.a(bool1);
    String str1 = locald.b();
    if (!bool2);
    while ((locald.p()) && (bool1))
    {
      throw new com.avast.android.generic.b.a.a();
      bool1 = false;
    }
    locald.b(bool1);
    if (locald.q())
      locald.a(paramAvastService.getString(z.aK), m.d);
    String str2 = localae.I();
    String str3;
    if ((locald instanceof w))
    {
      str3 = ((w)locald).B();
      if (str3 == null);
    }
    while (true)
    {
      u localu = new u(locald, str1, str3, paramString);
      localu.c(false);
      return localu;
      str3 = str2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.u
 * JD-Core Version:    0.6.2
 */