package org.antivirus.widget.a;

public enum d
{
  private int k;
  private int l;
  private int m;

  static
  {
    d[] arrayOfd = new d[10];
    arrayOfd[0] = a;
    arrayOfd[1] = b;
    arrayOfd[2] = c;
    arrayOfd[3] = d;
    arrayOfd[4] = e;
    arrayOfd[5] = f;
    arrayOfd[6] = g;
    arrayOfd[7] = h;
    arrayOfd[8] = i;
    arrayOfd[9] = j;
  }

  private d(int paramInt3, int arg4, int arg5)
  {
    this.k = paramInt3;
    int i1;
    this.l = i1;
    int i2;
    this.m = i2;
  }

  public static d a(int paramInt, boolean paramBoolean)
  {
    d[] arrayOfd;
    int i2;
    label45: d locald2;
    if (paramBoolean)
    {
      arrayOfd = new d[5];
      arrayOfd[0] = j;
      arrayOfd[1] = i;
      arrayOfd[2] = h;
      arrayOfd[3] = g;
      arrayOfd[4] = f;
      int i1 = arrayOfd.length;
      i2 = 0;
      if (i2 >= i1)
        break label126;
      locald2 = arrayOfd[i2];
      if ((paramInt > locald2.m) || (paramInt < locald2.l))
        break label120;
    }
    label120: label126: for (d locald1 = locald2; ; locald1 = f)
    {
      return locald1;
      arrayOfd = new d[5];
      arrayOfd[0] = e;
      arrayOfd[1] = d;
      arrayOfd[2] = c;
      arrayOfd[3] = b;
      arrayOfd[4] = a;
      break;
      i2++;
      break label45;
    }
  }

  public final int a()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.d
 * JD-Core Version:    0.6.2
 */