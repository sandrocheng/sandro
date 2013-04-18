package com.b.a;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class gc
{
  final boolean a;

  private gc(boolean paramBoolean, byte paramByte)
  {
    this.a = paramBoolean;
  }

  private void a(int paramInt1, int paramInt2, List paramList, gd paramgd)
  {
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      paramgd.a(String.valueOf(paramInt1));
      paramgd.a(": ");
      fy.a(paramInt2, localObject, paramgd);
      if (this.a);
      for (String str = " "; ; str = "\n")
      {
        paramgd.a(str);
        break;
      }
    }
  }

  private void a(cq paramcq, Object paramObject, gd paramgd)
  {
    if (paramcq.m())
    {
      Iterator localIterator = ((List)paramObject).iterator();
      while (localIterator.hasNext())
        b(paramcq, localIterator.next(), paramgd);
    }
    b(paramcq, paramObject, paramgd);
  }

  private void a(ev paramev, gd paramgd)
  {
    Iterator localIterator = paramev.a_().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a((cq)localEntry.getKey(), localEntry.getValue(), paramgd);
    }
    a(paramev.b_(), paramgd);
  }

  private void a(gg paramgg, gd paramgd)
  {
    Iterator localIterator1 = paramgg.g().entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      int i = ((Integer)localEntry.getKey()).intValue();
      gj localgj = (gj)localEntry.getValue();
      a(i, 0, localgj.c(), paramgd);
      a(i, 5, localgj.d(), paramgd);
      a(i, 1, localgj.e(), paramgd);
      a(i, 2, localgj.f(), paramgd);
      Iterator localIterator2 = localgj.g().iterator();
      while (localIterator2.hasNext())
      {
        gg localgg = (gg)localIterator2.next();
        paramgd.a(((Integer)localEntry.getKey()).toString());
        if (this.a)
          paramgd.a(" { ");
        while (true)
        {
          a(localgg, paramgd);
          if (!this.a)
            break label214;
          paramgd.a("} ");
          break;
          paramgd.a(" {\n");
          paramgd.a();
        }
        label214: paramgd.b();
        paramgd.a("}\n");
      }
    }
  }

  private void b(cq paramcq, Object paramObject, gd paramgd)
  {
    if (paramcq.q())
    {
      paramgd.a("[");
      if ((paramcq.r().d().i()) && (paramcq.h() == cs.k) && (paramcq.l()) && (paramcq.s() == paramcq.t()))
      {
        paramgd.a(paramcq.t().b());
        paramgd.a("]");
        label71: if (paramcq.f() != cr.i)
          break label184;
        if (!this.a)
          break label171;
        paramgd.a(" { ");
        label94: c(paramcq, paramObject, paramgd);
        if (paramcq.f() != cr.i)
          break label206;
        if (!this.a)
          break label193;
        paramgd.a("} ");
      }
    }
    while (true)
    {
      return;
      paramgd.a(paramcq.b());
      break;
      if (paramcq.h() == cs.j)
      {
        paramgd.a(paramcq.t().a());
        break label71;
      }
      paramgd.a(paramcq.a());
      break label71;
      label171: paramgd.a(" {\n");
      paramgd.a();
      break label94;
      label184: paramgd.a(": ");
      break label94;
      label193: paramgd.b();
      paramgd.a("}\n");
      continue;
      label206: if (this.a)
        paramgd.a(" ");
      else
        paramgd.a("\n");
    }
  }

  private void c(cq paramcq, Object paramObject, gd paramgd)
  {
    switch (fz.a[paramcq.h().ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    }
    while (true)
    {
      return;
      paramgd.a(((Integer)paramObject).toString());
      continue;
      paramgd.a(((Long)paramObject).toString());
      continue;
      paramgd.a(((Boolean)paramObject).toString());
      continue;
      paramgd.a(((Float)paramObject).toString());
      continue;
      paramgd.a(((Double)paramObject).toString());
      continue;
      paramgd.a(fy.a(((Integer)paramObject).intValue()));
      continue;
      paramgd.a(fy.a(((Long)paramObject).longValue()));
      continue;
      paramgd.a("\"");
      paramgd.a(fy.a((String)paramObject));
      paramgd.a("\"");
      continue;
      paramgd.a("\"");
      paramgd.a(fy.a((i)paramObject));
      paramgd.a("\"");
      continue;
      paramgd.a(((cp)paramObject).a());
      continue;
      a((ev)paramObject, paramgd);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gc
 * JD-Core Version:    0.6.2
 */