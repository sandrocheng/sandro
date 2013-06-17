package a.a;

import java.util.ListIterator;

final class s
  implements ListIterator
{
  ListIterator a = r.a(this.c).listIterator(this.b);

  s(r paramr, int paramInt)
  {
  }

  public final boolean hasNext()
  {
    return this.a.hasNext();
  }

  public final boolean hasPrevious()
  {
    return this.a.hasPrevious();
  }

  public final int nextIndex()
  {
    return this.a.nextIndex();
  }

  public final int previousIndex()
  {
    return this.a.previousIndex();
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.s
 * JD-Core Version:    0.6.2
 */