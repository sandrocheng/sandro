package android.support.v4.view;

final class b
  implements d
{
  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 1;
    int j;
    int k;
    if ((paramInt2 & 0x1) != 0)
    {
      j = i;
      k = paramInt3 | paramInt4;
      if ((k & 0x1) == 0)
        break label51;
    }
    while (true)
      if (j != 0)
      {
        if (i != 0)
        {
          throw new IllegalArgumentException("bad arguments");
          j = 0;
          break;
          label51: i = 0;
          continue;
        }
        paramInt1 &= (k ^ 0xFFFFFFFF);
      }
    while (true)
    {
      return paramInt1;
      if (i != 0)
        paramInt1 &= (paramInt2 ^ 0xFFFFFFFF);
    }
  }

  private static int c(int paramInt)
  {
    if ((paramInt & 0xC0) != 0);
    for (int i = paramInt | 0x1; ; i = paramInt)
    {
      if ((i & 0x30) != 0)
        i |= 2;
      return i & 0xF7;
    }
  }

  public final boolean a(int paramInt)
  {
    int i = 1;
    if (a(a(0xF7 & c(paramInt), i, 64, 128), 2, 16, 32) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final boolean b(int paramInt)
  {
    if ((0xF7 & c(paramInt)) == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.b
 * JD-Core Version:    0.6.2
 */