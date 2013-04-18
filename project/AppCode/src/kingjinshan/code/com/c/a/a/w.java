package com.c.a.a;

public final class w
{
  public final x a;
  public final Object[] b;

  public w()
  {
  }

  public w(x paramx, Object[] paramArrayOfObject)
  {
    this.a = paramx;
    this.b = paramArrayOfObject;
  }

  public static String a(String paramString)
  {
    t localt = new t();
    byte[] arrayOfByte1 = paramString.getBytes();
    String str = "";
    for (int i = 0; i < arrayOfByte1.length / 16; i++)
    {
      byte[] arrayOfByte2 = new byte[8];
      for (int j = 0; j <= 7; j++)
      {
        int k = (byte)(arrayOfByte1[(i * 16 + j * 2)] - 65);
        arrayOfByte2[j] = ((byte)((byte)(arrayOfByte1[(1 + (i * 16 + j * 2))] - 97) + (k << 4)));
      }
      long l = t.a(arrayOfByte2);
      byte[] arrayOfByte3 = new byte[8];
      t.a(localt.a(l), arrayOfByte3);
      str = str + new String(arrayOfByte3);
    }
    return str.trim();
  }

  public static String b(String paramString)
  {
    t localt = new t();
    byte[] arrayOfByte1 = paramString.getBytes();
    int i = arrayOfByte1.length;
    int j = i + (8 - i % 8) % 8;
    byte[] arrayOfByte2 = new byte[j];
    int k = 0;
    if (k < j)
    {
      if (k <= i - 1)
        arrayOfByte2[k] = arrayOfByte1[k];
      while (true)
      {
        k++;
        break;
        arrayOfByte2[k] = 32;
      }
    }
    String str = "";
    for (int m = 0; m < j / 8; m++)
    {
      byte[] arrayOfByte3 = new byte[8];
      for (int n = 0; n <= 7; n++)
        arrayOfByte3[n] = arrayOfByte2[(n + m * 8)];
      long l = t.a(arrayOfByte3);
      byte[] arrayOfByte4 = new byte[8];
      t.a(localt.b(l), arrayOfByte4);
      byte[] arrayOfByte5 = new byte[16];
      for (int i1 = 0; i1 < 8; i1++)
      {
        arrayOfByte5[(i1 * 2)] = ((byte)(65 + ((0xF0 & (char)arrayOfByte4[i1]) >> '\004')));
        arrayOfByte5[(1 + i1 * 2)] = ((byte)('a' + (0xF & (char)arrayOfByte4[i1])));
      }
      str = str + new String(arrayOfByte5);
    }
    return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.w
 * JD-Core Version:    0.6.2
 */