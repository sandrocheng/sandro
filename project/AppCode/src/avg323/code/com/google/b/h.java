package com.google.b;

import com.google.b.a.a;
import com.google.b.a.c;
import java.math.BigInteger;

public final class h extends b
{
  private static final Class[] a = arrayOfClass;
  private Object b;

  static
  {
    Class[] arrayOfClass = new Class[16];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Long.TYPE;
    arrayOfClass[2] = Short.TYPE;
    arrayOfClass[3] = Float.TYPE;
    arrayOfClass[4] = Double.TYPE;
    arrayOfClass[5] = Byte.TYPE;
    arrayOfClass[6] = Boolean.TYPE;
    arrayOfClass[7] = Character.TYPE;
    arrayOfClass[8] = Integer.class;
    arrayOfClass[9] = Long.class;
    arrayOfClass[10] = Short.class;
    arrayOfClass[11] = Float.class;
    arrayOfClass[12] = Double.class;
    arrayOfClass[13] = Byte.class;
    arrayOfClass[14] = Boolean.class;
    arrayOfClass[15] = Character.class;
  }

  public h(Boolean paramBoolean)
  {
    a(paramBoolean);
  }

  public h(Number paramNumber)
  {
    a(paramNumber);
  }

  public h(String paramString)
  {
    a(paramString);
  }

  private static boolean a(h paramh)
  {
    boolean bool;
    if ((paramh.b instanceof Number))
    {
      Number localNumber = (Number)paramh.b;
      if (((localNumber instanceof BigInteger)) || ((localNumber instanceof Long)) || ((localNumber instanceof Integer)) || ((localNumber instanceof Short)) || ((localNumber instanceof Byte)))
        bool = true;
    }
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }

  private static boolean b(Object paramObject)
  {
    boolean bool = true;
    if ((paramObject instanceof String));
    while (true)
    {
      return bool;
      Class localClass = paramObject.getClass();
      Class[] arrayOfClass = a;
      int i = arrayOfClass.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label51;
        if (arrayOfClass[j].isAssignableFrom(localClass))
          break;
      }
      label51: bool = false;
    }
  }

  void a(Object paramObject)
  {
    if ((paramObject instanceof Character))
    {
      this.b = String.valueOf(((Character)paramObject).charValue());
      return;
    }
    if (((paramObject instanceof Number)) || (b(paramObject)));
    for (boolean bool = true; ; bool = false)
    {
      a.a(bool);
      this.b = paramObject;
      break;
    }
  }

  public boolean a()
  {
    return this.b instanceof Boolean;
  }

  public Number b()
  {
    if ((this.b instanceof String));
    for (Object localObject = new c((String)this.b); ; localObject = (Number)this.b)
      return localObject;
  }

  public String c()
  {
    String str;
    if (n())
      str = b().toString();
    while (true)
    {
      return str;
      if (a())
        str = m().toString();
      else
        str = (String)this.b;
    }
  }

  public int d()
  {
    if (n());
    for (int i = b().intValue(); ; i = Integer.parseInt(c()))
      return i;
  }

  public boolean e()
  {
    if (a());
    for (boolean bool = m().booleanValue(); ; bool = Boolean.parseBoolean(c()))
      return bool;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    if (this == paramObject);
    while (true)
    {
      return bool1;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
      {
        bool1 = false;
      }
      else
      {
        h localh = (h)paramObject;
        if (this.b == null)
        {
          if (localh.b != null)
            bool1 = false;
        }
        else if ((a(this)) && (a(localh)))
        {
          if (b().longValue() != localh.b().longValue())
            bool1 = false;
        }
        else if (((this.b instanceof Number)) && ((localh.b instanceof Number)))
        {
          double d1 = b().doubleValue();
          double d2 = localh.b().doubleValue();
          boolean bool2;
          if (d1 != d2)
          {
            boolean bool3 = Double.isNaN(d1);
            bool2 = false;
            if (bool3)
            {
              boolean bool4 = Double.isNaN(d2);
              bool2 = false;
              if (!bool4);
            }
          }
          else
          {
            bool2 = bool1;
          }
          bool1 = bool2;
        }
        else
        {
          bool1 = this.b.equals(localh.b);
        }
      }
    }
  }

  public int hashCode()
  {
    int i;
    if (this.b == null)
      i = 31;
    while (true)
    {
      return i;
      if (a(this))
      {
        long l2 = b().longValue();
        i = (int)(l2 ^ l2 >>> 32);
      }
      else if ((this.b instanceof Number))
      {
        long l1 = Double.doubleToLongBits(b().doubleValue());
        i = (int)(l1 ^ l1 >>> 32);
      }
      else
      {
        i = this.b.hashCode();
      }
    }
  }

  Boolean m()
  {
    return (Boolean)this.b;
  }

  public boolean n()
  {
    return this.b instanceof Number;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.h
 * JD-Core Version:    0.6.2
 */