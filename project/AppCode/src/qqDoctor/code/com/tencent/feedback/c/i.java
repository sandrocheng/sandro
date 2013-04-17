package com.tencent.feedback.c;

import com.tencent.feedback.common.g;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class i
  implements Serializable
{
  private long a = -1L;
  private String b;
  private long c;
  private String d;
  private Map e;

  public final long a()
  {
    return this.a;
  }

  public final void a(long paramLong)
  {
    this.a = paramLong;
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final void a(Map paramMap)
  {
    this.e = paramMap;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(long paramLong)
  {
    this.c = paramLong;
  }

  public final void b(String paramString)
  {
    this.d = paramString;
  }

  public final long c()
  {
    return this.c;
  }

  public final String d()
  {
    return this.d;
  }

  public final Map e()
  {
    return this.e;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if ((paramObject == null) || (!i.class.isInstance(paramObject)))
      bool = false;
    while (true)
    {
      return bool;
      i locali = (i)i.class.cast(paramObject);
      if (((locali.d == this.d) || (locali.d.equals(this.d))) && ((locali.b == this.b) || (locali.b.equals(this.b))) && (locali.c == this.c))
      {
        Map localMap = locali.e;
        if ((localMap != null) && (this.e != null) && (localMap.size() == this.e.size()))
        {
          Iterator localIterator = localMap.keySet().iterator();
          while (true)
            if (localIterator.hasNext())
            {
              String str = (String)localIterator.next();
              if (!((String)localMap.get(str)).equals(this.e.get(str)))
              {
                bool = false;
                break;
              }
            }
          bool = true;
        }
      }
      else
      {
        bool = false;
      }
    }
  }

  public String toString()
  {
    return "type:" + this.b + "\n" + "time:" + this.c + "\n" + "name:" + this.d + "\n" + "map:" + g.a(this.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.c.i
 * JD-Core Version:    0.6.2
 */