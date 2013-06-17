package com.antivirus.core.scanners.a.a;

import com.antivirus.core.scanners.a.a;
import java.util.ArrayList;

public class c
{
  public String a;
  public int b;
  public int c;
  public int d;
  public b e;
  public ArrayList f;
  public ArrayList g;
  public ArrayList h;
  public ArrayList i;
  public ArrayList j;
  public d k;
  public d l;
  public d m;

  public c(String paramString, int paramInt1, int paramInt2, b paramb, ArrayList paramArrayList1, ArrayList paramArrayList2, ArrayList paramArrayList3, ArrayList paramArrayList4, ArrayList paramArrayList5, d paramd1, d paramd2, d paramd3, int paramInt3)
  {
    this.a = paramString;
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
    this.j = paramArrayList1;
    this.h = paramArrayList2;
    this.f = paramArrayList3;
    this.i = paramArrayList4;
    this.g = paramArrayList5;
    b localb;
    d locald1;
    label77: d locald2;
    label91: d locald3;
    if (paramb == null)
    {
      localb = null;
      this.e = localb;
      if (paramd1 != null)
        break label126;
      locald1 = null;
      this.k = locald1;
      if (paramd2 != null)
        break label140;
      locald2 = null;
      this.l = locald2;
      locald3 = null;
      if (paramd3 != null)
        break label154;
    }
    while (true)
    {
      this.m = locald3;
      return;
      localb = new b(paramb);
      break;
      label126: locald1 = new d(paramd1);
      break label77;
      label140: locald2 = new d(paramd2);
      break label91;
      label154: locald3 = new d(paramd3);
    }
  }

  public int a(a parama, int paramInt)
  {
    int n;
    if (this.c > paramInt)
      n = -1;
    while (true)
    {
      return n;
      boolean bool1 = true;
      if (this.e != null)
      {
        int i7 = 0;
        while ((bool1) && (i7 < parama.f.size()))
        {
          boolean bool6 = this.e.a((String)parama.f.get(i7));
          i7++;
          bool1 = bool6;
        }
      }
      if ((bool1) && (this.k != null))
        bool1 = this.k.a(parama.k);
      if ((bool1) && (this.l != null))
        bool1 = this.l.a(parama.l);
      if ((bool1) && (this.m != null))
        bool1 = this.m.a(parama.m);
      if ((bool1) && (this.g != null) && (this.g.size() > 0))
      {
        int i6;
        if ((parama.g != null) && (parama.g.size() > 0))
          i6 = 0;
        while ((bool1) && (i6 < this.g.size()))
        {
          boolean bool5 = ((b)this.g.get(i6)).a(parama.g);
          i6++;
          bool1 = bool5;
          continue;
          bool1 = false;
        }
      }
      if ((bool1) && (this.f != null) && (this.f.size() > 0))
      {
        int i5;
        if ((parama.b != null) && (parama.b.size() > 0))
          i5 = 0;
        while ((bool1) && (i5 < this.f.size()))
        {
          boolean bool4 = ((b)this.f.get(i5)).a(parama.b);
          i5++;
          bool1 = bool4;
          continue;
          bool1 = false;
        }
      }
      if ((bool1) && (this.h != null) && (this.h.size() > 0))
      {
        int i4;
        if ((parama.c != null) && (parama.c.size() > 0))
          i4 = 0;
        while ((bool1) && (i4 < this.h.size()))
        {
          boolean bool3 = ((h)this.h.get(i4)).b(parama.c);
          i4++;
          bool1 = bool3;
          continue;
          bool1 = false;
        }
      }
      if ((bool1) && (this.i != null) && (this.i.size() > 0))
      {
        int i3;
        if ((parama.e != null) && (parama.e.size() > 0))
          i3 = 0;
        while ((bool1) && (i3 < this.i.size()))
        {
          boolean bool2 = ((h)this.i.get(i3)).b(parama.e);
          i3++;
          bool1 = bool2;
          continue;
          bool1 = false;
        }
      }
      if ((bool1) && (this.j != null) && (this.j.size() > 0))
      {
        if (parama.d != null)
        {
          int i1 = parama.d.size();
          int i2 = 0;
          if (i1 > 0)
            while ((bool1) && (i2 < this.j.size()))
            {
              bool1 = ((g)this.j.get(i2)).b(parama.d);
              i2++;
            }
        }
        bool1 = false;
      }
      if (bool1)
        n = this.c;
      else
        n = -1;
    }
  }

  public String toString()
  {
    return "SignatureObject [name=" + this.a + ", usesengine=" + this.b + ", category=" + this.c + ", drywet=" + this.d + ", packagename=" + this.e + ", activity=" + this.f + ", usespermissions=" + this.g + ", services=" + this.h + ", metadata=" + this.i + ", receivers=" + this.j + ", tagactivity=" + this.k + ", tagservice=" + this.l + ", tagreceiver=" + this.m + "]";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.a.a.c
 * JD-Core Version:    0.6.2
 */