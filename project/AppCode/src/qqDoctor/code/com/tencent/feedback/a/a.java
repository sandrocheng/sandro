package com.tencent.feedback.a;

import com.tencent.feedback.common.ELog;
import java.io.Serializable;

public final class a
  implements Serializable
{
  private long a;
  private boolean b;
  private String c;
  private long d;
  private long e;
  private int f;
  private long[] g;
  private boolean h;

  public a(boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
    this.b = paramBoolean1;
    this.c = paramString;
    this.h = paramBoolean2;
  }

  private static String b(long[] paramArrayOfLong)
  {
    ELog.debug("CountDAO.parseToStr()");
    Object localObject;
    if (paramArrayOfLong == null)
      localObject = "";
    while (true)
    {
      return localObject;
      int i = paramArrayOfLong.length;
      localObject = "";
      int j = 0;
      while (j < i)
      {
        long l = paramArrayOfLong[j];
        String str = (String)localObject + " " + l;
        j++;
        localObject = str;
      }
    }
  }

  public final a a(int paramInt)
  {
    try
    {
      this.f = paramInt;
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final a a(long paramLong)
  {
    try
    {
      this.a = paramLong;
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final a a(long[] paramArrayOfLong)
  {
    try
    {
      this.g = paramArrayOfLong;
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String a()
  {
    try
    {
      String str = this.c;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final a b(long paramLong)
  {
    try
    {
      this.d = paramLong;
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean b()
  {
    try
    {
      boolean bool = this.b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long c()
  {
    try
    {
      long l = this.d;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final a c(long paramLong)
  {
    try
    {
      this.e = paramLong;
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long d()
  {
    try
    {
      long l = this.e;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int e()
  {
    try
    {
      int i = this.f;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long[] f()
  {
    try
    {
      long[] arrayOfLong = this.g;
      return arrayOfLong;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean g()
  {
    try
    {
      boolean bool = this.h;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String toString()
  {
    return "cid " + this.a + " , isSystemCount " + this.b + " , countId " + this.c + " , startTime " + this.d + " , updateTime " + this.e + " , countTime " + this.f + " , countValue " + b(this.g) + " , isLocalRecord " + this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.a.a
 * JD-Core Version:    0.6.2
 */