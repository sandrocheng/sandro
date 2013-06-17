package com.google.b.a;

import java.math.BigInteger;

public final class c extends Number
{
  private final String a;

  public c(String paramString)
  {
    this.a = paramString;
  }

  public double doubleValue()
  {
    return Double.parseDouble(this.a);
  }

  public float floatValue()
  {
    return Float.parseFloat(this.a);
  }

  public int intValue()
  {
    try
    {
      int j = Integer.parseInt(this.a);
      i = j;
      return i;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      while (true)
        try
        {
          long l = Long.parseLong(this.a);
          i = (int)l;
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          int i = new BigInteger(this.a).intValue();
        }
    }
  }

  public long longValue()
  {
    try
    {
      long l2 = Long.parseLong(this.a);
      l1 = l2;
      return l1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        long l1 = new BigInteger(this.a).longValue();
    }
  }

  public String toString()
  {
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.c
 * JD-Core Version:    0.6.2
 */