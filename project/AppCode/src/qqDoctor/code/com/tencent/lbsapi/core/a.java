package com.tencent.lbsapi.core;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Random;

public class a
{
  public static final int a = 79764919;
  public static final int b = 2;
  public static final int c = 7;
  private byte[] d;
  private byte[] e;
  private byte[] f;
  private int g;
  private int h;
  private int i;
  private int j;
  private byte[] k;
  private boolean l = true;
  private int m;
  private Random n = new Random();

  public static long a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l1 = 0L;
    int i1;
    if (paramInt2 > 8)
      i1 = paramInt1 + 8;
    while (paramInt1 < i1)
    {
      l1 = l1 << 8 | 0xFF & paramArrayOfByte[paramInt1];
      paramInt1++;
      continue;
      i1 = paramInt1 + paramInt2;
    }
    return 0xFFFFFFFF & l1 | l1 >>> 32;
  }

  private void a()
  {
    this.i = 0;
    if (this.i < 8)
    {
      if (this.l)
      {
        byte[] arrayOfByte3 = this.d;
        int i3 = this.i;
        arrayOfByte3[i3] = ((byte)(arrayOfByte3[i3] ^ this.e[this.i]));
      }
      while (true)
      {
        this.i = (1 + this.i);
        break;
        byte[] arrayOfByte2 = this.d;
        int i2 = this.i;
        arrayOfByte2[i2] = ((byte)(arrayOfByte2[i2] ^ this.f[(this.h + this.i)]));
      }
    }
    System.arraycopy(a(this.d), 0, this.f, this.g, 8);
    for (this.i = 0; this.i < 8; this.i = (1 + this.i))
    {
      byte[] arrayOfByte1 = this.f;
      int i1 = this.g + this.i;
      arrayOfByte1[i1] = ((byte)(arrayOfByte1[i1] ^ this.e[this.i]));
    }
    System.arraycopy(this.d, 0, this.e, 0, 8);
    this.h = this.g;
    this.g = (8 + this.g);
    this.i = 0;
    this.l = false;
  }

  private byte[] a(byte[] paramArrayOfByte)
  {
    int i1 = 16;
    long l1;
    long l2;
    long l3;
    long l4;
    long l5;
    long l6;
    long l7;
    long l8;
    try
    {
      l1 = a(paramArrayOfByte, 0, 4);
      l2 = a(paramArrayOfByte, 4, 4);
      l3 = a(this.k, 0, 4);
      l4 = a(this.k, 4, 4);
      l5 = a(this.k, 8, 4);
      l6 = a(this.k, 12, 4);
      l7 = 0L;
      l8 = 0x9E3779B9 & 0xFFFFFFFF;
      break label144;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(8);
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      localDataOutputStream.writeInt((int)l1);
      localDataOutputStream.writeInt((int)l2);
      localDataOutputStream.close();
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (IOException localIOException)
    {
      while (true)
        byte[] arrayOfByte1 = null;
    }
    while (true)
    {
      label144: int i2 = i1 - 1;
      if (i1 <= 0)
        break;
      l7 = 0xFFFFFFFF & l7 + l8;
      l1 = 0xFFFFFFFF & l1 + (l3 + (l2 << 4) ^ l2 + l7 ^ l4 + (l2 >>> 5));
      l2 = 0xFFFFFFFF & l2 + (l5 + (l1 << 4) ^ l1 + l7 ^ l6 + (l1 >>> 5));
      i1 = i2;
    }
  }

  private byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    int i1 = 16;
    long l1;
    long l2;
    long l3;
    long l4;
    long l5;
    long l6;
    long l7;
    long l8;
    try
    {
      l1 = a(paramArrayOfByte, paramInt, 4);
      l2 = a(paramArrayOfByte, paramInt + 4, 4);
      l3 = a(this.k, 0, 4);
      l4 = a(this.k, 4, 4);
      l5 = a(this.k, 8, 4);
      l6 = a(this.k, 12, 4);
      l7 = 0xE3779B90 & 0xFFFFFFFF;
      l8 = 0x9E3779B9 & 0xFFFFFFFF;
      break label153;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(8);
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      localDataOutputStream.writeInt((int)l1);
      localDataOutputStream.writeInt((int)l2);
      localDataOutputStream.close();
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (IOException localIOException)
    {
      while (true)
        byte[] arrayOfByte1 = null;
    }
    while (true)
    {
      label153: int i2 = i1 - 1;
      if (i1 <= 0)
        break;
      l2 = 0xFFFFFFFF & l2 - (l5 + (l1 << 4) ^ l1 + l7 ^ l6 + (l1 >>> 5));
      l1 = 0xFFFFFFFF & l1 - (l3 + (l2 << 4) ^ l2 + l7 ^ l4 + (l2 >>> 5));
      l7 = 0xFFFFFFFF & l7 - l8;
      i1 = i2;
    }
  }

  private int b()
  {
    return this.n.nextInt();
  }

  private boolean b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    this.i = 0;
    if (this.i < 8)
      if (this.m + this.i < paramInt2);
    while (true)
    {
      return bool;
      byte[] arrayOfByte = this.e;
      int i1 = this.i;
      arrayOfByte[i1] = ((byte)(arrayOfByte[i1] ^ paramArrayOfByte[(paramInt1 + this.g + this.i)]));
      this.i = (1 + this.i);
      break;
      this.e = b(this.e);
      if (this.e == null)
      {
        bool = false;
      }
      else
      {
        this.m = (8 + this.m);
        this.g = (8 + this.g);
        this.i = 0;
      }
    }
  }

  private byte[] b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0);
  }

  public byte[] a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    this.h = 0;
    this.g = 0;
    this.k = paramArrayOfByte2;
    byte[] arrayOfByte1 = new byte[paramInt1 + 8];
    if ((paramInt2 % 8 != 0) || (paramInt2 < 16));
    int i1;
    for (byte[] arrayOfByte2 = null; ; arrayOfByte2 = null)
    {
      return arrayOfByte2;
      this.e = a(paramArrayOfByte1, paramInt1);
      this.i = (0x7 & this.e[0]);
      i1 = -10 + (paramInt2 - this.i);
      if (i1 >= 0)
        break;
    }
    for (int i2 = paramInt1; i2 < arrayOfByte1.length; i2++)
      arrayOfByte1[i2] = 0;
    this.f = new byte[i1];
    this.h = 0;
    this.g = 8;
    this.m = 8;
    this.i = (1 + this.i);
    this.j = 1;
    byte[] arrayOfByte3 = arrayOfByte1;
    while (true)
    {
      if (this.j <= 2)
      {
        if (this.i < 8)
        {
          this.i = (1 + this.i);
          this.j = (1 + this.j);
        }
        if (this.i != 8)
          continue;
        if (b(paramArrayOfByte1, paramInt1, paramInt2))
          break label464;
        arrayOfByte2 = null;
        break;
      }
      int i3 = i1;
      byte[] arrayOfByte4 = arrayOfByte3;
      int i4 = 0;
      byte[] arrayOfByte5 = arrayOfByte4;
      while (true)
      {
        if (i3 != 0)
        {
          if (this.i < 8)
          {
            this.f[i4] = ((byte)(arrayOfByte5[(paramInt1 + this.h + this.i)] ^ this.e[this.i]));
            i4++;
            i3--;
            this.i = (1 + this.i);
          }
          if (this.i != 8)
            continue;
          this.h = (-8 + this.g);
          if (b(paramArrayOfByte1, paramInt1, paramInt2))
            break label458;
          arrayOfByte2 = null;
          break;
        }
        this.j = 1;
        byte[] arrayOfByte6 = arrayOfByte5;
        while (true)
        {
          if (this.j >= 8)
            break label449;
          if (this.i < 8)
          {
            if ((arrayOfByte6[(paramInt1 + this.h + this.i)] ^ this.e[this.i]) != 0)
            {
              arrayOfByte2 = null;
              break;
            }
            this.i = (1 + this.i);
          }
          if (this.i == 8)
          {
            this.h = this.g;
            if (!b(paramArrayOfByte1, paramInt1, paramInt2))
            {
              arrayOfByte2 = null;
              break;
            }
            arrayOfByte6 = paramArrayOfByte1;
          }
          this.j = (1 + this.j);
        }
        label449: arrayOfByte2 = this.f;
        break;
        label458: arrayOfByte5 = paramArrayOfByte1;
      }
      label464: arrayOfByte3 = paramArrayOfByte1;
    }
  }

  public byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return a(paramArrayOfByte1, 0, paramArrayOfByte1.length, paramArrayOfByte2);
  }

  public byte[] b(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    this.d = new byte[8];
    this.e = new byte[8];
    this.i = 1;
    this.j = 0;
    this.h = 0;
    this.g = 0;
    this.k = paramArrayOfByte2;
    this.l = true;
    this.i = ((paramInt2 + 10) % 8);
    if (this.i != 0)
      this.i = (8 - this.i);
    this.f = new byte[10 + (paramInt2 + this.i)];
    this.d[0] = ((byte)(0xF8 & b() | this.i));
    for (int i1 = 1; i1 <= this.i; i1++)
      this.d[i1] = ((byte)(0xFF & b()));
    this.i = (1 + this.i);
    for (int i2 = 0; i2 < 8; i2++)
      this.e[i2] = 0;
    this.j = 1;
    while (this.j <= 2)
    {
      if (this.i < 8)
      {
        byte[] arrayOfByte3 = this.d;
        int i9 = this.i;
        this.i = (i9 + 1);
        arrayOfByte3[i9] = ((byte)(0xFF & b()));
        this.j = (1 + this.j);
      }
      if (this.i == 8)
        a();
    }
    int i3 = paramInt1;
    int i4 = paramInt2;
    int i6;
    if (i4 > 0)
    {
      if (this.i >= 8)
        break label437;
      byte[] arrayOfByte2 = this.d;
      int i8 = this.i;
      this.i = (i8 + 1);
      i6 = i3 + 1;
      arrayOfByte2[i8] = paramArrayOfByte1[i3];
    }
    for (int i7 = i4 - 1; ; i7 = i4)
    {
      if (this.i == 8)
      {
        a();
        i4 = i7;
        i3 = i6;
        break;
        this.j = 1;
        while (this.j <= 7)
        {
          if (this.i < 8)
          {
            byte[] arrayOfByte1 = this.d;
            int i5 = this.i;
            this.i = (i5 + 1);
            arrayOfByte1[i5] = 0;
            this.j = (1 + this.j);
          }
          if (this.i == 8)
            a();
        }
        return this.f;
      }
      i4 = i7;
      i3 = i6;
      break;
      label437: i6 = i3;
    }
  }

  public byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return b(paramArrayOfByte1, 0, paramArrayOfByte1.length, paramArrayOfByte2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.a
 * JD-Core Version:    0.6.2
 */