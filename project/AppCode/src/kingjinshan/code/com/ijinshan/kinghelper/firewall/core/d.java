package com.ijinshan.kinghelper.firewall.core;

import java.util.HashMap;

public final class d
{
  public static final int a = 130;
  public static final int b = 131;
  public static final int c = 136;
  public static final int d = 137;
  public static final int e = 138;
  public static final int f = 140;
  public static final int g = 141;
  public static final int h = 142;
  public static final int i = 152;
  public static final int j = 128;
  public static final int k = 129;
  byte[] l;
  int m = 0;
  int n = 0;
  int o;
  public HashMap p = new HashMap();

  public d(byte[] paramArrayOfByte)
  {
    this.l = paramArrayOfByte;
    this.o = this.l.length;
  }

  private static int a(byte paramByte)
  {
    return paramByte & 0xFF;
  }

  private long a(int paramInt)
  {
    long l1 = 0L;
    for (int i1 = 0; i1 < paramInt; i1++)
    {
      byte[] arrayOfByte = this.l;
      int i2 = this.m;
      this.m = (i2 + 1);
      int i3 = 0xFF & arrayOfByte[i2];
      l1 = (l1 << 8) + i3;
    }
    return l1;
  }

  private String b()
  {
    int i1 = this.m;
    while ((0xFF & this.l[this.m]) != 0)
      this.m = (1 + this.m);
    return new String(this.l, i1, this.m - i1);
  }

  public final v a()
  {
    v localv = new v();
    while (true)
    {
      byte[] arrayOfByte1;
      int i1;
      if (this.o - this.m > 0)
      {
        arrayOfByte1 = this.l;
        i1 = this.m;
        this.m = (i1 + 1);
      }
      switch (0xFF & arrayOfByte1[i1])
      {
      default:
        break;
      case 131:
        localv.b = b();
        break;
      case 140:
        byte[] arrayOfByte7 = this.l;
        int i8 = this.m;
        this.m = (i8 + 1);
        if ((0xFF & arrayOfByte7[i8]) == 130)
        {
          localv.a = 130;
        }
        else
        {
          localv = null;
          return localv;
        }
        break;
      case 141:
        label181: byte[] arrayOfByte6 = this.l;
        int i7 = this.m;
        this.m = (i7 + 1);
        localv.f = (0x7F & arrayOfByte6[i7]);
      case 136:
      case 137:
      case 138:
      case 142:
      case 152:
      }
    }
    this.m = (1 + this.m);
    byte[] arrayOfByte4 = this.l;
    int i4 = this.m;
    this.m = (i4 + 1);
    int i5 = 0xFF & arrayOfByte4[i4];
    byte[] arrayOfByte5 = this.l;
    int i6 = this.m;
    this.m = (i6 + 1);
    long l1 = a(0xFF & arrayOfByte5[i6]);
    if (i5 == 129);
    for (long l2 = l1 + System.currentTimeMillis() / 1000L; ; l2 = l1)
    {
      localv.g = l2;
      break;
      this.m = (1 + this.m);
      byte[] arrayOfByte3 = this.l;
      int i3 = this.m;
      this.m = (i3 + 1);
      if ((0xFF & arrayOfByte3[i3]) == 128)
      {
        localv.c = b();
        break;
      }
      localv = null;
      break label181;
      this.m = (1 + this.m);
      break;
      byte[] arrayOfByte2 = this.l;
      int i2 = this.m;
      this.m = (i2 + 1);
      localv.d = a(0xFF & arrayOfByte2[i2]);
      break;
      localv.e = b();
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.d
 * JD-Core Version:    0.6.2
 */