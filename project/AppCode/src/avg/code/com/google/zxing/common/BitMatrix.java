package com.google.zxing.common;

public final class BitMatrix
{
  private final int[] bits;
  private final int height;
  private final int rowSize;
  private final int width;

  public BitMatrix(int paramInt)
  {
    this(paramInt, paramInt);
  }

  public BitMatrix(int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
      throw new IllegalArgumentException("Both dimensions must be greater than 0");
    this.width = paramInt1;
    this.height = paramInt2;
    this.rowSize = (paramInt1 + 31 >> 5);
    this.bits = new int[paramInt2 * this.rowSize];
  }

  public final void clear()
  {
    int i = this.bits.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      this.bits[j] = 0;
    }
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof BitMatrix;
    boolean bool2 = false;
    if (!bool1);
    BitMatrix localBitMatrix;
    int i2;
    int i3;
    do
    {
      int n;
      int i1;
      do
      {
        int k;
        int m;
        do
        {
          int i;
          int j;
          do
          {
            return bool2;
            localBitMatrix = (BitMatrix)paramObject;
            i = this.width;
            j = localBitMatrix.width;
            bool2 = false;
          }
          while (i != j);
          k = this.height;
          m = localBitMatrix.height;
          bool2 = false;
        }
        while (k != m);
        n = this.rowSize;
        i1 = localBitMatrix.rowSize;
        bool2 = false;
      }
      while (n != i1);
      i2 = this.bits.length;
      i3 = localBitMatrix.bits.length;
      bool2 = false;
    }
    while (i2 != i3);
    for (int i4 = 0; ; i4++)
    {
      if (i4 >= this.bits.length)
      {
        bool2 = true;
        break;
      }
      int i5 = this.bits[i4];
      int i6 = localBitMatrix.bits[i4];
      bool2 = false;
      if (i5 != i6)
        break;
    }
  }

  public final void flip(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    int[] arrayOfInt = this.bits;
    arrayOfInt[i] ^= 1 << (paramInt1 & 0x1F);
  }

  public final boolean get(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    if ((0x1 & this.bits[i] >>> (paramInt1 & 0x1F)) != 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int[] getBottomRightOnBit()
  {
    int[] arrayOfInt;
    for (int i = -1 + this.bits.length; ; i--)
      if ((i < 0) || (this.bits[i] != 0))
      {
        if (i >= 0)
          break;
        arrayOfInt = null;
        return arrayOfInt;
      }
    int j = i / this.rowSize;
    int k = i % this.rowSize << 5;
    int m = this.bits[i];
    for (int n = 31; ; n--)
      if (m >>> n != 0)
      {
        arrayOfInt = new int[] { k + n, j };
        break;
      }
  }

  public final int[] getEnclosingRectangle()
  {
    int i = this.width;
    int j = this.height;
    int k = i;
    int m = -1;
    int n = -1;
    int i11;
    int i12;
    int[] arrayOfInt;
    int i2;
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= this.height)
      {
        i11 = m - k;
        i12 = n - j;
        if ((i11 >= 0) && (i12 >= 0))
          break label254;
        arrayOfInt = null;
        return arrayOfInt;
      }
      i2 = 0;
      label61: if (i2 < this.rowSize)
        break;
    }
    int i3 = this.bits[(i2 + i1 * this.rowSize)];
    int i10;
    label130: int i4;
    label163: int i8;
    label180: int i5;
    int i6;
    int i7;
    if (i3 != 0)
    {
      if (i1 < j)
        j = i1;
      if (i1 > n)
        n = i1;
      if (i2 * 32 < k)
      {
        i10 = 0;
        if (i3 << 31 - i10 != 0)
        {
          if (i10 + i2 * 32 >= k)
            break label294;
          i4 = i10 + i2 * 32;
          if (31 + i2 * 32 <= m)
            break label280;
          i8 = 31;
          if (i3 >>> i8 == 0)
            break label248;
          if (i8 + i2 * 32 <= m)
            break label280;
          int i9 = i8 + i2 * 32;
          i5 = j;
          i6 = i9;
          i7 = n;
        }
      }
    }
    while (true)
    {
      i2++;
      n = i7;
      m = i6;
      j = i5;
      k = i4;
      break label61;
      i10++;
      break label130;
      label248: i8--;
      break label180;
      label254: arrayOfInt = new int[] { k, j, i11, i12 };
      break;
      label280: i5 = j;
      i6 = m;
      i7 = n;
      continue;
      label294: i4 = k;
      break label163;
      i4 = k;
      i5 = j;
      i6 = m;
      i7 = n;
    }
  }

  public final int getHeight()
  {
    return this.height;
  }

  public final BitArray getRow(int paramInt, BitArray paramBitArray)
  {
    if ((paramBitArray == null) || (paramBitArray.getSize() < this.width))
      paramBitArray = new BitArray(this.width);
    int i = paramInt * this.rowSize;
    for (int j = 0; ; j++)
    {
      if (j >= this.rowSize)
        return paramBitArray;
      paramBitArray.setBulk(j << 5, this.bits[(i + j)]);
    }
  }

  public final int[] getTopLeftOnBit()
  {
    int[] arrayOfInt;
    for (int i = 0; ; i++)
      if ((i >= this.bits.length) || (this.bits[i] != 0))
      {
        if (i != this.bits.length)
          break;
        arrayOfInt = null;
        return arrayOfInt;
      }
    int j = i / this.rowSize;
    int k = i % this.rowSize << 5;
    int m = this.bits[i];
    for (int n = 0; ; n++)
      if (m << 31 - n != 0)
      {
        arrayOfInt = new int[] { k + n, j };
        break;
      }
  }

  public final int getWidth()
  {
    return this.width;
  }

  public final int hashCode()
  {
    int i = 31 * (31 * (31 * this.width + this.width) + this.height) + this.rowSize;
    int[] arrayOfInt = this.bits;
    int j = arrayOfInt.length;
    for (int k = 0; ; k++)
    {
      if (k >= j)
        return i;
      i = arrayOfInt[k] + i * 31;
    }
  }

  public final void set(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    int[] arrayOfInt = this.bits;
    arrayOfInt[i] |= 1 << (paramInt1 & 0x1F);
  }

  public final void setRegion(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 < 0) || (paramInt1 < 0))
      throw new IllegalArgumentException("Left and top must be nonnegative");
    if ((paramInt4 <= 0) || (paramInt3 <= 0))
      throw new IllegalArgumentException("Height and width must be at least 1");
    int i = paramInt1 + paramInt3;
    int j = paramInt2 + paramInt4;
    int k;
    if ((j > this.height) || (i > this.width))
    {
      throw new IllegalArgumentException("The region must fit inside the matrix");
      k = paramInt2 * this.rowSize;
    }
    for (int m = paramInt1; ; m++)
    {
      if (m >= i)
      {
        paramInt2++;
        if (paramInt2 < j)
          break;
        return;
      }
      int[] arrayOfInt = this.bits;
      int n = k + (m >> 5);
      arrayOfInt[n] |= 1 << (m & 0x1F);
    }
  }

  public final void setRow(int paramInt, BitArray paramBitArray)
  {
    System.arraycopy(paramBitArray.getBitArray(), 0, this.bits, paramInt * this.rowSize, this.rowSize);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.height * (1 + this.width));
    int j;
    for (int i = 0; ; i++)
    {
      if (i >= this.height)
        return localStringBuilder.toString();
      j = 0;
      if (j < this.width)
        break;
      localStringBuilder.append('\n');
    }
    if (get(j, i));
    for (String str = "X "; ; str = "  ")
    {
      localStringBuilder.append(str);
      j++;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.BitMatrix
 * JD-Core Version:    0.6.2
 */