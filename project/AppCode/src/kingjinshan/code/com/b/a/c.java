package com.b.a;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class c extends e
  implements ew
{
  private static String a(String paramString, cq paramcq, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if (paramcq.q())
      localStringBuilder.append('(').append(paramcq.b()).append(')');
    while (true)
    {
      if (paramInt != -1)
        localStringBuilder.append('[').append(paramInt).append(']');
      localStringBuilder.append('.');
      return localStringBuilder.toString();
      localStringBuilder.append(paramcq.a());
    }
  }

  private static void a(ev paramev, String paramString, List paramList)
  {
    Iterator localIterator1 = paramev.C().e().iterator();
    while (localIterator1.hasNext())
    {
      cq localcq2 = (cq)localIterator1.next();
      if ((localcq2.k()) && (!paramev.a(localcq2)))
        paramList.add(paramString + localcq2.a());
    }
    Iterator localIterator2 = paramev.a_().entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      cq localcq1 = (cq)localEntry.getKey();
      Object localObject = localEntry.getValue();
      if (localcq1.f() == cr.i)
        if (localcq1.m())
        {
          int i = 0;
          Iterator localIterator3 = ((List)localObject).iterator();
          while (localIterator3.hasNext())
          {
            ev localev = (ev)localIterator3.next();
            int j = i + 1;
            a(localev, a(paramString, localcq1, i), paramList);
            i = j;
          }
        }
        else if (paramev.a(localcq1))
        {
          a((ev)localObject, a(paramString, localcq1, -1), paramList);
        }
    }
  }

  private static void a(m paramm, gi paramgi, df paramdf, ew paramew)
  {
    cj localcj = paramew.C();
    int i = 0;
    cq localcq = null;
    ew localew = null;
    Object localObject1 = null;
    while (true)
    {
      int j = paramm.a();
      int k;
      de localde;
      if (j != 0)
        if (j == go.n)
        {
          k = paramm.r();
          if (k == 0)
            break label312;
          if ((paramdf instanceof db))
          {
            localde = ((db)paramdf).a(localcj, k);
            label70: if (localde == null)
              break label163;
            localcq = localde.a;
            localew = localde.b.E();
            ev localev = (ev)paramew.b(localcq);
            if (localev != null)
              localew.c(localev);
            if (localObject1 == null)
              break label305;
            localew.d(m.a(((i)localObject1).c()));
          }
        }
      label163: label305: for (Object localObject3 = null; ; localObject3 = localObject1)
      {
        localObject1 = localObject3;
        i = k;
        break;
        localde = null;
        break label70;
        if (localObject1 != null)
          paramgi.a(k, gj.a().a((i)localObject1).a());
        for (Object localObject2 = null; ; localObject2 = localObject1)
        {
          localObject1 = localObject2;
          i = k;
          break;
          if (j == go.o)
          {
            if (i == 0)
            {
              localObject1 = paramm.k();
              break;
            }
            if (localew == null)
            {
              paramgi.a(i, gj.a().a(paramm.k()).a());
              break;
            }
            paramm.a(localew, paramdf);
            break;
          }
          if (paramm.b(j))
            break;
          paramm.a(go.m);
          if (localew != null)
            paramew.b(localcq, localew.K());
          return;
        }
      }
      label312: i = k;
    }
  }

  static boolean a(m paramm, gi paramgi, df paramdf, ew paramew, int paramInt)
  {
    cj localcj1 = paramew.C();
    cj localcj2;
    cq localcq2;
    ew localew3;
    Object localObject2;
    int i3;
    if ((localcj1.d().i()) && (paramInt == go.l))
    {
      localcj2 = paramew.C();
      localcq2 = null;
      localew3 = null;
      localObject2 = null;
      i3 = 0;
    }
    while (true)
    {
      int i4 = paramm.a();
      int i5;
      de localde2;
      if (i4 != 0)
        if (i4 == go.n)
        {
          i5 = paramm.r();
          if (i5 == 0)
            break label965;
          if ((paramdf instanceof db))
          {
            localde2 = ((db)paramdf).a(localcj2, i5);
            label97: if (localde2 == null)
              break label190;
            localcq2 = localde2.a;
            localew3 = localde2.b.E();
            ev localev2 = (ev)paramew.b(localcq2);
            if (localev2 != null)
              localew3.c(localev2);
            if (localObject2 == null)
              break label958;
            localew3.d(m.a(((i)localObject2).c()));
          }
        }
      label385: label543: label552: label944: label958: for (Object localObject4 = null; ; localObject4 = localObject2)
      {
        localObject2 = localObject4;
        i3 = i5;
        break;
        localde2 = null;
        break label97;
        label190: if (localObject2 != null)
          paramgi.a(i5, gj.a().a((i)localObject2).a());
        for (Object localObject3 = null; ; localObject3 = localObject2)
        {
          localObject2 = localObject3;
          i3 = i5;
          break;
          if (i4 == go.o)
          {
            if (i3 == 0)
            {
              localObject2 = paramm.k();
              break;
            }
            if (localew3 == null)
            {
              paramgi.a(i3, gj.a().a(paramm.k()).a());
              break;
            }
            paramm.a(localew3, paramdf);
            break;
          }
          if (paramm.b(i4))
            break;
          paramm.a(go.m);
          if (localew3 != null)
            paramew.b(localcq2, localew3.K());
          boolean bool = true;
          int j;
          ev localev1;
          cq localcq1;
          while (true)
          {
            return bool;
            int i = go.a(paramInt);
            j = go.b(paramInt);
            de localde1;
            int m;
            int k;
            if (localcj1.a(j))
              if ((paramdf instanceof db))
              {
                localde1 = ((db)paramdf).a(localcj1, j);
                if (localde1 == null)
                {
                  localev1 = null;
                  localcq1 = null;
                  if (localcq1 == null)
                    break label543;
                  if (i != dh.a(localcq1.j(), false))
                    break label512;
                  m = 0;
                  k = 0;
                }
              }
            while (true)
            {
              if (k == 0)
                break label552;
              bool = paramgi.a(paramInt, paramm);
              break;
              localcq1 = localde1.a;
              localev1 = localde1.b;
              if ((localev1 != null) || (localcq1.f() != cr.i))
                break label385;
              throw new IllegalStateException("Message-typed extension lacked default instance: " + localcq1.b());
              localev1 = null;
              localcq1 = null;
              break label385;
              localcq1 = localcj1.b(j);
              localev1 = null;
              break label385;
              if ((localcq1.o()) && (i == dh.a(localcq1.j(), true)))
              {
                m = 1;
                k = 0;
              }
              else
              {
                k = 1;
                m = 0;
              }
            }
            if (m == 0)
              break;
            int i1 = paramm.c(paramm.r());
            if (localcq1.j() == gq.n)
              while (true)
              {
                if (paramm.v() <= 0)
                  break label656;
                int i2 = paramm.m();
                cp localcp2 = localcq1.u().b(i2);
                if (localcp2 == null)
                {
                  bool = true;
                  break;
                }
                paramew.a(localcq1, localcp2);
              }
            while (paramm.v() > 0)
              paramew.a(localcq1, dh.a(paramm, localcq1.j()));
            paramm.d(i1);
            bool = true;
          }
          Object localObject1;
          switch (b.a[localcq1.h().ordinal()])
          {
          default:
            localObject1 = dh.a(paramm, localcq1.j());
          case 1:
          case 2:
          case 3:
          }
          while (true)
          {
            cp localcp1;
            if (localcq1.m())
            {
              paramew.a(localcq1, localObject1);
              break label662;
              if (localev1 != null);
              for (ew localew2 = localev1.E(); ; localew2 = paramew.e(localcq1))
              {
                if (!localcq1.m())
                  localew2.c((ev)paramew.b(localcq1));
                paramm.a(localcq1.e(), localew2, paramdf);
                localObject1 = localew2.K();
                break;
              }
              if (localev1 != null);
              for (ew localew1 = localev1.E(); ; localew1 = paramew.e(localcq1))
              {
                if (!localcq1.m())
                  localew1.c((ev)paramew.b(localcq1));
                paramm.a(localew1, paramdf);
                localObject1 = localew1.K();
                break;
              }
              int n = paramm.m();
              localcp1 = localcq1.u().b(n);
              if (localcp1 != null)
                break label944;
              paramgi.a(j, n);
              bool = true;
              break;
            }
            paramew.b(localcq1, localObject1);
            break label662;
            localObject1 = localcp1;
          }
        }
      }
      label512: label656: label662: label965: i3 = i5;
    }
  }

  protected static gf b(ev paramev)
  {
    ArrayList localArrayList = new ArrayList();
    a(paramev, "", localArrayList);
    return new gf(localArrayList);
  }

  private c d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return (c)super.a(paramArrayOfByte, paramInt1, paramInt2);
  }

  private c d(byte[] paramArrayOfByte, int paramInt1, int paramInt2, df paramdf)
  {
    return (c)super.a(paramArrayOfByte, paramInt1, paramInt2, paramdf);
  }

  private static List d(ev paramev)
  {
    ArrayList localArrayList = new ArrayList();
    a(paramev, "", localArrayList);
    return localArrayList;
  }

  public c a(ev paramev)
  {
    if (paramev.C() != C())
      throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
    Iterator localIterator1 = paramev.a_().entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      cq localcq = (cq)localEntry.getKey();
      if (localcq.m())
      {
        Iterator localIterator2 = ((List)localEntry.getValue()).iterator();
        while (localIterator2.hasNext())
          a(localcq, localIterator2.next());
      }
      else if (localcq.f() == cr.i)
      {
        ev localev = (ev)b(localcq);
        if (localev == localev.I())
          b(localcq, localEntry.getValue());
        else
          b(localcq, localev.E().c(localev).c((ev)localEntry.getValue()).K());
      }
      else
      {
        b(localcq, localEntry.getValue());
      }
    }
    a(paramev.b_());
    return this;
  }

  public c a(gg paramgg)
  {
    c(gg.a(b_()).a(paramgg).b());
    return this;
  }

  public final c a(i parami)
  {
    return (c)super.b(parami);
  }

  public final c a(i parami, df paramdf)
  {
    return (c)super.b(parami, paramdf);
  }

  public final c a(m paramm)
  {
    return a(paramm, db.a());
  }

  public c a(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    int i;
    do
      i = paramm.a();
    while ((i != 0) && (a(paramm, localgi, paramdf, this, i)));
    c(localgi.b());
    return this;
  }

  public final c a(InputStream paramInputStream)
  {
    return (c)super.c(paramInputStream);
  }

  public final c a(InputStream paramInputStream, df paramdf)
  {
    return (c)super.c(paramInputStream, paramdf);
  }

  public final c a(byte[] paramArrayOfByte)
  {
    return (c)super.b(paramArrayOfByte);
  }

  public final c a(byte[] paramArrayOfByte, df paramdf)
  {
    return (c)super.b(paramArrayOfByte, paramdf);
  }

  public abstract c b();

  public final boolean b(InputStream paramInputStream)
  {
    return super.b(paramInputStream);
  }

  public final boolean b(InputStream paramInputStream, df paramdf)
  {
    return super.b(paramInputStream, paramdf);
  }

  public c c()
  {
    Iterator localIterator = a_().entrySet().iterator();
    while (localIterator.hasNext())
      d((cq)((Map.Entry)localIterator.next()).getKey());
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.c
 * JD-Core Version:    0.6.2
 */