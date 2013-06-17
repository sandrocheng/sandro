package com.google.c.a;

import java.io.Serializable;

public class p
  implements Serializable
{
  private boolean a;
  private int b = 0;
  private boolean c;
  private long d = 0L;
  private boolean e;
  private String f = "";
  private boolean g;
  private boolean h = false;
  private boolean i;
  private String j = "";
  private boolean k;
  private q l = q.a;
  private boolean m;
  private String n = "";

  public int a()
  {
    return this.b;
  }

  public p a(int paramInt)
  {
    this.a = true;
    this.b = paramInt;
    return this;
  }

  public p a(long paramLong)
  {
    this.c = true;
    this.d = paramLong;
    return this;
  }

  public p a(q paramq)
  {
    if (paramq == null)
      throw new NullPointerException();
    this.k = true;
    this.l = paramq;
    return this;
  }

  public p a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.e = true;
    this.f = paramString;
    return this;
  }

  public p a(boolean paramBoolean)
  {
    this.g = true;
    this.h = paramBoolean;
    return this;
  }

  public boolean a(p paramp)
  {
    boolean bool = true;
    if (paramp == null);
    for (bool = false; ; bool = false)
      do
        return bool;
      while ((this == paramp) || ((this.b == paramp.b) && (this.d == paramp.d) && (this.f.equals(paramp.f)) && (this.h == paramp.h) && (this.j.equals(paramp.j)) && (this.l == paramp.l) && (this.n.equals(paramp.n)) && (l() == paramp.l())));
  }

  public long b()
  {
    return this.d;
  }

  public p b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.i = true;
    this.j = paramString;
    return this;
  }

  public p c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.m = true;
    this.n = paramString;
    return this;
  }

  public boolean c()
  {
    return this.e;
  }

  public String d()
  {
    return this.f;
  }

  public boolean e()
  {
    return this.g;
  }

  public boolean equals(Object paramObject)
  {
    if (((paramObject instanceof p)) && (a((p)paramObject)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean f()
  {
    return this.h;
  }

  public boolean g()
  {
    return this.i;
  }

  public String h()
  {
    return this.j;
  }

  public int hashCode()
  {
    int i1 = 1231;
    int i2 = 53 * (53 * (53 * (2173 + a()) + Long.valueOf(b()).hashCode()) + d().hashCode());
    int i3;
    int i4;
    if (f())
    {
      i3 = i1;
      i4 = 53 * (53 * (53 * (53 * (i3 + i2) + h().hashCode()) + j().hashCode()) + m().hashCode());
      if (!l())
        break label110;
    }
    while (true)
    {
      return i4 + i1;
      i3 = 1237;
      break;
      label110: i1 = 1237;
    }
  }

  public boolean i()
  {
    return this.k;
  }

  public q j()
  {
    return this.l;
  }

  public p k()
  {
    this.k = false;
    this.l = q.a;
    return this;
  }

  public boolean l()
  {
    return this.m;
  }

  public String m()
  {
    return this.n;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Country Code: ").append(this.b);
    localStringBuilder.append(" National Number: ").append(this.d);
    if ((e()) && (f()))
      localStringBuilder.append(" Leading Zero: true");
    if (c())
      localStringBuilder.append(" Extension: ").append(this.f);
    if (i())
      localStringBuilder.append(" Country Code Source: ").append(this.l);
    if (l())
      localStringBuilder.append(" Preferred Domestic Carrier Code: ").append(this.n);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.p
 * JD-Core Version:    0.6.2
 */