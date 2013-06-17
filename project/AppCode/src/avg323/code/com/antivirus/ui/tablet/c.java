package com.antivirus.ui.tablet;

import android.content.Context;
import android.content.Intent;
import com.antivirus.core.scanners.h;
import com.antivirus.m;
import com.avg.tuneup.j;
import com.avg.tuneup.traffic.s;

public class c
{
  public static int a = -1;
  public static int b = -1;
  public static int c = -1;
  public static int d = -1;
  public static int e = -1;
  private Context f;
  private b[] g;

  public c(Context paramContext)
  {
    this.f = paramContext;
    this.g = new b[e];
    if (c != -1)
      this.g[c] = new b(m.a(paramContext, 2131296489));
    if (a != -1)
      this.g[a] = new b(m.a(paramContext, 2131296783));
    if (b != -1)
      this.g[b] = new b(m.a(paramContext, 2131296454));
    if (d != -1)
      this.g[d] = new b(m.a(paramContext, 2131296784));
  }

  public static e a(h paramh)
  {
    e locale;
    if (paramh == null)
      locale = e.a;
    while (true)
    {
      return locale;
      long l = paramh.b;
      boolean bool = paramh.d();
      if (bool)
        locale = e.c;
      else if ((!bool) && (0L == l))
        locale = e.a;
      else if ((!bool) && (0L < l))
        locale = e.b;
      else
        locale = e.a;
    }
  }

  public String a(int paramInt)
  {
    return this.g[paramInt].a();
  }

  public void a()
  {
    String str = com.antivirus.c.a(this.f);
    if ((str != null) && (!"".equals(str)))
      this.g[c].a(this.g[c].a(), "", 0);
    while (true)
    {
      return;
      this.g[c].a(this.g[c].a(), m.a(this.f, 2131296805), -1);
    }
  }

  public void a(Intent paramIntent)
  {
    boolean bool = s.e();
    int i1;
    if (paramIntent != null)
    {
      int m = paramIntent.getIntExtra("level", 0);
      int n = paramIntent.getIntExtra("status", 0);
      if ((j.n()) && (m <= j.o()) && (n != 2))
        i1 = 1;
    }
    for (int i = i1; ; i = 0)
    {
      double[] arrayOfDouble;
      int j;
      int k;
      if (bool)
      {
        arrayOfDouble = s.a(this.f).a(bool);
        if (arrayOfDouble != null)
          if (arrayOfDouble[0] >= 100.0D)
          {
            j = 1;
            k = 1;
          }
      }
      while (true)
      {
        label91: if ((i != 0) && (k != 0))
          this.g[b].a(this.g[b].a(), m.a(this.f, 2131296804), -1);
        while (true)
        {
          return;
          i1 = 0;
          break;
          if ((!com.antivirus.c.g()) || (arrayOfDouble[0] < com.antivirus.c.h()))
            break label315;
          k = 1;
          j = 0;
          break label91;
          if (i != 0)
            this.g[b].a(this.g[b].a(), m.a(this.f, 2131296802), -1);
          else if (k != 0)
          {
            if (j != 0)
              this.g[b].a(this.g[b].a(), m.a(this.f, 2131296803), 0, -1);
            else
              this.g[b].a(this.g[b].a(), m.a(this.f, 2131296803), 1, -1);
          }
          else
            this.g[b].a(this.g[b].a(), "", 0);
        }
        label315: j = 0;
        k = 0;
      }
    }
  }

  public void a(Intent paramIntent, h paramh)
  {
    if (c != -1)
      a();
    if (a != -1)
      a(a(paramh));
    if (b != -1)
      a(paramIntent);
    if (d != -1)
      b();
  }

  public void a(e parame)
  {
    switch (d.a[parame.ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a("Can't handle: " + parame);
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      this.g[a].a(this.g[a].a(), m.a(this.f, 2131296795), -1);
      continue;
      this.g[a].a(this.g[a].a(), "", 0);
      continue;
      this.g[a].a(this.g[a].a(), "", 1);
      continue;
      this.g[a].a(this.g[a].a(), m.a(this.f, 2131296322), -1);
    }
  }

  public String b(int paramInt)
  {
    return this.g[paramInt].b();
  }

  public void b()
  {
    com.antivirus.applocker.c localc = new com.antivirus.applocker.c();
    if ((com.antivirus.c.q()) && (localc.e(this.f)) && (com.avg.toolkit.e.e.a().d == com.avg.toolkit.e.c.c))
      this.g[d].a(this.g[d].a(), m.a(this.f, 2131296806), -1);
    while (true)
    {
      return;
      this.g[d].a(this.g[d].a(), "", 0);
    }
  }

  public int c(int paramInt)
  {
    return this.g[paramInt].c();
  }

  public int d(int paramInt)
  {
    return this.g[paramInt].d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.tablet.c
 * JD-Core Version:    0.6.2
 */