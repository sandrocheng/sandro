package com.b.a;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class gf extends RuntimeException
{
  private static final long a = -7466929953374883507L;
  private final List b;

  public gf()
  {
    super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    this.b = null;
  }

  public gf(List paramList)
  {
    super(a(paramList));
    this.b = paramList;
  }

  private static String a(List paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder("Message missing required fields: ");
    int i = 1;
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (i != 0)
        i = 0;
      while (true)
      {
        localStringBuilder.append(str);
        break;
        localStringBuilder.append(", ");
      }
    }
    return localStringBuilder.toString();
  }

  private List b()
  {
    return Collections.unmodifiableList(this.b);
  }

  public final es a()
  {
    return new es(getMessage());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gf
 * JD-Core Version:    0.6.2
 */