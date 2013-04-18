package com.keniu.security.util.a;

final class b
{
  private String a;
  private String b;
  private int c;

  public b(String paramString1, String paramString2, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramInt;
  }

  public final String a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final int c()
  {
    return this.c;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (this == paramObject)
      bool = true;
    while (true)
    {
      return bool;
      if (paramObject == null)
      {
        bool = false;
      }
      else if (getClass() != paramObject.getClass())
      {
        bool = false;
      }
      else
      {
        b localb = (b)paramObject;
        if (this.a == null)
        {
          if (localb.a != null)
            bool = false;
        }
        else if (!this.a.equals(localb.a))
          bool = false;
        else
          bool = true;
      }
    }
  }

  public final int hashCode()
  {
    if (this.a == null);
    for (int i = 0; ; i = this.a.hashCode())
      return i + 31;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.a.b
 * JD-Core Version:    0.6.2
 */