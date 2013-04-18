package com.b.a;

import java.util.AbstractList;
import java.util.List;

final class ff extends AbstractList
  implements List
{
  fc a;

  ff(fc paramfc)
  {
    this.a = paramfc;
  }

  private fa a(int paramInt)
  {
    return this.a.c(paramInt);
  }

  final void a()
  {
    this.modCount = (1 + this.modCount);
  }

  public final int size()
  {
    return this.a.c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ff
 * JD-Core Version:    0.6.2
 */