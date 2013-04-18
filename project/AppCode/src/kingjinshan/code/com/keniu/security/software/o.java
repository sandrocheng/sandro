package com.keniu.security.software;

import java.text.Collator;
import java.util.Locale;

public final class o
  implements Comparable
{
  private String a;
  private String b;
  private long c;
  private int d;
  private String e;
  private String f;
  private long g;

  public final int a(o paramo)
  {
    return Collator.getInstance(Locale.CHINA).compare(this.b, paramo.b);
  }

  public final String a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.d = paramInt;
  }

  public final void a(long paramLong)
  {
    this.c = paramLong;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(long paramLong)
  {
    this.g = paramLong;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final long c()
  {
    return this.c;
  }

  public final void c(String paramString)
  {
    this.e = paramString;
  }

  public final int d()
  {
    return this.d;
  }

  public final void d(String paramString)
  {
    this.f = paramString;
  }

  public final String e()
  {
    return this.e;
  }

  public final String f()
  {
    return this.f;
  }

  public final long g()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.o
 * JD-Core Version:    0.6.2
 */