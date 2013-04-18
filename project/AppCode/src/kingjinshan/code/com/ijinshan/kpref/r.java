package com.ijinshan.kpref;

final class r
  implements Comparable
{
  private int a;
  private int b;
  private String c;

  private r(byte paramByte)
  {
  }

  private int a(r paramr)
  {
    int i = this.c.compareTo(paramr.c);
    if (i == 0)
    {
      if (this.a != paramr.a)
        break label55;
      if (this.b != paramr.b)
        break label42;
      i = 0;
    }
    while (true)
    {
      return i;
      label42: i = this.b - paramr.b;
      continue;
      label55: i = this.a - paramr.a;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.r
 * JD-Core Version:    0.6.2
 */