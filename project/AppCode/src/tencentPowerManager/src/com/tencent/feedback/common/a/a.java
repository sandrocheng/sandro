package com.tencent.feedback.common.a;

public class a
{
  private long a = -1L;
  private int b = -1;
  private int c = -1;
  private long d = -1L;
  private byte[] e = null;
  private long f = 0L;

  public a()
  {
  }

  public a(int paramInt1, int paramInt2, long paramLong, byte[] paramArrayOfByte)
  {
    this.b = paramInt1;
    this.c = 0;
    this.d = paramLong;
    this.e = paramArrayOfByte;
    if (paramArrayOfByte != null)
      this.f = paramArrayOfByte.length;
  }

  public final long a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.b = paramInt;
  }

  public final void a(long paramLong)
  {
    this.a = paramLong;
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.e = paramArrayOfByte;
  }

  public final int b()
  {
    return this.b;
  }

  public final void b(int paramInt)
  {
    this.c = paramInt;
  }

  public final void b(long paramLong)
  {
    this.d = paramLong;
  }

  public final int c()
  {
    return this.c;
  }

  public final void c(long paramLong)
  {
    this.f = paramLong;
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
      int i = this.b;
      int j = locala.b;
      bool1 = false;
      if (i == j)
      {
        boolean bool3 = this.d < locala.d;
        bool1 = false;
        if (!bool3)
        {
          int k = this.c;
          int m = locala.c;
          bool1 = false;
          if (k == m)
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
                int n = this.e.length;
                int i1 = locala.e.length;
                bool1 = false;
                if (n == i1)
                {
                  for (int i2 = 0; ; i2++)
                  {
                    if (i2 >= this.e.length)
                      break label202;
                    int i3 = this.e[i2];
                    int i4 = locala.e[i2];
                    bool1 = false;
                    if (i3 != i4)
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

  public String toString()
  {
    return "type:" + this.b + "priority" + this.c + "time" + this.d + "dateLength" + this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.a.a
 * JD-Core Version:    0.6.2
 */