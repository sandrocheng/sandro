package com.google.b.a;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class g extends AbstractSet
{
  private g(e parame)
  {
  }

  public void clear()
  {
    this.a.clear();
  }

  public boolean contains(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      Map.Entry localEntry = (Map.Entry)paramObject;
      Object localObject = this.a.get(localEntry.getKey());
      bool2 = false;
      if (localObject != null)
      {
        boolean bool3 = localObject.equals(localEntry.getValue());
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
    }
  }

  public Iterator iterator()
  {
    return new h(this);
  }

  public boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry));
    Map.Entry localEntry;
    for (boolean bool = false; ; bool = e.a(this.a, localEntry.getKey(), localEntry.getValue()))
    {
      return bool;
      localEntry = (Map.Entry)paramObject;
    }
  }

  public int size()
  {
    return e.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.g
 * JD-Core Version:    0.6.2
 */