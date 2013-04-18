package com.jxphone.mosecurity.c;

import android.content.Context;
import android.graphics.Bitmap;
import java.io.Serializable;

public class b
  implements Serializable
{
  private static final long a = -6186818106614109723L;
  public static final b b = new b();
  private int c = -1;
  private String d;
  private k e = k.a;
  private c f = c.a;
  private long g;
  private long h;
  private Bitmap i;

  public static final void a(b[] paramArrayOfb)
  {
    if (paramArrayOfb == null);
    while (true)
    {
      return;
      int j = paramArrayOfb.length;
      for (int k = 0; k < j; k++)
      {
        b localb = paramArrayOfb[k];
        if (localb != null)
        {
          Bitmap localBitmap = localb.i;
          if (localBitmap != null)
            localBitmap.recycle();
        }
      }
      System.gc();
    }
  }

  public final int a()
  {
    return this.c;
  }

  public final String a(Context paramContext)
  {
    return this.e.a(paramContext);
  }

  public final void a(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(long paramLong)
  {
    this.g = paramLong;
  }

  public final void a(Bitmap paramBitmap)
  {
    this.i = paramBitmap;
  }

  public final void a(c paramc)
  {
    this.f = paramc;
  }

  public final void a(String paramString)
  {
    this.d = paramString;
  }

  public final String b()
  {
    return this.d;
  }

  public final void b(long paramLong)
  {
    this.h = paramLong;
  }

  public final void b(String paramString)
  {
    this.e = new k(paramString);
  }

  public final String c()
  {
    return this.e.a();
  }

  public final String d()
  {
    return this.e.b();
  }

  public final c e()
  {
    return this.f;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (!(paramObject instanceof b))
      bool = false;
    while (true)
    {
      return bool;
      b localb = (b)paramObject;
      if ((localb.g == this.g) && (localb.h == this.h) && (localb.d.equals(this.d)) && (localb.e.a().equals(this.e.a())) && (localb.f.equals(this.f)))
        bool = true;
      else
        bool = false;
    }
  }

  public final long f()
  {
    return this.g;
  }

  public final Bitmap g()
  {
    return this.i;
  }

  public final long h()
  {
    return this.h;
  }

  public int hashCode()
  {
    int j = 31 * (217 + (int)this.g) + (int)this.h;
    if (this.d != null)
      j = j * 31 + this.d.hashCode();
    return 31 * (j * 31 + this.e.a().hashCode()) + this.f.ordinal();
  }

  public final b i()
  {
    b localb = new b();
    localb.c = this.c;
    localb.d = this.d;
    localb.e = this.e;
    localb.i = this.i;
    localb.f = this.f;
    localb.h = this.h;
    localb.g = this.g;
    return localb;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.b
 * JD-Core Version:    0.6.2
 */