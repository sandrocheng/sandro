package com.tencent.feedback.common.a;

import java.io.Serializable;

public class e
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
  private int n = -1;
  private byte[] o;

  public final String a()
  {
    return this.b;
  }

  public final void a(int paramInt)
  {
    this.n = paramInt;
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
    this.o = paramArrayOfByte;
  }

  public final String b()
  {
    return this.d;
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

  public boolean equals(Object paramObject)
  {
    boolean bool1 = e.class.isInstance(paramObject);
    boolean bool2 = false;
    if (bool1)
    {
      bool2 = false;
      if (paramObject != null)
        break label21;
    }
    while (true)
    {
      return bool2;
      label21: e locale = (e)e.class.cast(paramObject);
      boolean bool3 = locale.b.equals(this.b);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = locale.i.equals(this.c);
        bool2 = false;
        if (bool4)
        {
          boolean bool5 = locale.d.equals(this.d);
          bool2 = false;
          if (bool5)
          {
            boolean bool6 = null.equals(null);
            bool2 = false;
            if (bool6)
            {
              boolean bool7 = null.equals(null);
              bool2 = false;
              if (bool7)
              {
                boolean bool8 = locale.e.equals(this.e);
                bool2 = false;
                if (bool8)
                {
                  boolean bool9 = locale.f.equals(this.f);
                  bool2 = false;
                  if (bool9)
                  {
                    boolean bool10 = locale.g.equals(this.g);
                    bool2 = false;
                    if (bool10)
                    {
                      boolean bool11 = locale.h < this.h;
                      bool2 = false;
                      if (!bool11)
                      {
                        boolean bool12 = locale.i.equals(this.i);
                        bool2 = false;
                        if (bool12)
                        {
                          boolean bool13 = locale.j.equals(this.j);
                          bool2 = false;
                          if (bool13)
                          {
                            boolean bool14 = 0L < 0L;
                            bool2 = false;
                            if (!bool14)
                            {
                              boolean bool15 = locale.k < this.k;
                              bool2 = false;
                              if (!bool15)
                              {
                                boolean bool16 = locale.l < this.l;
                                bool2 = false;
                                if (!bool16)
                                {
                                  boolean bool17 = locale.m.equals(this.m);
                                  bool2 = false;
                                  if (bool17)
                                  {
                                    int i1 = locale.n;
                                    int i2 = this.n;
                                    bool2 = false;
                                    if (i1 == i2)
                                      if ((locale.o != null) && (this.o != null) && (locale.o.length == this.o.length))
                                      {
                                        for (int i3 = 0; ; i3++)
                                        {
                                          if (i3 >= locale.o.length)
                                            break label417;
                                          int i4 = locale.o[i3];
                                          int i5 = this.o[i3];
                                          bool2 = false;
                                          if (i4 != i5)
                                            break;
                                        }
                                        label417: bool2 = true;
                                      }
                                      else
                                      {
                                        byte[] arrayOfByte1 = locale.o;
                                        bool2 = false;
                                        if (arrayOfByte1 == null)
                                        {
                                          byte[] arrayOfByte2 = this.o;
                                          bool2 = false;
                                          if (arrayOfByte2 == null)
                                            bool2 = true;
                                        }
                                      }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
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

  public final String k()
  {
    return this.g;
  }

  public final int l()
  {
    return this.n;
  }

  public final long m()
  {
    return this.a;
  }

  public final byte[] n()
  {
    return this.o;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("exception_Type:").append(this.b).append("\n").append("error_MESSAGE:").append(this.c).append("\n").append("thread_NAME:").append(this.d).append("\n").append("pkg_NAME:").append(null).append("\n").append("pkg_VERSION_NAME:").append(null).append("\n").append("exception_ADDRESS:").append(this.e).append("\n").append("stack_TRACE:").append(this.f).append("\n").append("causeBY:").append(this.g).append("\n").append("exception_TIME:").append(this.h).append("\n").append("battery:").append(this.i).append("\n").append("cup:").append(this.j).append("\n").append("freeMem:").append(0L).append("\n").append("freeStorage:").append(this.k).append("\n").append("freeSDCard:").append(this.l).append("\n").append("platform:").append(this.m).append("\n").append("log:");
    if (this.o == null);
    for (Object localObject = "0"; ; localObject = Integer.valueOf(this.o.length))
      return localObject + "\n" + "recordtype:" + this.n;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.a.e
 * JD-Core Version:    0.6.2
 */