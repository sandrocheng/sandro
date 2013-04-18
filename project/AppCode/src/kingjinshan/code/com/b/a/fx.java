package com.b.a;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class fx extends AbstractSet
{
  private fx(fq paramfq, byte paramByte)
  {
  }

  private boolean a(Map.Entry paramEntry)
  {
    if (!contains(paramEntry))
      this.a.a((Comparable)paramEntry.getKey(), paramEntry.getValue());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final boolean contains(Object paramObject)
  {
    Map.Entry localEntry = (Map.Entry)paramObject;
    Object localObject1 = this.a.get(localEntry.getKey());
    Object localObject2 = localEntry.getValue();
    if ((localObject1 == localObject2) || ((localObject1 != null) && (localObject1.equals(localObject2))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final Iterator iterator()
  {
    return new fw(this.a);
  }

  public final boolean remove(Object paramObject)
  {
    Map.Entry localEntry = (Map.Entry)paramObject;
    if (contains(localEntry))
      this.a.remove(localEntry.getKey());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.fx
 * JD-Core Version:    0.6.2
 */