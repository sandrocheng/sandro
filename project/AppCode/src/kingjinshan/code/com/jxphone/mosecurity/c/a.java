package com.jxphone.mosecurity.c;

import java.io.Serializable;
import java.text.Collator;
import java.util.Locale;

public final class a
  implements Serializable, Comparable
{
  private static final long a = -6665713355081465148L;
  private int b;
  private String c;
  private String d;
  private String e;
  private long f = -1L;
  private long g;
  private int h;
  private String i;
  private String j;

  private int a(a parama)
  {
    return Collator.getInstance(Locale.CHINA).compare(this.e, parama.e);
  }

  private void b(int paramInt)
  {
    this.h = paramInt;
  }

  private void b(long paramLong)
  {
    this.g = paramLong;
  }

  private void d(String paramString)
  {
    this.j = paramString;
  }

  private void e(String paramString)
  {
    this.i = paramString;
  }

  private String f()
  {
    return this.j;
  }

  private String g()
  {
    return this.i;
  }

  private long h()
  {
    return this.g;
  }

  private int i()
  {
    return this.h;
  }

  public final int a()
  {
    return this.b;
  }

  public final void a(int paramInt)
  {
    this.b = paramInt;
  }

  public final void a(long paramLong)
  {
    this.f = paramLong;
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final String b()
  {
    return this.c;
  }

  public final void b(String paramString)
  {
    this.d = paramString;
  }

  public final String c()
  {
    return this.d;
  }

  public final void c(String paramString)
  {
    this.e = paramString;
  }

  public final String d()
  {
    return this.e;
  }

  public final long e()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.a
 * JD-Core Version:    0.6.2
 */