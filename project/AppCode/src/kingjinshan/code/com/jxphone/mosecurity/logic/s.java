package com.jxphone.mosecurity.logic;

import android.content.Context;
import android.util.Log;
import com.ijinshan.kinghelper.a.i;
import com.jxphone.mosecurity.d.f;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.a.m;
import com.keniu.security.a;
import java.util.Iterator;
import java.util.LinkedHashSet;

final class s
  implements j
{
  private static final LinkedHashSet a = new LinkedHashSet(4);
  private final Context b;
  private final boolean c;
  private int d;

  public s(Context paramContext)
  {
    this(paramContext, false);
  }

  public s(Context paramContext, boolean paramBoolean)
  {
    this.b = paramContext;
    this.c = paramBoolean;
    this.d = 0;
  }

  private static void a(com.jxphone.mosecurity.c.l paraml, com.keniu.security.e.d paramd)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
      ((com.keniu.security.e.c)localIterator.next()).a(paraml, paramd);
  }

  public final int a(String paramString)
  {
    int i = com.keniu.security.b.e.b(this.b, this.c).a(paramString);
    if (i > 0)
    {
      com.jxphone.mosecurity.c.l locall = new com.jxphone.mosecurity.c.l();
      locall.a(paramString);
      a(locall, com.keniu.security.e.d.b);
    }
    return i;
  }

  public final int a(String paramString, com.jxphone.mosecurity.c.c paramc)
  {
    int i = com.keniu.security.b.e.b(this.b, this.c).c(paramString, paramc);
    if (i > 0)
    {
      com.jxphone.mosecurity.c.l locall = new com.jxphone.mosecurity.c.l();
      locall.a(paramString);
      a(locall, com.keniu.security.e.d.b);
    }
    return i;
  }

  public final int a(com.jxphone.mosecurity.c.c[] paramArrayOfc)
  {
    int i = com.keniu.security.b.e.b(this.b, this.c).b(paramArrayOfc);
    if (i > 0)
      a(null, com.keniu.security.e.d.b);
    return i;
  }

  public final com.jxphone.mosecurity.c.l a(int paramInt)
  {
    return com.keniu.security.b.e.b(this.b).a(paramInt);
  }

  public final void a(com.keniu.security.e.c paramc)
  {
    a.add(paramc);
  }

  public final void a(String paramString1, String paramString2)
  {
    com.jxphone.mosecurity.c.l locall = new com.jxphone.mosecurity.c.l();
    locall.a(paramString1);
    locall.a(System.currentTimeMillis());
    locall.a(com.jxphone.mosecurity.c.c.b);
    locall.b(paramString2);
    locall.b(2);
    locall.c(0);
    int i = b(locall);
    com.jxphone.mosecurity.d.u.a().a(this.b, i, paramString1, paramString2, this.c);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    com.keniu.security.b.l locall = com.keniu.security.b.e.b(this.b, this.c);
    boolean bool = false;
    switch (paramInt3)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      if (bool)
        a(locall.a(paramInt1), com.keniu.security.e.d.c);
      return bool;
      if (paramInt2 == -1);
      for (int i = 1; ; i = -1)
      {
        bool = locall.a(paramInt1, i);
        break;
      }
      bool = false;
      if (paramInt2 == -1)
        bool = locall.a(paramInt1, 2);
    }
  }

  public final boolean a(int paramInt, com.jxphone.mosecurity.c.c paramc)
  {
    return com.keniu.security.b.e.b(this.b, this.c).a(paramInt, paramc);
  }

  public final boolean a(com.jxphone.mosecurity.c.l paraml)
  {
    com.keniu.security.b.u localu = com.keniu.security.b.e.f(this.b);
    boolean bool;
    if ((paraml == null) || (paraml.b() == null) || (paraml.b().length() == 0))
      bool = false;
    while (true)
    {
      return bool;
      if ((f.a != null) && (f.a.equals(paraml.b())))
      {
        f.a = null;
        bool = false;
      }
      else
      {
        a locala = a.a(this.b);
        com.jxphone.mosecurity.c.b localb = h.c(this.b).a(paraml.b());
        if (paraml.f() == 4)
          paraml.b(2);
        if (localb == null)
        {
          paraml.f();
          bool = false;
        }
        else
        {
          switch (t.a[localb.e().ordinal()])
          {
          default:
          case 1:
            do
            {
              paraml.a(localb.e());
              long l = Math.max(localb.h(), com.keniu.security.e.a);
              bool = localu.a(paraml.i(), l);
              if (this.d == 0)
                break label240;
              this.d -= 1;
              if (paraml.f() != 1)
                break label240;
              bool = false;
              break;
            }
            while (locala.af() != 3);
            bool = false;
            break;
          case 2:
          case 3:
            bool = false;
            continue;
            label240: if (bool)
            {
              int i = paraml.a();
              com.jxphone.mosecurity.c.c localc = paraml.e();
              if (!com.keniu.security.b.e.b(this.b, this.c).a(i, localc))
                b(paraml);
            }
            break;
          }
        }
      }
    }
  }

  public final com.jxphone.mosecurity.c.l[] a(com.jxphone.mosecurity.c.b paramb)
  {
    if (paramb == null);
    for (com.jxphone.mosecurity.c.l[] arrayOfl = new com.jxphone.mosecurity.c.l[0]; ; arrayOfl = com.keniu.security.b.e.b(this.b, this.c).b(paramb.c(), paramb.e()))
      return arrayOfl;
  }

  public final com.jxphone.mosecurity.c.l[] a(com.jxphone.mosecurity.c.c paramc)
  {
    return com.keniu.security.b.e.b(this.b, this.c).a(paramc);
  }

  public final com.jxphone.mosecurity.c.l[] a(String paramString, com.jxphone.mosecurity.c.c paramc, boolean paramBoolean)
  {
    return com.keniu.security.b.e.b(this.b, this.c).a(paramString, paramc, paramBoolean);
  }

  public final int b(com.jxphone.mosecurity.c.l paraml)
  {
    int i = (int)com.keniu.security.b.e.b(this.b, this.c).a(paraml);
    if (i >= 0);
    try
    {
      paraml.a(i);
      a(paraml, com.keniu.security.e.d.a);
      return i;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Log.e("Logic-Exception", localException.toString());
        i = -2;
      }
    }
  }

  public final int b(String paramString, com.jxphone.mosecurity.c.c paramc)
  {
    int i = com.keniu.security.b.e.b(this.b, this.c).d(paramString, paramc);
    if (i > 0)
    {
      com.jxphone.mosecurity.c.l locall = new com.jxphone.mosecurity.c.l();
      locall.a(paramString);
      a(locall, com.keniu.security.e.d.b);
    }
    return i;
  }

  public final com.jxphone.mosecurity.c.l b(String paramString)
  {
    com.keniu.security.b.l locall = com.keniu.security.b.e.b(this.b, this.c);
    com.jxphone.mosecurity.c.l locall1 = locall.a();
    com.jxphone.mosecurity.c.l locall2;
    if (locall1 == null)
    {
      locall2 = new com.jxphone.mosecurity.c.l();
      locall2.a(paramString);
      locall2.a(com.jxphone.mosecurity.c.c.b);
      locall2.b(3);
      locall2.a((int)locall.a(locall2));
    }
    for (com.jxphone.mosecurity.c.l locall3 = locall2; ; locall3 = locall1)
      return locall3;
  }

  public final void b(com.keniu.security.e.c paramc)
  {
    a.remove(paramc);
  }

  public final boolean b(int paramInt)
  {
    boolean bool = com.keniu.security.b.e.b(this.b, this.c).b(paramInt);
    if (bool)
    {
      com.jxphone.mosecurity.c.l locall = new com.jxphone.mosecurity.c.l();
      locall.a(paramInt);
      a(locall, com.keniu.security.e.d.b);
    }
    return bool;
  }

  public final com.jxphone.mosecurity.c.l[] b()
  {
    com.keniu.security.b.l locall = com.keniu.security.b.e.b(this.b, this.c);
    com.jxphone.mosecurity.c.c[] arrayOfc = new com.jxphone.mosecurity.c.c[2];
    arrayOfc[0] = com.jxphone.mosecurity.c.c.c;
    arrayOfc[1] = com.jxphone.mosecurity.c.c.d;
    return locall.a(arrayOfc);
  }

  public final boolean c(com.jxphone.mosecurity.c.l paraml)
  {
    boolean bool = com.keniu.security.b.e.b(this.b, this.c).b(paraml);
    if (bool)
      a(paraml, com.keniu.security.e.d.c);
    return bool;
  }

  public final boolean c(String paramString, com.jxphone.mosecurity.c.c paramc)
  {
    String str = i.b(paramString);
    if (com.keniu.security.b.e.b(this.b, this.c).e(str, paramc) > 0);
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
        a(null, com.keniu.security.e.d.c);
      return bool;
    }
  }

  public final boolean d(com.jxphone.mosecurity.c.l paraml)
  {
    if (com.keniu.security.b.e.b(this.b, this.c).b(paraml.a()))
    {
      com.jxphone.mosecurity.c.b localb = com.keniu.security.b.e.c(this.b, this.c).a(paraml.b(), false);
      if ((localb != null) && (localb.e().ordinal() != com.jxphone.mosecurity.c.c.e.ordinal()))
      {
        localb.b(System.currentTimeMillis());
        com.keniu.security.b.e.c(this.b, this.c).b(localb);
      }
      a(paraml, com.keniu.security.e.d.b);
    }
    for (boolean bool = com.keniu.security.b.e.f(this.b).a(paraml); ; bool = false)
      return bool;
  }

  public final boolean e(com.jxphone.mosecurity.c.l paraml)
  {
    if (com.keniu.security.b.e.b(this.b, this.c).b(paraml.a()))
    {
      com.jxphone.mosecurity.c.b localb = com.keniu.security.b.e.c(this.b, this.c).a(paraml.b(), false);
      if ((localb != null) && (localb.e().ordinal() != com.jxphone.mosecurity.c.c.e.ordinal()))
      {
        localb.b(System.currentTimeMillis());
        com.keniu.security.b.e.c(this.b, this.c).b(localb);
      }
      a(paraml, com.keniu.security.e.d.b);
    }
    for (boolean bool = com.keniu.security.b.e.f(this.b).a(paraml); ; bool = false)
      return bool;
  }

  public final boolean f(com.jxphone.mosecurity.c.l paraml)
  {
    if (b(paraml.a()))
    {
      f.a = paraml.b();
      h.f(this.b).a(paraml);
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean g(com.jxphone.mosecurity.c.l paraml)
  {
    return com.keniu.security.b.e.b(this.b, this.c).a(paraml, paraml.e());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.s
 * JD-Core Version:    0.6.2
 */