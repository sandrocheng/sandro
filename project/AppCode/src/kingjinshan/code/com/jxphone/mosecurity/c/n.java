package com.jxphone.mosecurity.c;

import java.io.Serializable;
import java.sql.Date;

public final class n
  implements Serializable
{
  public static final int a = 1;
  public static final int b = 2;
  private static final long c = -1147028614462361531L;
  private int d;
  private int e;
  private int f;
  private String g;
  private String h;
  private String i;
  private Date j;
  private int k;
  private boolean l;

  private void a(int paramInt)
  {
    this.k = paramInt;
  }

  private void a(String paramString)
  {
    this.i = paramString;
  }

  private void a(Date paramDate)
  {
    this.j = ((Date)paramDate.clone());
  }

  private void a(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  private void b(int paramInt)
  {
    this.d = paramInt;
  }

  private void b(String paramString)
  {
    this.h = paramString;
  }

  private void c(int paramInt)
  {
    this.e = paramInt;
  }

  private void c(String paramString)
  {
    this.g = paramString;
  }

  private void d(int paramInt)
  {
    this.f = paramInt;
  }

  private int f()
  {
    return this.d;
  }

  private int g()
  {
    return this.e;
  }

  private int h()
  {
    return this.f;
  }

  private boolean i()
  {
    return this.l;
  }

  public final int a()
  {
    return this.k;
  }

  public final String b()
  {
    return this.i;
  }

  public final String c()
  {
    return this.h;
  }

  public final String d()
  {
    return this.g;
  }

  public final Date e()
  {
    return (Date)this.j.clone();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.n
 * JD-Core Version:    0.6.2
 */