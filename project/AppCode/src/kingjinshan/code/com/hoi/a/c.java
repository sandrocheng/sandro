package com.hoi.a;

final class c extends b
{
  private static final int[] c = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
  private static final int[] d = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
  private static final int e = -1;
  private static final int f = -2;
  private int g;
  private int h;
  private final int[] i;

  public c(int paramInt, byte[] paramArrayOfByte)
  {
    this.a = paramArrayOfByte;
    if ((paramInt & 0x8) == 0);
    for (int[] arrayOfInt = c; ; arrayOfInt = d)
    {
      this.i = arrayOfInt;
      this.g = 0;
      this.h = 0;
      return;
    }
  }

  public final int a(int paramInt)
  {
    return 10 + paramInt * 3 / 4;
  }

  public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    boolean bool;
    if (this.g == 6)
      bool = false;
    while (true)
    {
      return bool;
      int j = paramInt2 + paramInt1;
      int k = this.g;
      int m = this.h;
      byte[] arrayOfByte = this.a;
      int[] arrayOfInt = this.i;
      int n = k;
      int i1 = 0;
      int i2 = paramInt1;
      label54: if (i2 < j)
      {
        if (n == 0)
        {
          while (i2 + 4 <= j)
          {
            m = arrayOfInt[(0xFF & paramArrayOfByte[i2])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(i2 + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(i2 + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(i2 + 3)])];
            if (m < 0)
              break;
            arrayOfByte[(i1 + 2)] = ((byte)m);
            arrayOfByte[(i1 + 1)] = ((byte)(m >> 8));
            arrayOfByte[i1] = ((byte)(m >> 16));
            i1 += 3;
            i2 += 4;
          }
          if (i2 >= j);
        }
        else
        {
          int i7 = i2 + 1;
          int i8 = arrayOfInt[(0xFF & paramArrayOfByte[i2])];
          switch (n)
          {
          default:
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          }
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      i2 = i7;
                      break;
                      if (i8 >= 0)
                      {
                        n++;
                        m = i8;
                        i2 = i7;
                        break;
                      }
                    }
                    while (i8 == -1);
                    this.g = 6;
                    bool = false;
                    break;
                    if (i8 >= 0)
                    {
                      m = i8 | m << 6;
                      n++;
                      i2 = i7;
                      break label54;
                    }
                  }
                  while (i8 == -1);
                  this.g = 6;
                  bool = false;
                  break;
                  if (i8 >= 0)
                  {
                    m = i8 | m << 6;
                    n++;
                    i2 = i7;
                    break label54;
                  }
                  if (i8 == -2)
                  {
                    int i9 = i1 + 1;
                    arrayOfByte[i1] = ((byte)(m >> 4));
                    n = 4;
                    i1 = i9;
                    i2 = i7;
                    break label54;
                  }
                }
                while (i8 == -1);
                this.g = 6;
                bool = false;
                break;
                if (i8 >= 0)
                {
                  m = i8 | m << 6;
                  arrayOfByte[(i1 + 2)] = ((byte)m);
                  arrayOfByte[(i1 + 1)] = ((byte)(m >> 8));
                  arrayOfByte[i1] = ((byte)(m >> 16));
                  i1 += 3;
                  i2 = i7;
                  n = 0;
                  break label54;
                }
                if (i8 == -2)
                {
                  arrayOfByte[(i1 + 1)] = ((byte)(m >> 2));
                  arrayOfByte[i1] = ((byte)(m >> 10));
                  i1 += 2;
                  n = 5;
                  i2 = i7;
                  break label54;
                }
              }
              while (i8 == -1);
              this.g = 6;
              bool = false;
              break;
              if (i8 == -2)
              {
                n++;
                i2 = i7;
                break label54;
              }
            }
            while (i8 == -1);
            this.g = 6;
            bool = false;
            break;
          }
          while (i8 == -1);
          this.g = 6;
          bool = false;
        }
      }
      else
      {
        int i3 = i1;
        int i4 = m;
        if (!paramBoolean)
        {
          this.g = n;
          this.h = i4;
          this.b = i3;
          bool = true;
        }
        else
        {
          switch (n)
          {
          case 0:
          default:
          case 1:
          case 2:
          case 3:
            while (true)
            {
              this.g = n;
              this.b = i3;
              bool = true;
              break;
              this.g = 6;
              bool = false;
              break;
              int i6 = i3 + 1;
              arrayOfByte[i3] = ((byte)(i4 >> 4));
              i3 = i6;
              continue;
              int i5 = i3 + 1;
              arrayOfByte[i3] = ((byte)(i4 >> 10));
              i3 = i5 + 1;
              arrayOfByte[i5] = ((byte)(i4 >> 2));
            }
          case 4:
          }
          this.g = 6;
          bool = false;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.a.c
 * JD-Core Version:    0.6.2
 */