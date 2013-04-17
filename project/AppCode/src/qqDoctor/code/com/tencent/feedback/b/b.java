package com.tencent.feedback.b;

import java.io.Serializable;

public class b
  implements Serializable
{
  private String a;
  private long b;
  private String c;

  public final String a()
  {
    return this.a;
  }

  public final void a(long paramLong)
  {
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final long b()
  {
    return this.b;
  }

  public final void b(long paramLong)
  {
    this.b = paramLong;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final String c()
  {
    return this.c;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (!b.class.isInstance(paramObject))
      bool = false;
    while (true)
    {
      return bool;
      b localb = (b)b.class.cast(paramObject);
      if ((localb.c.equals(this.c)) && (localb.b == this.b) && (localb.a.equals(this.a)))
        bool = true;
      else
        bool = false;
    }
  }

  public String toString()
  {
    return "type:" + this.a + "\n" + "time:" + this.b + "\n" + "dest:" + this.c + "\n";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.b.b
 * JD-Core Version:    0.6.2
 */