package com.jxphone.mosecurity.logic;

import android.content.Context;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.j;
import com.keniu.security.b.e;
import com.keniu.security.b.g;
import com.keniu.security.b.o;
import com.keniu.security.b.u;
import java.util.HashMap;

final class c extends Thread
{
  private final b b;
  private final com.jxphone.mosecurity.logic.a.a c;
  private final Context d;

  private c(a parama, Context paramContext, b paramb, com.jxphone.mosecurity.logic.a.a parama1, byte paramByte)
  {
    this.d = paramContext;
    this.b = paramb;
    this.c = parama1;
  }

  public final void run()
  {
    o localo = e.c(this.d);
    u localu = e.f(this.d);
    g localg = e.a(this.d, a.a(this.a));
    com.keniu.security.b.l locall = e.b(this.d, a.a(this.a));
    String str = this.b.d();
    com.jxphone.mosecurity.b.a.a locala1 = localo.b(str);
    com.jxphone.mosecurity.b.a.a locala2 = localu.b(str);
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
          j localj = (j)locala1.next();
          localj.a(this.b.e());
          localg.a(localj);
          this.c.b();
          continue;
        }
      }
      catch (Exception localException)
      {
        this.c.a();
        locala1.c();
        locala2.c();
        continue;
        localo.a(str);
        if (locala2.hasNext())
        {
          boolean bool1 = this.c.c();
          if (bool1)
          {
            this.c.a();
            locala1.c();
            locala2.c();
            continue;
          }
          com.jxphone.mosecurity.c.l locall1 = (com.jxphone.mosecurity.c.l)locala2.next();
          locall1.a(this.b.e());
          locall.a(locall1);
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
      localu.a(str);
      this.c.a();
      locala1.c();
      locala2.c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.c
 * JD-Core Version:    0.6.2
 */