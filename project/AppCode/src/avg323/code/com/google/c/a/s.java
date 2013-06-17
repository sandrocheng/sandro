package com.google.c.a;

import java.util.LinkedHashMap;

class s
{
  private LinkedHashMap a;
  private int b;

  public s(int paramInt)
  {
    this.b = paramInt;
    this.a = new t(this, 1 + paramInt * 4 / 3, 0.75F, true);
  }

  public Object a(Object paramObject)
  {
    try
    {
      Object localObject2 = this.a.get(paramObject);
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  public void a(Object paramObject1, Object paramObject2)
  {
    try
    {
      this.a.put(paramObject1, paramObject2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.s
 * JD-Core Version:    0.6.2
 */