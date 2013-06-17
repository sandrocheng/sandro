package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

final class BitMatrixParser
{
  private final BitMatrix bitMatrix;
  private FormatInformation parsedFormatInfo;
  private Version parsedVersion;

  BitMatrixParser(BitMatrix paramBitMatrix)
  {
    int i = paramBitMatrix.getHeight();
    if ((i < 21) || ((i & 0x3) != 1))
      throw FormatException.getFormatInstance();
    this.bitMatrix = paramBitMatrix;
  }

  private int copyBit(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.bitMatrix.get(paramInt1, paramInt2));
    for (int i = 0x1 | paramInt3 << 1; ; i = paramInt3 << 1)
      return i;
  }

  byte[] readCodewords()
  {
    FormatInformation localFormatInformation = readFormatInformation();
    Version localVersion = readVersion();
    DataMask localDataMask = DataMask.forReference(localFormatInformation.getDataMask());
    int i = this.bitMatrix.getHeight();
    localDataMask.unmaskBitMatrix(this.bitMatrix, i);
    BitMatrix localBitMatrix = localVersion.buildFunctionPattern();
    byte[] arrayOfByte = new byte[localVersion.getTotalCodewords()];
    int j = i - 1;
    int k = 0;
    int m = 0;
    int n = 0;
    int i2;
    int i6;
    for (int i1 = 1; ; i1 = i6)
    {
      if (j <= 0)
      {
        if (n == localVersion.getTotalCodewords())
          break label243;
        throw FormatException.getFormatInstance();
      }
      if (j == 6)
        j--;
      i2 = 0;
      if (i2 < i)
        break;
      i6 = i1 ^ 0x1;
      j -= 2;
    }
    int i3;
    if (i1 != 0)
      i3 = i - 1 - i2;
    label137: for (int i4 = 0; ; i4++)
    {
      if (i4 >= 2)
      {
        i2++;
        break;
        i3 = i2;
        break label137;
      }
      if (!localBitMatrix.get(j - i4, i3))
      {
        k++;
        m <<= 1;
        if (this.bitMatrix.get(j - i4, i3))
          m |= 1;
        if (k == 8)
        {
          int i5 = n + 1;
          arrayOfByte[n] = ((byte)m);
          m = 0;
          n = i5;
          k = 0;
        }
      }
    }
    label243: return arrayOfByte;
  }

  FormatInformation readFormatInformation()
  {
    int i = 0;
    FormatInformation localFormatInformation;
    if (this.parsedFormatInfo != null)
    {
      localFormatInformation = this.parsedFormatInfo;
      return localFormatInformation;
    }
    int j = 0;
    int k = 0;
    label22: int m;
    int n;
    label58: int i1;
    int i3;
    if (j >= 6)
    {
      m = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, k)));
      n = 5;
      if (n >= 0)
        break label147;
      i1 = this.bitMatrix.getHeight();
      int i2 = i1 - 7;
      i3 = i1 - 1;
      label85: if (i3 >= i2)
        break label165;
    }
    for (int i4 = i1 - 8; ; i4++)
    {
      if (i4 >= i1)
      {
        this.parsedFormatInfo = FormatInformation.decodeFormatInformation(m, i);
        if (this.parsedFormatInfo == null)
          break label197;
        localFormatInformation = this.parsedFormatInfo;
        break;
        k = copyBit(j, 8, k);
        j++;
        break label22;
        label147: m = copyBit(8, n, m);
        n--;
        break label58;
        label165: i = copyBit(8, i3, i);
        i3--;
        break label85;
      }
      i = copyBit(i4, 8, i);
    }
    label197: throw FormatException.getFormatInstance();
  }

  Version readVersion()
  {
    Version localVersion;
    if (this.parsedVersion != null)
      localVersion = this.parsedVersion;
    int i;
    int k;
    int i2;
    int i3;
    while (true)
    {
      return localVersion;
      i = this.bitMatrix.getHeight();
      int j = i - 17 >> 2;
      if (j <= 6)
      {
        localVersion = Version.getVersionForNumber(j);
      }
      else
      {
        k = i - 11;
        int m = 5;
        int n = 0;
        if (m < 0)
        {
          localVersion = Version.decodeVersionInformation(n);
          if ((localVersion != null) && (localVersion.getDimensionForVersion() == i))
            this.parsedVersion = localVersion;
        }
        else
        {
          for (int i1 = i - 9; ; i1--)
          {
            if (i1 < k)
            {
              m--;
              break;
            }
            n = copyBit(i1, m, n);
          }
          i2 = 0;
          i3 = 5;
          if (i3 >= 0)
            break;
          localVersion = Version.decodeVersionInformation(i2);
          if ((localVersion == null) || (localVersion.getDimensionForVersion() != i))
            break label205;
          this.parsedVersion = localVersion;
        }
      }
    }
    for (int i4 = i - 9; ; i4--)
    {
      if (i4 < k)
      {
        i3--;
        break;
      }
      i2 = copyBit(i3, i4, i2);
    }
    label205: throw FormatException.getFormatInstance();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.BitMatrixParser
 * JD-Core Version:    0.6.2
 */