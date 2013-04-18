package com.keniu.security.util;

import java.util.HashMap;

public final class ac
{
  public static ac b = null;
  public HashMap a = new HashMap();

  public static ac a()
  {
    try
    {
      if (b == null)
        b = new ac();
      ac localac = b;
      return localac;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Object a(String paramString)
  {
    try
    {
      boolean bool = this.a.containsKey(paramString);
      Object localObject2 = null;
      if (bool)
        localObject2 = this.a.get(paramString);
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  public final String a(Object paramObject)
  {
    int i = 0;
    try
    {
      String str = Integer.toString(i);
      if (!this.a.containsKey(str))
      {
        this.a.put(str, paramObject);
        return str;
      }
      i++;
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ac
 * JD-Core Version:    0.6.2
 */