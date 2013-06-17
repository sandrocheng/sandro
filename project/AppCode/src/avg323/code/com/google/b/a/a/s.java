package com.google.b.a.a;

import com.google.b.a.c;
import com.google.b.b;
import com.google.b.b.f;
import com.google.b.d;
import com.google.b.e;
import com.google.b.h;
import com.google.b.j;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class s extends j
{
  public void a(f paramf, b paramb)
  {
    if ((paramb == null) || (paramb.i()))
      paramf.e();
    while (true)
    {
      return;
      if (paramb.h())
      {
        h localh = paramb.l();
        if (localh.n())
          paramf.a(localh.b());
        else if (localh.a())
          paramf.b(localh.e());
        else
          paramf.b(localh.c());
      }
      else if (paramb.f())
      {
        paramf.a();
        Iterator localIterator2 = paramb.k().iterator();
        while (localIterator2.hasNext())
          a(paramf, (b)localIterator2.next());
        paramf.b();
      }
      else
      {
        if (!paramb.g())
          break;
        paramf.c();
        Iterator localIterator1 = paramb.j().a().iterator();
        while (localIterator1.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator1.next();
          paramf.a((String)localEntry.getKey());
          a(paramf, (b)localEntry.getValue());
        }
        paramf.d();
      }
    }
    throw new IllegalArgumentException("Couldn't write " + paramb.getClass());
  }

  public b b(com.google.b.b.a parama)
  {
    Object localObject;
    switch (z.a[parama.g().ordinal()])
    {
    default:
      throw new IllegalArgumentException();
    case 3:
      localObject = new h(parama.i());
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      return localObject;
      localObject = new h(new c(parama.i()));
      continue;
      localObject = new h(Boolean.valueOf(parama.j()));
      continue;
      parama.k();
      localObject = d.a;
      continue;
      localObject = new com.google.b.a();
      parama.b();
      while (parama.f())
        ((com.google.b.a)localObject).a(b(parama));
      parama.c();
      continue;
      localObject = new e();
      parama.d();
      while (parama.f())
        ((e)localObject).a(parama.h(), b(parama));
      parama.e();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.a.s
 * JD-Core Version:    0.6.2
 */