package org.achartengine.b;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
  implements Serializable
{
  private static final long a = -700236387745620951L;
  private String b;
  private List c = new ArrayList();
  private List d = new ArrayList();

  public a(String paramString)
  {
    this.b = paramString;
  }

  private void a(int paramInt)
  {
    try
    {
      this.c.remove(paramInt);
      this.d.remove(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(int paramInt, String paramString, double paramDouble)
  {
    try
    {
      this.c.set(paramInt, paramString);
      this.d.set(paramInt, Double.valueOf(paramDouble));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(String paramString, double paramDouble)
  {
    try
    {
      this.c.add(paramString);
      this.d.add(Double.valueOf(paramDouble));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private double b(int paramInt)
  {
    try
    {
      double d1 = ((Double)this.d.get(paramInt)).doubleValue();
      return d1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private String b()
  {
    return this.b;
  }

  private String c(int paramInt)
  {
    try
    {
      String str = (String)this.c.get(paramInt);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void c()
  {
    try
    {
      this.c.clear();
      this.d.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private int d()
  {
    try
    {
      int i = this.c.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final d a()
  {
    int i = 0;
    d locald = new d(this.b, (byte)0);
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      double d1 = ((Double)localIterator.next()).doubleValue();
      i++;
      locald.a(i, d1);
    }
    return locald;
  }

  public final void a(double paramDouble)
  {
    try
    {
      a(this.c.size() + "", paramDouble);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.b.a
 * JD-Core Version:    0.6.2
 */