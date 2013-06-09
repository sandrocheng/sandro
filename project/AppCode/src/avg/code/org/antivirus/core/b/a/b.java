package org.antivirus.core.b.a;

import java.util.Vector;

public final class b
{
  Vector a = new Vector();
  o b;
  private char[] c = { 65, 66, 67, 68, 69, 70, 71, 72, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 54, 55, 56, 57 };
  private char[] d = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 54, 55, 57 };

  public b(o paramo)
  {
    this.b = paramo;
  }

  private char[] a()
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

  private int b()
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

  public final char a(int paramInt)
  {
    int i = b(paramInt * 5, 5);
    if (i >= b())
      throw new a(999L);
    return a()[i];
  }

  public final void a(char paramChar)
  {
    int i = 0;
    char[] arrayOfChar = a();
    int j = b();
    int k = 0;
    if (k < j)
      if (paramChar != arrayOfChar[k]);
    while (true)
    {
      if (k != -1)
        break label60;
      throw new a(999L);
      k++;
      break;
      k = -1;
    }
    label60: b localb = new b(this.b);
    localb.a.clear();
    localb.a(k, 0);
    while (i < localb.a.size())
    {
      this.a.add(localb.a.get(i));
      i++;
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    int i = 1;
    int j = 0;
    if (j < 5)
    {
      int k;
      label20: Byte localByte;
      if ((paramInt1 & i) != 0)
      {
        k = 1;
        localByte = Byte.valueOf((byte)k);
        if (paramInt2 >= this.a.size())
          break label73;
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
        break label20;
        label73: this.a.add(localByte);
      }
    }
  }

  public final int b(int paramInt1, int paramInt2)
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.b.a.b
 * JD-Core Version:    0.6.2
 */