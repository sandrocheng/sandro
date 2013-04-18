package com.jxphone.mosecurity.logic;

import android.content.Context;
import com.jxphone.mosecurity.c.j;
import com.keniu.security.b.e;
import com.keniu.security.b.g;
import com.keniu.security.b.o;
import com.keniu.security.b.u;
import java.util.HashMap;

final class d extends Thread
{
  private final String b;
  private final com.jxphone.mosecurity.logic.a.a c;
  private final Context d;

  private d(a parama, Context paramContext, String paramString, com.jxphone.mosecurity.logic.a.a parama1, byte paramByte)
  {
    this.d = paramContext;
    this.b = paramString;
    this.c = parama1;
  }

  public final void run()
  {
    o localo = e.c(this.d);
    u localu = e.f(this.d);
    g localg = e.a(this.d, a.a(this.a));
    com.keniu.security.b.l locall = e.b(this.d, a.a(this.a));
    com.jxphone.mosecurity.b.a.a locala1 = localg.c(this.b);
    com.jxphone.mosecurity.b.a.a locala2 = locall.b(this.b);
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("size", Integer.valueOf(locala1.b() + locala2.b()));
    this.c.a(localHashMap);
    while (true)
    {
      try
      {
        if (locala1.hasNext())
        {
          boolean bool2 = this.c.c();
          if (bool2)
            return;
          localo.a((j)locala1.next());
          this.c.b();
          continue;
        }
      }
      finally
      {
        this.c.a();
        locala1.c();
        locala2.c();
      }
      localg.b(this.b);
      while (true)
      {
        if (!locala2.hasNext())
          break label335;
        boolean bool1 = this.c.c();
        if (bool1)
        {
          this.c.a();
          locala1.c();
          locala2.c();
          break;
        }
        com.jxphone.mosecurity.c.l locall1 = (com.jxphone.mosecurity.c.l)locala2.next();
        localu.a(locall1);
        locall.b(locall1.a());
        this.c.b();
      }
      label335: this.c.a();
      locala1.c();
      locala2.c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.d
 * JD-Core Version:    0.6.2
 */