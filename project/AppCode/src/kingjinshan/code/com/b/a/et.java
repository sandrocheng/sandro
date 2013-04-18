package com.b.a;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public final class et extends AbstractList
  implements eu, RandomAccess
{
  public static final eu a = new gl(new et());
  private final List b;

  public et()
  {
    this.b = new ArrayList();
  }

  public et(List paramList)
  {
    this.b = new ArrayList(paramList);
  }

  private String a(int paramInt, String paramString)
  {
    return a(this.b.set(paramInt, paramString));
  }

  private static String a(Object paramObject)
  {
    if ((paramObject instanceof String));
    for (String str = (String)paramObject; ; str = ((i)paramObject).b())
      return str;
  }

  private String b(int paramInt)
  {
    Object localObject1 = this.b.get(paramInt);
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.b.set(paramInt, str);
    }
  }

  private void b(int paramInt, String paramString)
  {
    this.b.add(paramInt, paramString);
    this.modCount = (1 + this.modCount);
  }

  private String c(int paramInt)
  {
    Object localObject = this.b.remove(paramInt);
    this.modCount = (1 + this.modCount);
    return a(localObject);
  }

  public final i a(int paramInt)
  {
    Object localObject = this.b.get(paramInt);
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.b.set(paramInt, locali);
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  public final void a(i parami)
  {
    this.b.add(parami);
    this.modCount = (1 + this.modCount);
  }

  public final boolean addAll(int paramInt, Collection paramCollection)
  {
    boolean bool = this.b.addAll(paramInt, paramCollection);
    this.modCount = (1 + this.modCount);
    return bool;
  }

  public final void clear()
  {
    this.b.clear();
    this.modCount = (1 + this.modCount);
  }

  public final int size()
  {
    return this.b.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.et
 * JD-Core Version:    0.6.2
 */