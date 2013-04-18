package com.b.a;

import java.util.AbstractList;
import java.util.List;

final class fd extends AbstractList
  implements List
{
  fc a;

  fd(fc paramfc)
  {
    this.a = paramfc;
  }

  private dn a(int paramInt)
  {
    return this.a.b(paramInt);
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
 * Qualified Name:     com.b.a.fd
 * JD-Core Version:    0.6.2
 */