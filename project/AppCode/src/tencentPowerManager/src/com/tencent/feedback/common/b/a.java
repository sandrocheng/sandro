package com.tencent.feedback.common.b;

public class a
{
  private String a = "*^@K#K@!";
  private int b = -1;
  private String c = "S(@L@L@)";
  private int d = -1;

  public final String a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.b = paramInt;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final int b()
  {
    return this.b;
  }

  public final void b(int paramInt)
  {
    this.d = paramInt;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final int c()
  {
    return this.d;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == null)
      bool = false;
    while (true)
    {
      return bool;
      if (a.class.isInstance(paramObject))
      {
        a locala = (a)a.class.cast(paramObject);
        if (locala.b != this.b)
          bool = false;
        else if (!locala.a.equals(this.a))
          bool = false;
        else if (!locala.c.equals(this.c))
          bool = false;
        else if (locala.d != this.d)
          bool = false;
        else
          bool = true;
      }
      else
      {
        bool = false;
      }
    }
  }

  public String toString()
  {
    return "encryKey:" + this.a + "\n" + "encryAlgorithm:" + this.b + "\n" + "pubEncryKey:" + this.c + "\n" + "zipAlgorithm:" + this.d + "\n";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.b.a
 * JD-Core Version:    0.6.2
 */