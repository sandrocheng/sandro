package com.tencent.feedback.common.a;

public class a
{
  private long a = -1L;
  private int b = -1;
  private int c = -1;
  private long d = -1L;
  private byte[] e = null;
  private long f = 0L;
  private String g = null;
  private int h = 0;
  private String i = null;

  public a()
  {
  }

  public a(int paramInt1, int paramInt2, long paramLong, byte[] paramArrayOfByte)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramLong;
    this.e = paramArrayOfByte;
    if (paramArrayOfByte != null)
      this.f = paramArrayOfByte.length;
  }

  public final long a()
  {
    return this.a;
  }

  public final a a(int paramInt)
  {
    this.b = paramInt;
    return this;
  }

  public final a a(long paramLong)
  {
    this.a = paramLong;
    return this;
  }

  public final a a(String paramString)
  {
    this.g = paramString;
    return this;
  }

  public final a a(byte[] paramArrayOfByte)
  {
    this.e = paramArrayOfByte;
    return this;
  }

  public final int b()
  {
    return this.b;
  }

  public final a b(int paramInt)
  {
    this.c = paramInt;
    return this;
  }

  public final a b(long paramLong)
  {
    this.d = paramLong;
    return this;
  }

  public final a b(String paramString)
  {
    this.i = paramString;
    return this;
  }

  public final int c()
  {
    return this.c;
  }

  public final a c(int paramInt)
  {
    this.h = paramInt;
    return this;
  }

  public final a c(long paramLong)
  {
    this.f = paramLong;
    return this;
  }

  public final long d()
  {
    return this.d;
  }

  public final byte[] e()
  {
    return this.e;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject != null)
    {
      boolean bool2 = a.class.isInstance(paramObject);
      bool1 = false;
      if (bool2)
        break label21;
    }
    while (true)
    {
      return bool1;
      label21: a locala = (a)a.class.cast(paramObject);
      int j = this.b;
      int k = locala.b;
      bool1 = false;
      if (j == k)
      {
        boolean bool3 = this.d < locala.d;
        bool1 = false;
        if (!bool3)
        {
          int m = this.c;
          int n = locala.c;
          bool1 = false;
          if (m == n)
          {
            boolean bool4 = this.f < locala.f;
            bool1 = false;
            if (!bool4)
              if (this.e == locala.e)
              {
                bool1 = true;
              }
              else
              {
                int i1 = this.e.length;
                int i2 = locala.e.length;
                bool1 = false;
                if (i1 == i2)
                {
                  for (int i3 = 0; ; i3++)
                  {
                    if (i3 >= this.e.length)
                      break label202;
                    int i4 = this.e[i3];
                    int i5 = locala.e[i3];
                    bool1 = false;
                    if (i4 != i5)
                      break;
                  }
                  label202: bool1 = true;
                }
              }
          }
        }
      }
    }
  }

  public final long f()
  {
    return this.f;
  }

  public final String g()
  {
    return this.g;
  }

  public final int h()
  {
    return this.h;
  }

  public final String i()
  {
    return this.i;
  }

  public String toString()
  {
    return "type:" + this.b + "priority" + this.c + "time" + this.d + "dateLength" + this.f + " key:" + this.g + " count:" + this.h + " \nallTimes:" + this.i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.a.a
 * JD-Core Version:    0.6.2
 */