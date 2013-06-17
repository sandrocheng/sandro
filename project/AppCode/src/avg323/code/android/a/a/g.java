package android.a.a;

public class g
{
  private int[] a;
  private int[] b;
  private int[] c;
  private int[] d;

  private static final int a(int[] paramArrayOfInt, int paramInt)
  {
    int i = paramArrayOfInt[(paramInt / 4)];
    if (paramInt % 4 / 2 == 0);
    for (int j = i & 0xFFFF; ; j = i >>> 16)
      return j;
  }

  public static g a(e parame)
  {
    d.a(parame, 1835009);
    int i = parame.b();
    int j = parame.b();
    int k = parame.b();
    parame.b();
    int m = parame.b();
    int n = parame.b();
    g localg = new g();
    localg.a = parame.b(j);
    if (k != 0)
      localg.c = parame.b(k);
    int i1;
    int i2;
    label110: int i3;
    if (n == 0)
    {
      i1 = i;
      i2 = i1 - m;
      if (i2 % 4 == 0)
        break label155;
      localg.b = parame.a(i2 / 4, i2 % 4);
      if (n != 0)
      {
        i3 = i - n;
        if (i3 % 4 == 0)
          break label171;
      }
    }
    label155: label171: for (localg.d = parame.a(i3 / 4, i3 % 4); ; localg.d = parame.b(i3 / 4))
    {
      return localg;
      i1 = n;
      break;
      localg.b = parame.b(i2 / 4);
      break label110;
    }
  }

  public int a(String paramString)
  {
    int i;
    if (paramString == null)
      i = -1;
    while (true)
    {
      return i;
      i = 0;
      while (i != this.a.length)
      {
        int j = this.a[i];
        int k = a(this.b, j);
        if (k != paramString.length())
        {
          label45: i++;
        }
        else
        {
          int m = j;
          for (int n = 0; ; n++)
            if (n != k)
            {
              m += 2;
              if (paramString.charAt(n) == a(this.b, m));
            }
            else
            {
              if (n != k)
                break label45;
              break;
            }
        }
      }
      i = -1;
    }
  }

  public String a(int paramInt)
  {
    if ((paramInt < 0) || (this.a == null) || (paramInt >= this.a.length));
    StringBuilder localStringBuilder;
    for (String str = null; ; str = localStringBuilder.toString())
    {
      return str;
      int i = this.a[paramInt];
      int j = a(this.b, i);
      localStringBuilder = new StringBuilder(j);
      while (j != 0)
      {
        i += 2;
        localStringBuilder.append((char)a(this.b, i));
        j--;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.a.a.g
 * JD-Core Version:    0.6.2
 */