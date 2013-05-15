package com.avast.android.generic.b;

import com.avast.a.a.a.a.m;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.z;

public class aa extends a
{
  private aa(d paramd, String paramString1, String paramString2)
  {
    super(paramd, null, paramString1, paramString2);
  }

  public static a a(AvastService paramAvastService, String paramString1, String paramString2)
  {
    boolean bool1 = true;
    ae localae = (ae)ad.a(paramAvastService, ag.class);
    boolean bool2 = paramAvastService.j();
    boolean bool3 = paramAvastService.k();
    boolean bool4 = paramAvastService.a(paramString1, paramString2);
    d locald = d.a(paramAvastService, localae, paramString2);
    if (locald.c())
      bool4 = bool1;
    if (bool4)
    {
      if ((bool3) && (bool2))
        break label246;
      if (!locald.c());
    }
    while (true)
    {
      if ((locald.p()) && (bool1))
      {
        throw new com.avast.android.generic.b.a.a();
        throw new com.avast.android.generic.b.a.a();
        throw new com.avast.android.generic.b.a.a();
      }
      locald.b(bool1);
      if ((locald.r()) && (!locald.c()))
        locald.a(paramAvastService.getString(z.aK), m.d);
      String str1;
      String str2;
      String str3;
      if (locald.c())
      {
        str1 = locald.b();
        str2 = localae.I();
        if (!(locald instanceof w))
          break label239;
        str3 = ((w)locald).B();
        if (str3 == null)
          break label239;
      }
      while (true)
      {
        u localu = new u(locald, str1, str3, paramString2);
        localu.c(false);
        for (Object localObject = localu; ; localObject = new aa(locald, paramString1, paramString2))
          return localObject;
        label239: str3 = str2;
      }
      label246: bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.aa
 * JD-Core Version:    0.6.2
 */