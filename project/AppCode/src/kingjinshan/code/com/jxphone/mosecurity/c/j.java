package com.jxphone.mosecurity.c;

import android.content.Context;
import android.database.Cursor;
import java.io.Serializable;

public final class j
  implements Serializable
{
  private static final long a = -6450231474400963028L;
  private int b;
  private int c;
  private final k d;
  private long e;
  private int f;
  private c g = c.a;
  private long h = 0L;
  private long i = 0L;

  public j(String paramString)
  {
    if (paramString != null);
    for (this.d = new k(paramString); ; this.d = k.a)
      return;
  }

  public static j a(Cursor paramCursor)
  {
    if (paramCursor.moveToNext());
    for (j localj = b(paramCursor); ; localj = null)
      return localj;
  }

  public static j b(Cursor paramCursor)
  {
    j localj = new j(paramCursor.getString(1));
    localj.b = paramCursor.getInt(0);
    localj.e = paramCursor.getLong(2);
    localj.f = paramCursor.getInt(3);
    localj.g = c.values()[paramCursor.getInt(4)];
    localj.h = paramCursor.getLong(5);
    localj.i = paramCursor.getLong(6);
    return localj;
  }

  private static j[] c(Cursor paramCursor)
  {
    j[] arrayOfj = new j[paramCursor.getCount()];
    paramCursor.moveToPosition(-1);
    for (int j = 0; paramCursor.moveToNext(); j++)
      arrayOfj[j] = b(paramCursor);
    return arrayOfj;
  }

  public final int a()
  {
    return this.b;
  }

  public final String a(Context paramContext)
  {
    return this.d.a(paramContext);
  }

  public final void a(int paramInt)
  {
    this.b = paramInt;
  }

  public final void a(long paramLong)
  {
    this.e = paramLong;
  }

  public final void a(c paramc)
  {
    this.g = paramc;
  }

  public final int b()
  {
    return this.c;
  }

  public final void b(int paramInt)
  {
    this.c = paramInt;
  }

  public final void b(long paramLong)
  {
    this.h = paramLong;
  }

  public final long c()
  {
    return this.e;
  }

  public final void c(int paramInt)
  {
    this.f = paramInt;
  }

  public final void c(long paramLong)
  {
    this.i = paramLong;
  }

  public final String d()
  {
    return this.d.a();
  }

  public final k e()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    if (((paramObject instanceof j)) && ((((j)paramObject).d.a().equals(this.d.a())) || (((j)paramObject).d.b().equals(this.d.b()))) && (((j)paramObject).e == this.e) && (((j)paramObject).f == this.f) && (((j)paramObject).g.equals(this.g)) && (((j)paramObject).h == this.h) && (((j)paramObject).i == this.i));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int f()
  {
    return this.f;
  }

  public final c g()
  {
    return this.g;
  }

  public final long h()
  {
    return this.h;
  }

  public final int hashCode()
  {
    return 31 * (31 * (31 * (31 * (31 * (217 + this.d.a().hashCode()) + (int)this.e) + this.f) + this.g.ordinal()) + (int)this.h) + (int)this.i;
  }

  public final long i()
  {
    return this.i;
  }

  public final String j()
  {
    return this.d.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.j
 * JD-Core Version:    0.6.2
 */