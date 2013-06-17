package a.a;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public final class m extends AbstractList
  implements n, RandomAccess
{
  public static final n a = new r(new m());
  private final List b;

  public m()
  {
    this.b = new ArrayList();
  }

  public m(List paramList)
  {
    this.b = new ArrayList(paramList);
  }

  private static String a(Object paramObject)
  {
    if ((paramObject instanceof String));
    for (String str = (String)paramObject; ; str = ((c)paramObject).b())
      return str;
  }

  public final c a(int paramInt)
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

  public final void a(c paramc)
  {
    this.b.add(paramc);
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.m
 * JD-Core Version:    0.6.2
 */