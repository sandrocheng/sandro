package com.keniu.security.mydb.opt;

import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class g
{
  public static final int a = 4;
  public static final int b = 2;
  public static final int c = 61;
  public static final int d = 10;
  public static final int e = 10;
  public static final int f = 32;
  public static final String g = "unkown_str";
  public static final byte[] h = new byte[0];

  public static int a(InputStream paramInputStream)
  {
    if (0L != 0L)
      paramInputStream.skip(0L);
    byte[] arrayOfByte = new byte[2];
    paramInputStream.read(arrayOfByte);
    return b(arrayOfByte, 0);
  }

  private static long a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length < paramInt + 4);
    long l1;
    for (long l2 = -1L; ; l2 = l1)
    {
      return l2;
      l1 = 0L;
      for (int i = paramInt; i < paramInt + 4; i++)
        l1 += ((0xFF & paramArrayOfByte[i]) << 8 * (i - paramInt));
    }
  }

  public static e a(InputStream paramInputStream, c paramc)
  {
    int i = 0;
    if (0L != 0L)
      paramInputStream.skip(0L);
    byte[] arrayOfByte1 = new byte[61];
    paramInputStream.read(arrayOfByte1);
    Object localObject;
    if (arrayOfByte1.length != 61)
    {
      localObject = null;
      return localObject;
    }
    paramc.getClass();
    e locale = new e(paramc);
    byte[] arrayOfByte2 = new byte[10];
    byte[] arrayOfByte3 = new byte[10];
    byte[] arrayOfByte4 = new byte[4];
    byte[] arrayOfByte5 = new byte[4];
    byte[] arrayOfByte6 = new byte[32];
    int j = 0;
    if (i < arrayOfByte1.length)
    {
      if (i < 10)
        arrayOfByte2[i] = arrayOfByte1[i];
      while (true)
      {
        i++;
        break;
        if (i < 20)
          arrayOfByte3[(i - 10)] = arrayOfByte1[i];
        else if (i < 24)
          arrayOfByte4[(i - 20)] = arrayOfByte1[i];
        else if (i == 24)
          j = arrayOfByte1[i];
        else if (i < 29)
          arrayOfByte5[(i - 25)] = arrayOfByte1[i];
        else
          arrayOfByte6[(i - 29)] = arrayOfByte1[i];
      }
    }
    locale.a = new String(arrayOfByte2);
    if (arrayOfByte3.length != 10);
    for (String str = ""; ; str = c(arrayOfByte3) + "," + b(arrayOfByte3, 2) + "," + b(arrayOfByte3, 4) + "," + a(arrayOfByte3, 6))
    {
      locale.b = str;
      locale.c = b(arrayOfByte4);
      locale.d = j;
      locale.e = b(arrayOfByte5);
      locale.f = new String(arrayOfByte6);
      localObject = locale;
      break;
    }
  }

  private static e a(byte[] paramArrayOfByte, c paramc)
  {
    int i = 0;
    if (paramArrayOfByte.length != 61)
    {
      locale = null;
      return locale;
    }
    paramc.getClass();
    e locale = new e(paramc);
    byte[] arrayOfByte1 = new byte[10];
    byte[] arrayOfByte2 = new byte[10];
    byte[] arrayOfByte3 = new byte[4];
    byte[] arrayOfByte4 = new byte[4];
    byte[] arrayOfByte5 = new byte[32];
    int j = 0;
    if (i < paramArrayOfByte.length)
    {
      if (i < 10)
        arrayOfByte1[i] = paramArrayOfByte[i];
      while (true)
      {
        i++;
        break;
        if (i < 20)
          arrayOfByte2[(i - 10)] = paramArrayOfByte[i];
        else if (i < 24)
          arrayOfByte3[(i - 20)] = paramArrayOfByte[i];
        else if (i == 24)
          j = paramArrayOfByte[i];
        else if (i < 29)
          arrayOfByte4[(i - 25)] = paramArrayOfByte[i];
        else
          arrayOfByte5[(i - 29)] = paramArrayOfByte[i];
      }
    }
    locale.a = new String(arrayOfByte1);
    if (arrayOfByte2.length != 10);
    for (String str = ""; ; str = c(arrayOfByte2) + "," + b(arrayOfByte2, 2) + "," + b(arrayOfByte2, 4) + "," + a(arrayOfByte2, 6))
    {
      locale.b = str;
      locale.c = b(arrayOfByte3);
      locale.d = j;
      locale.e = b(arrayOfByte4);
      locale.f = new String(arrayOfByte5);
      break;
    }
  }

  public static List a(InputStream paramInputStream, long paramLong)
  {
    if (0L != 0L)
      paramInputStream.skip(0L);
    ArrayList localArrayList = new ArrayList();
    byte[] arrayOfByte1 = new byte[2];
    for (int i = 0; i < paramLong; i++)
    {
      paramInputStream.read(arrayOfByte1);
      byte[] arrayOfByte2 = new byte[c(arrayOfByte1)];
      paramInputStream.read(arrayOfByte2);
      localArrayList.add(new String(arrayOfByte2));
    }
    return localArrayList;
  }

  public static List a(InputStream paramInputStream, long paramLong, int paramInt, c paramc)
  {
    ArrayList localArrayList = new ArrayList();
    byte[][] arrayOfByte = a(paramInputStream, paramLong, paramInt);
    for (int i = 0; i < arrayOfByte.length; i++)
    {
      paramc.getClass();
      d locald = new d(paramc);
      locald.c = arrayOfByte[i][4];
      locald.a = b(arrayOfByte[i], 5);
      locald.d = arrayOfByte[i][7];
      locald.b = arrayOfByte[i][8];
      localArrayList.add(locald);
    }
    return localArrayList;
  }

  public static List a(byte[][] paramArrayOfByte, c paramc)
  {
    Object localObject;
    if ((paramArrayOfByte.length <= 0) || (paramArrayOfByte[0].length < 6))
      localObject = null;
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
      for (int i = 0; i < paramArrayOfByte.length; i++)
      {
        paramc.getClass();
        ((List)localObject).add(new f(paramc, "" + b(paramArrayOfByte[i]), b(paramArrayOfByte[i], 4)));
      }
    }
  }

  private static void a(byte[] paramArrayOfByte)
  {
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2)
        str = "0" + str;
      System.out.println(str);
    }
  }

  public static byte[][] a(InputStream paramInputStream, long paramLong, int paramInt)
  {
    int[] arrayOfInt = { (int)paramLong, paramInt };
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, arrayOfInt);
    for (int i = 0; i < paramLong; i++)
      paramInputStream.read(arrayOfByte[i]);
    return arrayOfByte;
  }

  private static int b(InputStream paramInputStream)
  {
    if (0L != 0L)
      paramInputStream.skip(0L);
    byte[] arrayOfByte = new byte[2];
    paramInputStream.read(arrayOfByte);
    return b(arrayOfByte, 0);
  }

  private static int b(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length < paramInt + 2);
    int i;
    for (int k = -1; ; k = i)
    {
      return k;
      i = 0;
      for (int j = paramInt; j < paramInt + 2; j++)
        i += ((0xFF & paramArrayOfByte[j]) << 8 * (j - paramInt));
    }
  }

  public static long b(InputStream paramInputStream, long paramLong)
  {
    if (paramLong != 0L)
      paramInputStream.skip(paramLong);
    byte[] arrayOfByte = new byte[4];
    paramInputStream.read(arrayOfByte);
    return a(arrayOfByte, 0);
  }

  private static long b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0);
  }

  private static e b(InputStream paramInputStream, c paramc)
  {
    int i = 0;
    if (0L != 0L)
      paramInputStream.skip(0L);
    byte[] arrayOfByte1 = new byte[61];
    paramInputStream.read(arrayOfByte1);
    Object localObject;
    if (arrayOfByte1.length != 61)
    {
      localObject = null;
      return localObject;
    }
    paramc.getClass();
    e locale = new e(paramc);
    byte[] arrayOfByte2 = new byte[10];
    byte[] arrayOfByte3 = new byte[10];
    byte[] arrayOfByte4 = new byte[4];
    byte[] arrayOfByte5 = new byte[4];
    byte[] arrayOfByte6 = new byte[32];
    int j = 0;
    if (i < arrayOfByte1.length)
    {
      if (i < 10)
        arrayOfByte2[i] = arrayOfByte1[i];
      while (true)
      {
        i++;
        break;
        if (i < 20)
          arrayOfByte3[(i - 10)] = arrayOfByte1[i];
        else if (i < 24)
          arrayOfByte4[(i - 20)] = arrayOfByte1[i];
        else if (i == 24)
          j = arrayOfByte1[i];
        else if (i < 29)
          arrayOfByte5[(i - 25)] = arrayOfByte1[i];
        else
          arrayOfByte6[(i - 29)] = arrayOfByte1[i];
      }
    }
    locale.a = new String(arrayOfByte2);
    if (arrayOfByte3.length != 10);
    for (String str = ""; ; str = c(arrayOfByte3) + "," + b(arrayOfByte3, 2) + "," + b(arrayOfByte3, 4) + "," + a(arrayOfByte3, 6))
    {
      locale.b = str;
      locale.c = b(arrayOfByte4);
      locale.d = j;
      locale.e = b(arrayOfByte5);
      locale.f = new String(arrayOfByte6);
      localObject = locale;
      break;
    }
  }

  private static List b(InputStream paramInputStream, long paramLong, int paramInt, c paramc)
  {
    ArrayList localArrayList = new ArrayList();
    byte[][] arrayOfByte = a(paramInputStream, paramLong, paramInt);
    for (int i = 0; i < arrayOfByte.length; i++)
    {
      paramc.getClass();
      d locald = new d(paramc);
      locald.c = arrayOfByte[i][4];
      locald.a = b(arrayOfByte[i], 5);
      locald.d = arrayOfByte[i][7];
      locald.b = arrayOfByte[i][8];
      localArrayList.add(locald);
    }
    return localArrayList;
  }

  private static byte[][] b(InputStream paramInputStream, long paramLong, int paramInt)
  {
    int[] arrayOfInt = { (int)paramLong, paramInt };
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, arrayOfInt);
    for (int i = 0; i < paramLong; i++)
      paramInputStream.read(arrayOfByte[i]);
    return arrayOfByte;
  }

  private static int c(byte[] paramArrayOfByte)
  {
    return b(paramArrayOfByte, 0);
  }

  private static long c(InputStream paramInputStream)
  {
    return b(paramInputStream, 0L);
  }

  private static List c(InputStream paramInputStream, long paramLong)
  {
    if (0L != 0L)
      paramInputStream.skip(0L);
    ArrayList localArrayList = new ArrayList();
    byte[] arrayOfByte1 = new byte[2];
    for (int i = 0; i < paramLong; i++)
    {
      paramInputStream.read(arrayOfByte1);
      byte[] arrayOfByte2 = new byte[c(arrayOfByte1)];
      paramInputStream.read(arrayOfByte2);
      localArrayList.add(new String(arrayOfByte2));
    }
    return localArrayList;
  }

  private static String d(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 10);
    for (String str = ""; ; str = c(paramArrayOfByte) + "," + b(paramArrayOfByte, 2) + "," + b(paramArrayOfByte, 4) + "," + a(paramArrayOfByte, 6))
      return str;
  }

  private static long[] d(InputStream paramInputStream, long paramLong)
  {
    long[] arrayOfLong = new long[(int)paramLong];
    byte[][] arrayOfByte = a(paramInputStream, paramLong, 4);
    for (int i = 0; i < paramLong; i++)
      arrayOfLong[i] = a(arrayOfByte[i], 0);
    return arrayOfLong;
  }

  private static long[] e(InputStream paramInputStream, long paramLong)
  {
    return d(paramInputStream, paramLong);
  }

  private static long[] f(InputStream paramInputStream, long paramLong)
  {
    long[] arrayOfLong = new long[(int)paramLong];
    byte[][] arrayOfByte = a(paramInputStream, paramLong, 2);
    for (int i = 0; i < paramLong; i++)
      arrayOfLong[i] = b(arrayOfByte[i], 0);
    return arrayOfLong;
  }

  private static long[] g(InputStream paramInputStream, long paramLong)
  {
    return d(paramInputStream, paramLong);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.mydb.opt.g
 * JD-Core Version:    0.6.2
 */