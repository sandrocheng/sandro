package com.tencent.feedback.eup;

import java.io.Serializable;

public class k
  implements Serializable
{
  private long a = -1L;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private long h;
  private String i;
  private String j;
  private long k;
  private long l;
  private String m;
  private String n;
  private int o = -1;
  private byte[] p;
  private String q;
  private String r;
  private String s;
  private int t;

  public final String a()
  {
    return this.b;
  }

  public final void a(int paramInt)
  {
    this.o = paramInt;
  }

  public final void a(long paramLong)
  {
    this.h = paramLong;
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.p = paramArrayOfByte;
  }

  public final String b()
  {
    return this.d;
  }

  public final void b(int paramInt)
  {
    this.t = paramInt;
  }

  public final void b(long paramLong)
  {
    this.k = paramLong;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final String c()
  {
    return this.e;
  }

  public final void c(long paramLong)
  {
    this.l = paramLong;
  }

  public final void c(String paramString)
  {
    this.d = paramString;
  }

  public final long d()
  {
    return this.h;
  }

  public final void d(long paramLong)
  {
    this.a = paramLong;
  }

  public final void d(String paramString)
  {
    this.e = paramString;
  }

  public final String e()
  {
    return this.i;
  }

  public final void e(String paramString)
  {
    this.i = paramString;
  }

  public final String f()
  {
    return this.j;
  }

  public final void f(String paramString)
  {
    this.j = paramString;
  }

  public final long g()
  {
    return 0L;
  }

  public final void g(String paramString)
  {
    this.f = paramString;
  }

  public final long h()
  {
    return this.k;
  }

  public final void h(String paramString)
  {
    this.m = paramString;
  }

  public final long i()
  {
    return this.l;
  }

  public final void i(String paramString)
  {
    this.g = paramString;
  }

  public final String j()
  {
    return this.f;
  }

  public final void j(String paramString)
  {
    try
    {
      this.n = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String k()
  {
    return this.g;
  }

  public final void k(String paramString)
  {
    this.q = paramString;
  }

  public final int l()
  {
    return this.o;
  }

  public final void l(String paramString)
  {
    this.r = paramString;
  }

  public final long m()
  {
    return this.a;
  }

  public final void m(String paramString)
  {
    this.s = paramString;
  }

  public final byte[] n()
  {
    return this.p;
  }

  public final String o()
  {
    try
    {
      String str = this.n;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String p()
  {
    return this.q;
  }

  public final String q()
  {
    return this.r;
  }

  public final String r()
  {
    return this.s;
  }

  public final int s()
  {
    return this.t;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("cid:").append(this.a).append("\n").append("exception_Type:").append(this.b).append("\n").append("error_MESSAGE:").append(this.c).append("\n").append("thread_NAME:").append(this.d).append("\n").append("pkg_NAME:").append(null).append("\n").append("pkg_VERSION_NAME:").append(null).append("\n").append("exception_ADDRESS:").append(this.e).append("\n").append("stack_TRACE:").append(this.f).append("\n").append("causeBY:").append(this.g).append("\n").append("exception_TIME:").append(this.h).append("\n").append("battery:").append(this.i).append("\n").append("cup:").append(this.j).append("\n").append("freeMem:").append(0L).append("\n").append("freeStorage:").append(this.k).append("\n").append("freeSDCard:").append(this.l).append("\n").append("platform:").append(this.m).append("\n").append("log:");
    if (this.p == null);
    for (Object localObject = "0"; ; localObject = Integer.valueOf(this.p.length))
      return localObject + "\n" + "recordtype:" + this.o + "contract:" + this.n + " userid:" + this.q + " hash:" + this.r + " \nalltimes:" + this.s + " \ncounts:" + this.t;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.k
 * JD-Core Version:    0.6.2
 */