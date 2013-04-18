package com.b.a;

import java.util.AbstractList;
import java.util.List;

final class fe extends AbstractList
  implements List
{
  fc a;

  fe(fc paramfc)
  {
    this.a = paramfc;
  }

  private dk a(int paramInt)
  {
    return this.a.a(paramInt);
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
 * Qualified Name:     com.b.a.fe
 * JD-Core Version:    0.6.2
 */