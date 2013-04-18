package com.keniu.security.a;

import java.io.IOException;

public final class q
{
  private static final int f = 1835009;
  public String[] a;
  private int[] b;
  private int[] c;
  private int[] d;
  private int[] e;

  private static final int a(int[] paramArrayOfInt, int paramInt)
  {
    int i = paramArrayOfInt[(paramInt / 4)];
    if (paramInt % 4 / 2 == 0);
    for (int j = i & 0xFFFF; ; j = i >>> 16)
      return j;
  }

  public static q a(l paraml)
  {
    int i = paraml.a();
    if (i != 1835009)
      throw new IOException("Expected chunk of type 0x" + Integer.toHexString(1835009) + ", read 0x" + Integer.toHexString(i) + ".");
    int j = paraml.a();
    int k = paraml.a();
    int m = paraml.a();
    paraml.a();
    int n = paraml.a();
    int i1 = paraml.a();
    q localq = new q();
    localq.b = paraml.a(k);
    if (m != 0)
      localq.d = paraml.a(m);
    if (i1 == 0);
    int i3;
    for (int i2 = j; ; i2 = i1)
    {
      i3 = i2 - n;
      if (i3 % 4 == 0)
        break;
      throw new IOException("String data size is not multiple of 4 (" + i3 + ").");
    }
    localq.c = paraml.a(i3 / 4);
    if (i1 != 0)
    {
      int i5 = j - i1;
      if (i5 % 4 != 0)
        throw new IOException("Style data size is not multiple of 4 (" + i5 + ").");
      localq.e = paraml.a(i5 / 4);
    }
    localq.a = new String[localq.a()];
    for (int i4 = 0; i4 != localq.a(); i4++)
      localq.a[i4] = localq.a(i4);
    return localq;
  }

  private CharSequence b(int paramInt)
  {
    String str = a(paramInt);
    if (str == null);
    for (Object localObject = null; ; localObject = new i(str))
      return localObject;
  }

  private String c(int paramInt)
  {
    String str = a(paramInt);
    if (str == null);
    Object localObject;
    StringBuilder localStringBuilder;
    label60: int k;
    while (true)
    {
      return str;
      if ((this.d == null) || (this.e == null) || (paramInt >= this.d.length))
        localObject = null;
      while (localObject != null)
      {
        localStringBuilder = new StringBuilder(32 + str.length());
        i = 0;
        int j = 0;
        k = -1;
        while (j != localObject.length)
        {
          if ((localObject[(j + 1)] != -1) && ((k == -1) || (localObject[(k + 1)] > localObject[(j + 1)])))
            k = j;
          j += 3;
        }
        int i3 = this.d[paramInt] / 4;
        int i4 = i3;
        int i5 = 0;
        while ((i4 < this.e.length) && (this.e[i4] != -1))
        {
          i5++;
          i4++;
        }
        if ((i5 == 0) || (i5 % 3 != 0))
        {
          localObject = null;
        }
        else
        {
          int[] arrayOfInt1 = new int[i5];
          int i6 = i3;
          int i7 = 0;
          while ((i6 < this.e.length) && (this.e[i6] != -1))
          {
            int i8 = i7 + 1;
            int[] arrayOfInt2 = this.e;
            int i9 = i6 + 1;
            arrayOfInt1[i7] = arrayOfInt2[i6];
            i7 = i8;
            i6 = i9;
          }
          localObject = arrayOfInt1;
        }
      }
    }
    if (k != -1);
    int n;
    for (int m = localObject[(k + 1)]; ; m = str.length())
    {
      n = i;
      for (int i1 = 0; i1 != localObject.length; i1 += 3)
      {
        int i2 = localObject[(i1 + 2)];
        if ((i2 != -1) && (i2 < m))
        {
          if (n <= i2)
          {
            localStringBuilder.append(str, n, i2 + 1);
            n = i2 + 1;
          }
          localObject[(i1 + 2)] = -1;
          localStringBuilder.append('<');
          localStringBuilder.append('/');
          localStringBuilder.append(a(localObject[i1]));
          localStringBuilder.append('>');
        }
      }
    }
    if (n < m)
      localStringBuilder.append(str, n, m);
    for (int i = m; ; i = n)
    {
      if (k != -1)
      {
        localStringBuilder.append('<');
        localStringBuilder.append(a(localObject[k]));
        localStringBuilder.append('>');
        localObject[(k + 1)] = -1;
        break label60;
      }
      str = localStringBuilder.toString();
      break;
    }
  }

  private int[] d(int paramInt)
  {
    Object localObject;
    if ((this.d == null) || (this.e == null) || (paramInt >= this.d.length))
      localObject = null;
    while (true)
    {
      return localObject;
      int i = this.d[paramInt] / 4;
      int j = i;
      int k = 0;
      while ((j < this.e.length) && (this.e[j] != -1))
      {
        k++;
        j++;
      }
      if ((k == 0) || (k % 3 != 0))
      {
        localObject = null;
      }
      else
      {
        int[] arrayOfInt1 = new int[k];
        int m = i;
        int n = 0;
        while ((m < this.e.length) && (this.e[m] != -1))
        {
          int i1 = n + 1;
          int[] arrayOfInt2 = this.e;
          int i2 = m + 1;
          arrayOfInt1[n] = arrayOfInt2[m];
          n = i1;
          m = i2;
        }
        localObject = arrayOfInt1;
      }
    }
  }

  public final int a()
  {
    if (this.b != null);
    for (int i = this.b.length; ; i = 0)
      return i;
  }

  public final int a(String paramString)
  {
    int i;
    if (paramString == null)
      i = -1;
    while (true)
    {
      return i;
      for (i = 0; ; i++)
      {
        if (i == this.b.length)
          break label98;
        int j = this.b[i];
        int k = a(this.c, j);
        if (k == paramString.length())
        {
          int m = j;
          for (int n = 0; n != k; n++)
          {
            m += 2;
            if (paramString.charAt(n) != a(this.c, m))
              break;
          }
          if (n == k)
            break;
        }
      }
      label98: i = -1;
    }
  }

  public final String a(int paramInt)
  {
    if ((paramInt < 0) || (this.b == null) || (paramInt >= this.b.length));
    StringBuilder localStringBuilder;
    for (String str = null; ; str = localStringBuilder.toString())
    {
      return str;
      int i = this.b[paramInt];
      int j = a(this.c, i);
      localStringBuilder = new StringBuilder(j);
      int k = i;
      for (int m = j; m != 0; m--)
      {
        k += 2;
        localStringBuilder.append((char)a(this.c, k));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.q
 * JD-Core Version:    0.6.2
 */