package com.hoi.a;

final class d extends b
{
  public static final int c = 19;
  private static final byte[] i;
  private static final byte[] j;
  int d;
  public final boolean e;
  public final boolean f;
  public final boolean g;
  private final byte[] k;
  private int l;
  private final byte[] m;

  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      h = bool;
      i = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      j = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }

  public d(int paramInt, byte[] paramArrayOfByte)
  {
    this.a = paramArrayOfByte;
    boolean bool1;
    boolean bool2;
    label31: boolean bool3;
    label46: byte[] arrayOfByte;
    if ((paramInt & 0x1) == 0)
    {
      bool1 = true;
      this.e = bool1;
      if ((paramInt & 0x2) != 0)
        break label105;
      bool2 = true;
      this.f = bool2;
      if ((paramInt & 0x4) == 0)
        break label111;
      bool3 = true;
      this.g = bool3;
      if ((paramInt & 0x8) != 0)
        break label117;
      arrayOfByte = i;
      label64: this.m = arrayOfByte;
      this.k = new byte[2];
      this.d = 0;
      if (!this.f)
        break label125;
    }
    label105: label111: label117: label125: for (int n = 19; ; n = -1)
    {
      this.l = n;
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label31;
      bool3 = false;
      break label46;
      arrayOfByte = j;
      break label64;
    }
  }

  public final int a(int paramInt)
  {
    return 10 + paramInt * 8 / 5;
  }

  public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte1 = this.m;
    byte[] arrayOfByte2 = this.a;
    int n = this.l;
    int i1 = paramInt2 + paramInt1;
    int i2 = -1;
    int i4;
    label59: int i5;
    int i6;
    int i7;
    switch (this.d)
    {
    default:
      i4 = paramInt1;
      i5 = 0;
      if (i2 != -1)
      {
        int i52 = 0 + 1;
        arrayOfByte2[0] = arrayOfByte1[(0x3F & i2 >> 18)];
        int i53 = i52 + 1;
        arrayOfByte2[1] = arrayOfByte1[(0x3F & i2 >> 12)];
        int i54 = i53 + 1;
        arrayOfByte2[2] = arrayOfByte1[(0x3F & i2 >> 6)];
        i5 = i54 + 1;
        arrayOfByte2[3] = arrayOfByte1[(i2 & 0x3F)];
        n--;
        if (n == 0)
        {
          if (this.g)
          {
            i5++;
            arrayOfByte2[4] = 13;
          }
          int i55 = i5 + 1;
          arrayOfByte2[i5] = 10;
          i6 = i55;
          n = 19;
          i7 = i4;
        }
      }
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      label197: int i51;
      if (i7 + 3 <= i1)
      {
        int i50 = (0xFF & paramArrayOfByte[i7]) << 16 | (0xFF & paramArrayOfByte[(i7 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i7 + 2)];
        arrayOfByte2[i6] = arrayOfByte1[(0x3F & i50 >> 18)];
        arrayOfByte2[(i6 + 1)] = arrayOfByte1[(0x3F & i50 >> 12)];
        arrayOfByte2[(i6 + 2)] = arrayOfByte1[(0x3F & i50 >> 6)];
        arrayOfByte2[(i6 + 3)] = arrayOfByte1[(i50 & 0x3F)];
        i7 += 3;
        i6 += 4;
        n--;
        if (n == 0)
          if (this.g)
          {
            i51 = i6 + 1;
            arrayOfByte2[i6] = 13;
          }
      }
      else
      {
        while (true)
        {
          i6 = i51 + 1;
          arrayOfByte2[i51] = 10;
          n = 19;
          break label197;
          i4 = paramInt1;
          break label59;
          if (paramInt1 + 2 > i1)
            break;
          int i56 = (0xFF & this.k[0]) << 16;
          int i57 = paramInt1 + 1;
          int i58 = i56 | (0xFF & paramArrayOfByte[paramInt1]) << 8;
          int i59 = i57 + 1;
          i2 = i58 | 0xFF & paramArrayOfByte[i57];
          this.d = 0;
          i4 = i59;
          break label59;
          if (paramInt1 + 1 > i1)
            break;
          int i3 = (0xFF & this.k[0]) << 16 | (0xFF & this.k[1]) << 8;
          i4 = paramInt1 + 1;
          i2 = i3 | 0xFF & paramArrayOfByte[paramInt1];
          this.d = 0;
          break label59;
          int i39;
          int i38;
          int i37;
          int i42;
          int i47;
          if (paramBoolean)
            if (i7 - this.d == i1 - 1)
              if (this.d > 0)
              {
                byte[] arrayOfByte8 = this.k;
                int i48 = 0 + 1;
                int i49 = arrayOfByte8[0];
                i39 = i48;
                i38 = i7;
                i37 = i49;
                int i40 = (i37 & 0xFF) << 4;
                this.d -= i39;
                int i41 = i6 + 1;
                arrayOfByte2[i6] = arrayOfByte1[(0x3F & i40 >> 6)];
                i42 = i41 + 1;
                arrayOfByte2[i41] = arrayOfByte1[(i40 & 0x3F)];
                if (!this.e)
                  break label1312;
                int i46 = i42 + 1;
                arrayOfByte2[i42] = 61;
                i47 = i46 + 1;
                arrayOfByte2[i46] = 61;
              }
          label1052: label1312: for (int i43 = i47; ; i43 = i42)
          {
            if (this.f)
            {
              if (this.g)
              {
                int i45 = i43 + 1;
                arrayOfByte2[i43] = 13;
                i43 = i45;
              }
              int i44 = i43 + 1;
              arrayOfByte2[i43] = 10;
              i43 = i44;
            }
            int i13 = i43;
            int i12 = i38;
            int i18;
            int i17;
            int i16;
            label811: int i22;
            int i21;
            int i23;
            label864: int i27;
            int i28;
            if ((!h) && (this.d != 0))
            {
              throw new AssertionError();
              int i36 = i7 + 1;
              i37 = paramArrayOfByte[i7];
              i38 = i36;
              i39 = 0;
              break;
              if (i7 - this.d == i1 - 2)
                if (this.d > 1)
                {
                  byte[] arrayOfByte7 = this.k;
                  int i34 = 0 + 1;
                  int i35 = arrayOfByte7[0];
                  i18 = i34;
                  i17 = i7;
                  i16 = i35;
                  int i19 = (i16 & 0xFF) << 10;
                  if (this.d <= 0)
                    break label1052;
                  byte[] arrayOfByte6 = this.k;
                  int i31 = i18 + 1;
                  int i32 = arrayOfByte6[i18];
                  i22 = i31;
                  int i33 = i17;
                  i21 = i32;
                  i23 = i33;
                  int i24 = i19 | (i21 & 0xFF) << 2;
                  this.d -= i22;
                  int i25 = i6 + 1;
                  arrayOfByte2[i6] = arrayOfByte1[(0x3F & i24 >> 12)];
                  int i26 = i25 + 1;
                  arrayOfByte2[i25] = arrayOfByte1[(0x3F & i24 >> 6)];
                  i27 = i26 + 1;
                  arrayOfByte2[i26] = arrayOfByte1[(i24 & 0x3F)];
                  if (!this.e)
                    break label1305;
                  i28 = i27 + 1;
                  arrayOfByte2[i27] = 61;
                }
            }
            while (true)
            {
              if (this.f)
              {
                if (this.g)
                {
                  int i30 = i28 + 1;
                  arrayOfByte2[i28] = 13;
                  i28 = i30;
                }
                int i29 = i28 + 1;
                arrayOfByte2[i28] = 10;
                i28 = i29;
              }
              i13 = i28;
              i12 = i23;
              break;
              int i15 = i7 + 1;
              i16 = paramArrayOfByte[i7];
              i17 = i15;
              i18 = 0;
              break label811;
              int i20 = i17 + 1;
              i21 = paramArrayOfByte[i17];
              i22 = i18;
              i23 = i20;
              break label864;
              int i14;
              if ((this.f) && (i6 > 0) && (n != 19))
              {
                if (!this.g)
                  break label1298;
                i14 = i6 + 1;
                arrayOfByte2[i6] = 13;
              }
              while (true)
              {
                i6 = i14 + 1;
                arrayOfByte2[i14] = 10;
                i12 = i7;
                i13 = i6;
                break;
                int i8;
                if ((!h) && (i12 != i1))
                {
                  throw new AssertionError();
                  if (i7 == i1 - 1)
                  {
                    byte[] arrayOfByte5 = this.k;
                    int i11 = this.d;
                    this.d = (i11 + 1);
                    arrayOfByte5[i11] = paramArrayOfByte[i7];
                    i8 = i6;
                  }
                }
                while (true)
                {
                  this.b = i8;
                  this.l = n;
                  return true;
                  if (i7 == i1 - 2)
                  {
                    byte[] arrayOfByte3 = this.k;
                    int i9 = this.d;
                    this.d = (i9 + 1);
                    arrayOfByte3[i9] = paramArrayOfByte[i7];
                    byte[] arrayOfByte4 = this.k;
                    int i10 = this.d;
                    this.d = (i10 + 1);
                    arrayOfByte4[i10] = paramArrayOfByte[(i7 + 1)];
                  }
                  i8 = i6;
                  continue;
                  i8 = i13;
                }
                i14 = i6;
              }
              i28 = i27;
            }
          }
          label1298: label1305: i51 = i6;
        }
        i6 = i5;
        i7 = i4;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.a.d
 * JD-Core Version:    0.6.2
 */