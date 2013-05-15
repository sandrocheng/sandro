package com.google.a;

final class h
{
  private final Object a;
  private final int b;

  h(Object paramObject, int paramInt)
  {
    this.a = paramObject;
    this.b = paramInt;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof h;
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      h localh = (h)paramObject;
      Object localObject1 = this.a;
      Object localObject2 = localh.a;
      bool2 = false;
      if (localObject1 == localObject2)
      {
        int i = this.b;
        int j = localh.b;
        bool2 = false;
        if (i == j)
          bool2 = true;
      }
    }
  }

  public int hashCode()
  {
    return 65535 * System.identityHashCode(this.a) + this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.h
 * JD-Core Version:    0.6.2
 */