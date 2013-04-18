package com.jxphone.mosecurity.logic;

import android.content.Context;
import com.ijinshan.kinghelper.a.i;
import com.keniu.security.b.e;
import com.keniu.security.b.g;
import java.util.Iterator;
import java.util.LinkedHashSet;

final class a
  implements com.jxphone.mosecurity.logic.a.d
{
  private static final LinkedHashSet a = new LinkedHashSet(4);
  private Context b;
  private final boolean c;

  public a(Context paramContext)
  {
    this(paramContext, false);
  }

  public a(Context paramContext, boolean paramBoolean)
  {
    this.b = paramContext.getApplicationContext();
    this.c = paramBoolean;
  }

  private static void a(com.jxphone.mosecurity.c.b paramb, com.keniu.security.e.d paramd)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
      ((com.keniu.security.e.c)localIterator.next()).a(paramb, paramd);
  }

  private int c(com.jxphone.mosecurity.c.b paramb)
  {
    com.keniu.security.b.b localb = e.c(this.b, this.c);
    String str = paramb.d();
    paramb.b(str);
    com.jxphone.mosecurity.c.b localb1 = localb.a(str, false);
    if (localb1 != null)
      switch (b.a[localb1.e().ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      }
    while (true)
    {
      long l = System.currentTimeMillis();
      paramb.a(l);
      paramb.b(l);
      int i = (int)localb.a(paramb);
      if (i != -1)
      {
        e.a(this.b, this.c).f(str, paramb.e());
        e.b(this.b, this.c).f(str, paramb.e());
        a(paramb, com.keniu.security.e.d.a);
      }
      while (true)
      {
        return i;
        i = -1;
      }
      localb.b(localb1.a());
    }
  }

  public final int a(com.jxphone.mosecurity.c.b paramb)
  {
    return c(paramb);
  }

  public final int a(com.jxphone.mosecurity.c.b paramb, com.jxphone.mosecurity.logic.a.a parama)
  {
    int i = c(paramb);
    if (i != -1)
      b(paramb, parama);
    while (true)
    {
      return i;
      parama.a();
    }
  }

  public final int a(com.jxphone.mosecurity.c.c paramc)
  {
    int i = e.c(this.b, this.c).b(paramc);
    if (i > 0)
      a(null, com.keniu.security.e.d.b);
    return i;
  }

  public final com.jxphone.mosecurity.c.b a(int paramInt)
  {
    return e.c(this.b, this.c).a(paramInt);
  }

  public final com.jxphone.mosecurity.c.b a(String paramString)
  {
    String str = i.b(paramString);
    com.jxphone.mosecurity.c.b localb1 = a(str, false);
    if (localb1 != null);
    for (com.jxphone.mosecurity.c.b localb2 = localb1; ; localb2 = h.d(this.b).a(str, false))
      return localb2;
  }

  public final com.jxphone.mosecurity.c.b a(String paramString, boolean paramBoolean)
  {
    String str = i.b(paramString);
    com.keniu.security.b.b localb = e.c(this.b, this.c);
    if (str.length() > 8);
    for (com.jxphone.mosecurity.c.b localb1 = localb.b(str, paramBoolean); ; localb1 = localb.a(str, paramBoolean))
      return localb1;
  }

  public final void a(com.keniu.security.e.c paramc)
  {
    a.add(paramc);
  }

  public final com.jxphone.mosecurity.c.b b(String paramString)
  {
    com.jxphone.mosecurity.logic.a.d locald = h.c(this.b, this.c);
    com.jxphone.mosecurity.logic.a.l locall = h.d(this.b);
    Object localObject = locald.a(paramString, true);
    com.jxphone.mosecurity.c.b localb = locall.a(paramString, true);
    if ((localObject == null) || (((com.jxphone.mosecurity.c.b)localObject).e().equals(com.jxphone.mosecurity.c.c.e)))
      localObject = localb;
    while (true)
    {
      return localObject;
      if (localb != null)
        ((com.jxphone.mosecurity.c.b)localObject).a(localb.b());
    }
  }

  public final void b(com.jxphone.mosecurity.c.b paramb, com.jxphone.mosecurity.logic.a.a parama)
  {
    if (parama == null);
    for (com.jxphone.mosecurity.logic.a.a locala = com.jxphone.mosecurity.logic.a.a.b; ; locala = parama)
    {
      new c(this, this.b, paramb, locala).start();
      return;
    }
  }

  public final void b(com.keniu.security.e.c paramc)
  {
    a.remove(paramc);
  }

  public final boolean b(int paramInt)
  {
    boolean bool = e.c(this.b, this.c).b(paramInt);
    if (bool)
    {
      com.jxphone.mosecurity.c.b localb = new com.jxphone.mosecurity.c.b();
      localb.a(paramInt);
      a(localb, com.keniu.security.e.d.b);
    }
    return bool;
  }

  public final boolean b(com.jxphone.mosecurity.c.b paramb)
  {
    boolean bool = e.c(this.b, this.c).b(paramb);
    if (bool)
      a(paramb, com.keniu.security.e.d.c);
    return bool;
  }

  public final com.jxphone.mosecurity.c.b[] b(com.jxphone.mosecurity.c.c paramc)
  {
    return e.c(this.b, this.c).a(paramc);
  }

  public final boolean c(com.jxphone.mosecurity.c.b paramb, com.jxphone.mosecurity.logic.a.a parama)
  {
    boolean bool;
    if (!b(paramb.a()))
    {
      bool = false;
      return bool;
    }
    if (parama == null);
    for (com.jxphone.mosecurity.logic.a.a locala = com.jxphone.mosecurity.logic.a.a.b; ; locala = parama)
    {
      new d(this, this.b, paramb.c(), locala).start();
      bool = true;
      break;
    }
  }

  public final void d(com.jxphone.mosecurity.c.b paramb, com.jxphone.mosecurity.logic.a.a parama)
  {
    if (parama == null);
    for (com.jxphone.mosecurity.logic.a.a locala = com.jxphone.mosecurity.logic.a.a.b; ; locala = parama)
    {
      paramb.b(System.currentTimeMillis());
      b(paramb);
      new d(this, this.b, paramb.c(), locala).start();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.a
 * JD-Core Version:    0.6.2
 */