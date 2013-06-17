package a.a;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class r extends AbstractList
  implements n, RandomAccess
{
  private final n a;

  public r(n paramn)
  {
    this.a = paramn;
  }

  public final c a(int paramInt)
  {
    return this.a.a(paramInt);
  }

  public final void a(c paramc)
  {
    throw new UnsupportedOperationException();
  }

  public final Iterator iterator()
  {
    return new t(this);
  }

  public final ListIterator listIterator(int paramInt)
  {
    return new s(this, paramInt);
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.r
 * JD-Core Version:    0.6.2
 */