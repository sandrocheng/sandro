package com.google.zxing.common;

public final class BitArray
{
  private int[] bits;
  private int size;

  public BitArray()
  {
    this.size = 0;
    this.bits = new int[1];
  }

  public BitArray(int paramInt)
  {
    this.size = paramInt;
    this.bits = makeArray(paramInt);
  }

  private void ensureCapacity(int paramInt)
  {
    if (paramInt > this.bits.length << 5)
    {
      int[] arrayOfInt = makeArray(paramInt);
      System.arraycopy(this.bits, 0, arrayOfInt, 0, this.bits.length);
      this.bits = arrayOfInt;
    }
  }

  private static int[] makeArray(int paramInt)
  {
    return new int[paramInt + 31 >> 5];
  }

  public void appendBit(boolean paramBoolean)
  {
    ensureCapacity(1 + this.size);
    if (paramBoolean)
    {
      int[] arrayOfInt = this.bits;
      int i = this.size >> 5;
      arrayOfInt[i] |= 1 << (0x1F & this.size);
    }
    this.size = (1 + this.size);
  }

  public void appendBitArray(BitArray paramBitArray)
  {
    int i = paramBitArray.size;
    ensureCapacity(i + this.size);
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      appendBit(paramBitArray.get(j));
    }
  }

  public void appendBits(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 0) || (paramInt2 > 32))
      throw new IllegalArgumentException("Num bits must be between 0 and 32");
    ensureCapacity(paramInt2 + this.size);
    if (paramInt2 <= 0)
      return;
    if ((0x1 & paramInt1 >> paramInt2 - 1) == 1);
    for (boolean bool = true; ; bool = false)
    {
      appendBit(bool);
      paramInt2--;
      break;
    }
  }

  public void clear()
  {
    int i = this.bits.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      this.bits[j] = 0;
    }
  }

  public void flip(int paramInt)
  {
    int[] arrayOfInt = this.bits;
    int i = paramInt >> 5;
    arrayOfInt[i] ^= 1 << (paramInt & 0x1F);
  }

  public boolean get(int paramInt)
  {
    int i = 1;
    if ((this.bits[(paramInt >> 5)] & i << (paramInt & 0x1F)) != 0);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public int[] getBitArray()
  {
    return this.bits;
  }

  public int getNextSet(int paramInt)
  {
    int k;
    if (paramInt >= this.size)
    {
      k = this.size;
      return k;
    }
    int i = paramInt >> 5;
    for (int j = this.bits[i] & (0xFFFFFFFF ^ -1 + (1 << (paramInt & 0x1F))); ; j = this.bits[i])
    {
      if (j != 0)
      {
        k = (i << 5) + Integer.numberOfTrailingZeros(j);
        if (k <= this.size)
          break;
        k = this.size;
        break;
      }
      i++;
      if (i == this.bits.length)
      {
        k = this.size;
        break;
      }
    }
  }

  public int getNextUnset(int paramInt)
  {
    int k;
    if (paramInt >= this.size)
    {
      k = this.size;
      return k;
    }
    int i = paramInt >> 5;
    for (int j = (0xFFFFFFFF ^ this.bits[i]) & (0xFFFFFFFF ^ -1 + (1 << (paramInt & 0x1F))); ; j = 0xFFFFFFFF ^ this.bits[i])
    {
      if (j != 0)
      {
        k = (i << 5) + Integer.numberOfTrailingZeros(j);
        if (k <= this.size)
          break;
        k = this.size;
        break;
      }
      i++;
      if (i == this.bits.length)
      {
        k = this.size;
        break;
      }
    }
  }

  public int getSize()
  {
    return this.size;
  }

  public int getSizeInBytes()
  {
    return 7 + this.size >> 3;
  }

  public boolean isRange(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException();
    boolean bool;
    if (paramInt2 == paramInt1)
    {
      bool = true;
      return bool;
    }
    int i = paramInt2 - 1;
    int j = paramInt1 >> 5;
    int k = i >> 5;
    label131: label141: label174: label180: for (int m = j; ; m++)
    {
      if (m > k)
      {
        bool = true;
        break;
      }
      int n;
      label67: int i1;
      label78: int i3;
      label93: int i5;
      if (m > j)
      {
        n = 0;
        if (m >= k)
          break label131;
        i1 = 31;
        if ((n != 0) || (i1 != 31))
          break label141;
        i3 = -1;
        i5 = i3 & this.bits[m];
        if (!paramBoolean)
          break label174;
      }
      while (true)
      {
        if (i5 == i3)
          break label180;
        bool = false;
        break;
        n = paramInt1 & 0x1F;
        break label67;
        i1 = i & 0x1F;
        break label78;
        int i2 = n;
        int i4;
        for (i3 = 0; i2 <= i1; i3 = i4)
        {
          i4 = i3 | 1 << i2;
          i2++;
        }
        break label93;
        i3 = 0;
      }
    }
  }

  public void reverse()
  {
    int[] arrayOfInt = new int[this.bits.length];
    int i = this.size;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        this.bits = arrayOfInt;
        return;
      }
      if (get(-1 + (i - j)))
      {
        int k = j >> 5;
        arrayOfInt[k] |= 1 << (j & 0x1F);
      }
    }
  }

  public void set(int paramInt)
  {
    int[] arrayOfInt = this.bits;
    int i = paramInt >> 5;
    arrayOfInt[i] |= 1 << (paramInt & 0x1F);
  }

  public void setBulk(int paramInt1, int paramInt2)
  {
    this.bits[(paramInt1 >> 5)] = paramInt2;
  }

  public void setRange(int paramInt1, int paramInt2)
  {
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException();
    if (paramInt2 == paramInt1)
      return;
    int i = paramInt2 - 1;
    int j = paramInt1 >> 5;
    int k = i >> 5;
    int m = j;
    label37: int n;
    label54: int i1;
    label65: int i3;
    if (m <= k)
    {
      if (m <= j)
        break label105;
      n = 0;
      if (m >= k)
        break label114;
      i1 = 31;
      if ((n != 0) || (i1 != 31))
        break label123;
      i3 = -1;
    }
    while (true)
    {
      int[] arrayOfInt = this.bits;
      arrayOfInt[m] = (i3 | arrayOfInt[m]);
      m++;
      break label37;
      break;
      label105: n = paramInt1 & 0x1F;
      break label54;
      label114: i1 = i & 0x1F;
      break label65;
      label123: int i2 = n;
      int i4;
      for (i3 = 0; i2 <= i1; i3 = i4)
      {
        i4 = i3 | 1 << i2;
        i2++;
      }
    }
  }

  public void toBytes(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i = 0;
    int j = paramInt1;
    if (i >= paramInt3)
      return;
    int k = 0;
    int m = j;
    int n = 0;
    while (true)
    {
      if (k >= 8)
      {
        paramArrayOfByte[(paramInt2 + i)] = ((byte)n);
        i++;
        j = m;
        break;
      }
      if (get(m))
        n |= 1 << 7 - k;
      m++;
      k++;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.size);
    int i = 0;
    if (i >= this.size)
      return localStringBuilder.toString();
    if ((i & 0x7) == 0)
      localStringBuilder.append(' ');
    if (get(i));
    for (char c = 'X'; ; c = '.')
    {
      localStringBuilder.append(c);
      i++;
      break;
    }
  }

  public void xor(BitArray paramBitArray)
  {
    if (this.bits.length != paramBitArray.bits.length)
      throw new IllegalArgumentException("Sizes don't match");
    for (int i = 0; ; i++)
    {
      if (i >= this.bits.length)
        return;
      int[] arrayOfInt = this.bits;
      arrayOfInt[i] ^= paramBitArray.bits[i];
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.BitArray
 * JD-Core Version:    0.6.2
 */