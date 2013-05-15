package com.google.a;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public class y extends AbstractList
  implements z, RandomAccess
{
  public static final z a = new am(new y());
  private final List b;

  public y()
  {
    this.b = new ArrayList();
  }

  public y(List paramList)
  {
    this.b = new ArrayList(paramList);
  }

  private String a(Object paramObject)
  {
    if ((paramObject instanceof String));
    for (String str = (String)paramObject; ; str = ((c)paramObject).b())
      return str;
  }

  public String a(int paramInt)
  {
    Object localObject1 = this.b.get(paramInt);
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.b.set(paramInt, str);
    }
  }

  public String a(int paramInt, String paramString)
  {
    return a(this.b.set(paramInt, paramString));
  }

  public void a(c paramc)
  {
    this.b.add(paramc);
    this.modCount = (1 + this.modCount);
  }

  public boolean addAll(int paramInt, Collection paramCollection)
  {
    boolean bool = this.b.addAll(paramInt, paramCollection);
    this.modCount = (1 + this.modCount);
    return bool;
  }

  public String b(int paramInt)
  {
    Object localObject = this.b.remove(paramInt);
    this.modCount = (1 + this.modCount);
    return a(localObject);
  }

  public void b(int paramInt, String paramString)
  {
    this.b.add(paramInt, paramString);
    this.modCount = (1 + this.modCount);
  }

  public c c(int paramInt)
  {
    Object localObject = this.b.get(paramInt);
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.b.set(paramInt, localc);
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  public void clear()
  {
    this.b.clear();
    this.modCount = (1 + this.modCount);
  }

  public int size()
  {
    return this.b.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.y
 * JD-Core Version:    0.6.2
 */