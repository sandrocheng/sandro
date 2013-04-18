package com.hoi.widget;

import java.util.Formatter;

final class v
  implements x
{
  final StringBuilder a = new StringBuilder();
  final Formatter b = new Formatter(this.a);
  final Object[] c = new Object[1];

  public final String a(int paramInt)
  {
    this.c[0] = Integer.valueOf(paramInt);
    this.a.delete(0, this.a.length());
    this.b.format("%d", this.c);
    return this.b.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.v
 * JD-Core Version:    0.6.2
 */