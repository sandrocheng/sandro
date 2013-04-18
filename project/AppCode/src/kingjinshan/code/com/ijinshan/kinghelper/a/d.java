package com.ijinshan.kinghelper.a;

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

  public d(int paramInt)
  {
    this.a = null;
    boolean bool1;
    boolean bool2;
    label30: boolean bool3;
    label44: byte[] arrayOfByte;
    if ((paramInt & 0x1) == 0)
    {
      bool1 = true;
      this.e = bool1;
      if ((paramInt & 0x2) != 0)
        break label103;
      bool2 = true;
      this.f = bool2;
      if ((paramInt & 0x4) == 0)
        break label108;
      bool3 = true;
      this.g = bool3;
      if ((paramInt & 0x8) != 0)
        break label114;
      arrayOfByte = i;
      label62: this.m = arrayOfByte;
      this.k = new byte[2];
      this.d = 0;
      if (!this.f)
        break label122;
    }
    label103: label108: label114: label122: for (int n = 19; ; n = -1)
    {
      this.l = n;
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label30;
      bool3 = false;
      break label44;
      arrayOfByte = j;
      break label62;
    }
  }

  public final int a(int paramInt)
  {
    return 10 + paramInt * 8 / 5;
  }

  public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
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
        int i48 = 0 + 1;
        arrayOfByte2[0] = arrayOfByte1[(0x3F & i2 >> 18)];
        int i49 = i48 + 1;
        arrayOfByte2[1] = arrayOfByte1[(0x3F & i2 >> 12)];
        int i50 = i49 + 1;
        arrayOfByte2[2] = arrayOfByte1[(0x3F & i2 >> 6)];
        i5 = i50 + 1;
        arrayOfByte2[3] = arrayOfByte1[(i2 & 0x3F)];
        n--;
        if (n == 0)
        {
          if (this.g)
          {
            i5++;
            arrayOfByte2[4] = 13;
          }
          int i51 = i5 + 1;
          arrayOfByte2[i5] = 10;
          i6 = i51;
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
      label197: int i47;
      if (i7 + 3 <= i1)
      {
        int i46 = (0xFF & paramArrayOfByte[i7]) << 16 | (0xFF & paramArrayOfByte[(i7 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i7 + 2)];
        arrayOfByte2[i6] = arrayOfByte1[(0x3F & i46 >> 18)];
        arrayOfByte2[(i6 + 1)] = arrayOfByte1[(0x3F & i46 >> 12)];
        arrayOfByte2[(i6 + 2)] = arrayOfByte1[(0x3F & i46 >> 6)];
        arrayOfByte2[(i6 + 3)] = arrayOfByte1[(i46 & 0x3F)];
        i7 += 3;
        i6 += 4;
        n--;
        if (n == 0)
          if (this.g)
          {
            i47 = i6 + 1;
            arrayOfByte2[i6] = 13;
          }
      }
      else
      {
        while (true)
        {
          i6 = i47 + 1;
          arrayOfByte2[i47] = 10;
          n = 19;
          break label197;
          i4 = paramInt1;
          break label59;
          if (paramInt1 + 2 > i1)
            break;
          int i52 = (0xFF & this.k[0]) << 16;
          int i53 = paramInt1 + 1;
          int i54 = i52 | (0xFF & paramArrayOfByte[paramInt1]) << 8;
          int i55 = i53 + 1;
          i2 = i54 | 0xFF & paramArrayOfByte[i53];
          this.d = 0;
          i4 = i55;
          break label59;
          if (paramInt1 + 1 > i1)
            break;
          int i3 = (0xFF & this.k[0]) << 16 | (0xFF & this.k[1]) << 8;
          i4 = paramInt1 + 1;
          i2 = i3 | 0xFF & paramArrayOfByte[paramInt1];
          this.d = 0;
          break label59;
          int i35;
          int i34;
          int i33;
          int i38;
          int i43;
          if (i7 - this.d == i1 - 1)
            if (this.d > 0)
            {
              byte[] arrayOfByte5 = this.k;
              int i44 = 0 + 1;
              int i45 = arrayOfByte5[0];
              i35 = i44;
              i34 = i7;
              i33 = i45;
              int i36 = (i33 & 0xFF) << 4;
              this.d -= i35;
              int i37 = i6 + 1;
              arrayOfByte2[i6] = arrayOfByte1[(0x3F & i36 >> 6)];
              i38 = i37 + 1;
              arrayOfByte2[i37] = arrayOfByte1[(i36 & 0x3F)];
              if (!this.e)
                break label1182;
              int i42 = i38 + 1;
              arrayOfByte2[i38] = 61;
              i43 = i42 + 1;
              arrayOfByte2[i42] = 61;
            }
          label1047: label1182: for (int i39 = i43; ; i39 = i38)
          {
            if (this.f)
            {
              if (this.g)
              {
                int i41 = i39 + 1;
                arrayOfByte2[i39] = 13;
                i39 = i41;
              }
              int i40 = i39 + 1;
              arrayOfByte2[i39] = 10;
              i39 = i40;
            }
            int i9 = i39;
            int i8 = i34;
            int i14;
            int i13;
            int i12;
            label806: int i18;
            int i17;
            int i19;
            label859: int i23;
            int i24;
            if ((!h) && (this.d != 0))
            {
              throw new AssertionError();
              int i32 = i7 + 1;
              i33 = paramArrayOfByte[i7];
              i34 = i32;
              i35 = 0;
              break;
              if (i7 - this.d == i1 - 2)
                if (this.d > 1)
                {
                  byte[] arrayOfByte4 = this.k;
                  int i30 = 0 + 1;
                  int i31 = arrayOfByte4[0];
                  i14 = i30;
                  i13 = i7;
                  i12 = i31;
                  int i15 = (i12 & 0xFF) << 10;
                  if (this.d <= 0)
                    break label1047;
                  byte[] arrayOfByte3 = this.k;
                  int i27 = i14 + 1;
                  int i28 = arrayOfByte3[i14];
                  i18 = i27;
                  int i29 = i13;
                  i17 = i28;
                  i19 = i29;
                  int i20 = i15 | (i17 & 0xFF) << 2;
                  this.d -= i18;
                  int i21 = i6 + 1;
                  arrayOfByte2[i6] = arrayOfByte1[(0x3F & i20 >> 12)];
                  int i22 = i21 + 1;
                  arrayOfByte2[i21] = arrayOfByte1[(0x3F & i20 >> 6)];
                  i23 = i22 + 1;
                  arrayOfByte2[i22] = arrayOfByte1[(i20 & 0x3F)];
                  if (!this.e)
                    break label1175;
                  i24 = i23 + 1;
                  arrayOfByte2[i23] = 61;
                }
            }
            while (true)
            {
              if (this.f)
              {
                if (this.g)
                {
                  int i26 = i24 + 1;
                  arrayOfByte2[i24] = 13;
                  i24 = i26;
                }
                int i25 = i24 + 1;
                arrayOfByte2[i24] = 10;
                i24 = i25;
              }
              i9 = i24;
              i8 = i19;
              break;
              int i11 = i7 + 1;
              i12 = paramArrayOfByte[i7];
              i13 = i11;
              i14 = 0;
              break label806;
              int i16 = i13 + 1;
              i17 = paramArrayOfByte[i13];
              i18 = i14;
              i19 = i16;
              break label859;
              int i10;
              if ((this.f) && (i6 > 0) && (n != 19))
              {
                if (!this.g)
                  break label1168;
                i10 = i6 + 1;
                arrayOfByte2[i6] = 13;
              }
              while (true)
              {
                i6 = i10 + 1;
                arrayOfByte2[i10] = 10;
                i8 = i7;
                i9 = i6;
                break;
                if ((!h) && (i8 != i1))
                  throw new AssertionError();
                this.b = i9;
                this.l = n;
                return true;
                i10 = i6;
              }
              i24 = i23;
            }
          }
          label1168: label1175: i47 = i6;
        }
        i6 = i5;
        i7 = i4;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.a.d
 * JD-Core Version:    0.6.2
 */