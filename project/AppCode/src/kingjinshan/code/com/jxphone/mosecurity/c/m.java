package com.jxphone.mosecurity.c;

import com.keniu.security.d.f;
import java.io.Serializable;
import java.sql.Date;

public final class m
  implements Serializable
{
  private static final long a = -615347167197120953L;
  private String b;
  private boolean c;
  private f d;
  private Date e;
  private long f;
  private boolean g = false;

  private void a(long paramLong)
  {
    this.f = paramLong;
  }

  private void a(f paramf)
  {
    this.d = paramf;
  }

  private void a(String paramString)
  {
    this.b = paramString;
  }

  private void a(Date paramDate)
  {
    this.e = paramDate;
  }

  private void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  private boolean a()
  {
    return this.g;
  }

  private long b()
  {
    return this.f;
  }

  private void b(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  private Date c()
  {
    return this.e;
  }

  private String d()
  {
    return this.b;
  }

  private boolean e()
  {
    return this.c;
  }

  private f f()
  {
    return this.d;
  }

  private void g()
  {
    this.f = (1L + this.f);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.m
 * JD-Core Version:    0.6.2
 */