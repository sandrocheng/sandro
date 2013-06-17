package com.avg.toolkit.e.a;

import java.util.Vector;

public class b
{
  Vector a = new Vector();
  o b;
  private char[] c = { 65, 66, 67, 68, 69, 70, 71, 72, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 54, 55, 56, 57 };
  private char[] d = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 54, 55, 57 };

  public b(o paramo)
  {
    this.b = paramo;
  }

  public char a(int paramInt)
  {
    int i = b(paramInt * 5, 5);
    if (i >= c())
      throw new a(999L);
    return b()[i];
  }

  public int a()
  {
    return this.a.size();
  }

  int a(char[] paramArrayOfChar, char paramChar, int paramInt)
  {
    int i = 0;
    if (i < paramInt)
      if (paramChar != paramArrayOfChar[i]);
    while (true)
    {
      return i;
      i++;
      break;
      i = -1;
    }
  }

  public void a(char paramChar)
  {
    int i = a(b(), paramChar, c());
    if (i == -1)
      throw new a(999L);
    b localb = new b(this.b);
    localb.a(i, 5);
    b(localb);
  }

  void a(int paramInt1, int paramInt2)
  {
    this.a.clear();
    a(paramInt1, 0, paramInt2);
  }

  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 1;
    int j = 0;
    if (j < paramInt3)
    {
      int k;
      label22: Byte localByte;
      if ((paramInt1 & i) != 0)
      {
        k = 1;
        localByte = Byte.valueOf((byte)k);
        if (paramInt2 >= this.a.size())
          break label77;
        this.a.set(paramInt2, localByte);
      }
      while (true)
      {
        paramInt2++;
        int m = i * 2;
        j++;
        i = m;
        break;
        k = 0;
        break label22;
        label77: this.a.add(localByte);
      }
    }
  }

  public void a(b paramb)
  {
    this.a.clear();
    this.a = paramb.a;
  }

  public int b(int paramInt1, int paramInt2)
  {
    int i = 0;
    if (paramInt1 + paramInt2 > this.a.size())
      throw new a(999L);
    int j = 1;
    int k = 0;
    if (k < paramInt2)
      if (((Byte)this.a.get(paramInt1 + k)).byteValue() == 0)
        break label85;
    label85: for (int m = i | j; ; m = i)
    {
      int n = j * 2;
      k++;
      j = n;
      i = m;
      break;
      return i;
    }
  }

  void b(b paramb)
  {
    for (int i = 0; i < paramb.a.size(); i++)
      this.a.add(paramb.a.get(i));
  }

  char[] b()
  {
    switch (c.a[this.b.ordinal()])
    {
    default:
      throw new a(999L);
    case 1:
    case 2:
    case 3:
    }
    for (char[] arrayOfChar = this.c; ; arrayOfChar = this.d)
      return arrayOfChar;
  }

  int c()
  {
    switch (c.a[this.b.ordinal()])
    {
    default:
      throw new a(999L);
    case 1:
    case 2:
    case 3:
    }
    for (int i = this.c.length; ; i = this.d.length)
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.e.a.b
 * JD-Core Version:    0.6.2
 */