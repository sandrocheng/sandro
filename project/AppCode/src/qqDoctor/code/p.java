import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Random;

public final class p
{
  private static Random k = new Random();
  private byte[] a;
  private byte[] b;
  private byte[] c;
  private int d;
  private int e;
  private int f;
  private int g;
  private final byte[] h;
  private boolean i;
  private int j;

  public p(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length != 16))
      throw new IllegalArgumentException("Key length must be 16!");
    this.i = true;
    this.h = paramArrayOfByte;
  }

  private void a()
  {
    this.f = 0;
    if (this.f < 8)
    {
      if (this.i)
      {
        byte[] arrayOfByte3 = this.a;
        int i1 = this.f;
        arrayOfByte3[i1] = ((byte)(arrayOfByte3[i1] ^ this.b[this.f]));
      }
      while (true)
      {
        this.f = (1 + this.f);
        break;
        byte[] arrayOfByte2 = this.a;
        int n = this.f;
        arrayOfByte2[n] = ((byte)(arrayOfByte2[n] ^ this.c[(this.e + this.f)]));
      }
    }
    System.arraycopy(c(this.a), 0, this.c, this.d, 8);
    for (this.f = 0; this.f < 8; this.f = (1 + this.f))
    {
      byte[] arrayOfByte1 = this.c;
      int m = this.d + this.f;
      arrayOfByte1[m] = ((byte)(arrayOfByte1[m] ^ this.b[this.f]));
    }
    System.arraycopy(this.a, 0, this.b, 0, 8);
    this.e = this.d;
    this.d = (8 + this.d);
    this.f = 0;
    this.i = false;
  }

  private boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    this.f = 0;
    if (this.f < 8)
      if (this.j + this.f < paramInt2);
    while (true)
    {
      return bool;
      byte[] arrayOfByte = this.b;
      int m = this.f;
      arrayOfByte[m] = ((byte)(arrayOfByte[m] ^ paramArrayOfByte[(0 + this.d + this.f)]));
      this.f = (1 + this.f);
      break;
      this.b = a(this.b, 0);
      if (this.b == null)
      {
        bool = false;
      }
      else
      {
        this.j = (8 + this.j);
        this.d = (8 + this.d);
        this.f = 0;
      }
    }
  }

  private byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    int m = 16;
    long l1;
    long l2;
    long l3;
    long l4;
    long l5;
    long l6;
    long l7;
    try
    {
      l1 = b(paramArrayOfByte, 0);
      l2 = b(paramArrayOfByte, 4);
      l3 = b(this.h, 0);
      l4 = b(this.h, 4);
      l5 = b(this.h, 8);
      l6 = b(this.h, 12);
      l7 = 3816266640L;
      break label132;
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
      label132: int n = m - 1;
      if (m <= 0)
        break;
      l2 = 0xFFFFFFFF & l2 - (l5 + (l1 << 4) ^ l1 + l7 ^ l6 + (l1 >>> 5));
      l1 = 0xFFFFFFFF & l1 - (l3 + (l2 << 4) ^ l2 + l7 ^ l4 + (l2 >>> 5));
      l7 = 0xFFFFFFFF & l7 - 2654435769L;
      m = n;
    }
  }

  private static long b(byte[] paramArrayOfByte, int paramInt)
  {
    long l = 0L;
    int m = paramInt + 4;
    while (paramInt < m)
    {
      l = l << 8 | 0xFF & paramArrayOfByte[paramInt];
      paramInt++;
    }
    return 0xFFFFFFFF & l | l >>> 32;
  }

  private byte[] c(byte[] paramArrayOfByte)
  {
    int m = 16;
    long l1;
    long l2;
    long l3;
    long l4;
    long l5;
    long l6;
    long l7;
    try
    {
      l1 = b(paramArrayOfByte, 0);
      l2 = b(paramArrayOfByte, 4);
      l3 = b(this.h, 0);
      l4 = b(this.h, 4);
      l5 = b(this.h, 8);
      l6 = b(this.h, 12);
      l7 = 0L;
      break label129;
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
      label129: int n = m - 1;
      if (m <= 0)
        break;
      l7 = 0xFFFFFFFF & l7 + 2654435769L;
      l1 = 0xFFFFFFFF & l1 + (l3 + (l2 << 4) ^ l2 + l7 ^ l4 + (l2 >>> 5));
      l2 = 0xFFFFFFFF & l2 + (l5 + (l1 << 4) ^ l1 + l7 ^ l6 + (l1 >>> 5));
      m = n;
    }
  }

  public final byte[] a(byte[] paramArrayOfByte)
  {
    int m = paramArrayOfByte.length;
    this.a = new byte[8];
    this.b = new byte[8];
    this.f = 1;
    this.g = 0;
    this.e = 0;
    this.d = 0;
    this.i = true;
    this.f = ((m + 10) % 8);
    if (this.f != 0)
      this.f = (8 - this.f);
    this.c = new byte[10 + (m + this.f)];
    this.a[0] = ((byte)(0xF8 & k.nextInt() | this.f));
    for (int n = 1; n <= this.f; n++)
      this.a[n] = ((byte)k.nextInt());
    this.f = (1 + this.f);
    for (int i1 = 0; i1 < 8; i1++)
      this.b[i1] = 0;
    this.g = 1;
    while (this.g <= 2)
    {
      if (this.f < 8)
      {
        byte[] arrayOfByte3 = this.a;
        int i8 = this.f;
        this.f = (i8 + 1);
        arrayOfByte3[i8] = ((byte)k.nextInt());
        this.g = (1 + this.g);
      }
      if (this.f == 8)
        a();
    }
    int i2 = m;
    int i3 = 0;
    int i5;
    if (i2 > 0)
    {
      if (this.f >= 8)
        break label429;
      byte[] arrayOfByte2 = this.a;
      int i7 = this.f;
      this.f = (i7 + 1);
      i5 = i3 + 1;
      arrayOfByte2[i7] = paramArrayOfByte[i3];
    }
    for (int i6 = i2 - 1; ; i6 = i2)
    {
      if (this.f == 8)
      {
        a();
        i2 = i6;
        i3 = i5;
        break;
        this.g = 1;
        while (this.g <= 7)
        {
          if (this.f < 8)
          {
            byte[] arrayOfByte1 = this.a;
            int i4 = this.f;
            this.f = (i4 + 1);
            arrayOfByte1[i4] = 0;
            this.g = (1 + this.g);
          }
          if (this.f == 8)
            a();
        }
        return this.c;
      }
      i2 = i6;
      i3 = i5;
      break;
      label429: i5 = i3;
    }
  }

  public final byte[] b(byte[] paramArrayOfByte)
  {
    int m = paramArrayOfByte.length;
    this.e = 0;
    this.d = 0;
    byte[] arrayOfByte1 = new byte[8];
    if ((m % 8 != 0) || (m < 16));
    int n;
    for (byte[] arrayOfByte2 = null; ; arrayOfByte2 = null)
    {
      return arrayOfByte2;
      this.b = a(paramArrayOfByte, 0);
      this.f = (0x7 & this.b[0]);
      n = -10 + (m - this.f);
      if (n >= 0)
        break;
    }
    for (int i1 = 0; i1 < arrayOfByte1.length; i1++)
      arrayOfByte1[i1] = 0;
    this.c = new byte[n];
    this.e = 0;
    this.d = 8;
    this.j = 8;
    this.f = (1 + this.f);
    this.g = 1;
    byte[] arrayOfByte3 = arrayOfByte1;
    while (true)
    {
      if (this.g <= 2)
      {
        if (this.f < 8)
        {
          this.f = (1 + this.f);
          this.g = (1 + this.g);
        }
        if (this.f != 8)
          continue;
        if (a(paramArrayOfByte, 0, m))
          break label451;
        arrayOfByte2 = null;
        break;
      }
      int i2 = n;
      byte[] arrayOfByte4 = arrayOfByte3;
      int i3 = 0;
      while (true)
      {
        if (i2 != 0)
        {
          if (this.f < 8)
          {
            this.c[i3] = ((byte)(arrayOfByte4[(0 + this.e + this.f)] ^ this.b[this.f]));
            i3++;
            i2--;
            this.f = (1 + this.f);
          }
          if (this.f != 8)
            continue;
          this.e = (-8 + this.d);
          if (a(paramArrayOfByte, 0, m))
            break label445;
          arrayOfByte2 = null;
          break;
        }
        this.g = 1;
        byte[] arrayOfByte5 = arrayOfByte4;
        while (true)
        {
          if (this.g >= 8)
            break label436;
          if (this.f < 8)
          {
            if ((arrayOfByte5[(0 + this.e + this.f)] ^ this.b[this.f]) != 0)
            {
              arrayOfByte2 = null;
              break;
            }
            this.f = (1 + this.f);
          }
          if (this.f == 8)
          {
            this.e = this.d;
            if (!a(paramArrayOfByte, 0, m))
            {
              arrayOfByte2 = null;
              break;
            }
            arrayOfByte5 = paramArrayOfByte;
          }
          this.g = (1 + this.g);
        }
        label436: arrayOfByte2 = this.c;
        break;
        label445: arrayOfByte4 = paramArrayOfByte;
      }
      label451: arrayOfByte3 = paramArrayOfByte;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     p
 * JD-Core Version:    0.6.2
 */