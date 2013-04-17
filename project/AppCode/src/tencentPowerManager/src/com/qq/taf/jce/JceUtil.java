package com.qq.taf.jce;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public final class JceUtil
{
  private static final byte[] a = arrayOfByte2;
  private static final byte[] b = arrayOfByte3;

  static
  {
    byte[] arrayOfByte1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
    byte[] arrayOfByte2 = new byte[256];
    byte[] arrayOfByte3 = new byte[256];
    for (int i = 0; i < 256; i++)
    {
      arrayOfByte2[i] = arrayOfByte1[(i >>> 4)];
      arrayOfByte3[i] = arrayOfByte1[(i & 0xF)];
    }
  }

  public static int compareTo(byte paramByte1, byte paramByte2)
  {
    int i;
    if (paramByte1 < paramByte2)
      i = -1;
    while (true)
    {
      return i;
      if (paramByte1 > paramByte2)
        i = 1;
      else
        i = 0;
    }
  }

  public static int compareTo(char paramChar1, char paramChar2)
  {
    int i;
    if (paramChar1 < paramChar2)
      i = -1;
    while (true)
    {
      return i;
      if (paramChar1 > paramChar2)
        i = 1;
      else
        i = 0;
    }
  }

  public static int compareTo(double paramDouble1, double paramDouble2)
  {
    int i;
    if (paramDouble1 < paramDouble2)
      i = -1;
    while (true)
    {
      return i;
      if (paramDouble1 > paramDouble2)
        i = 1;
      else
        i = 0;
    }
  }

  public static int compareTo(float paramFloat1, float paramFloat2)
  {
    int i;
    if (paramFloat1 < paramFloat2)
      i = -1;
    while (true)
    {
      return i;
      if (paramFloat1 > paramFloat2)
        i = 1;
      else
        i = 0;
    }
  }

  public static int compareTo(int paramInt1, int paramInt2)
  {
    int i;
    if (paramInt1 < paramInt2)
      i = -1;
    while (true)
    {
      return i;
      if (paramInt1 > paramInt2)
        i = 1;
      else
        i = 0;
    }
  }

  public static int compareTo(long paramLong1, long paramLong2)
  {
    int i;
    if (paramLong1 < paramLong2)
      i = -1;
    while (true)
    {
      return i;
      if (paramLong1 > paramLong2)
        i = 1;
      else
        i = 0;
    }
  }

  public static <T extends Comparable<T>> int compareTo(T paramT1, T paramT2)
  {
    return paramT1.compareTo(paramT2);
  }

  public static <T extends Comparable<T>> int compareTo(List<T> paramList1, List<T> paramList2)
  {
    Iterator localIterator1 = paramList1.iterator();
    Iterator localIterator2 = paramList2.iterator();
    int i;
    do
    {
      if ((!localIterator1.hasNext()) || (!localIterator2.hasNext()))
        break;
      i = ((Comparable)localIterator1.next()).compareTo(localIterator2.next());
    }
    while (i == 0);
    while (true)
    {
      return i;
      i = compareTo(localIterator1.hasNext(), localIterator2.hasNext());
    }
  }

  public static int compareTo(short paramShort1, short paramShort2)
  {
    int i;
    if (paramShort1 < paramShort2)
      i = -1;
    while (true)
    {
      return i;
      if (paramShort1 > paramShort2)
        i = 1;
      else
        i = 0;
    }
  }

  public static int compareTo(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 1;
    int j;
    if (paramBoolean1)
    {
      j = i;
      if (!paramBoolean2)
        break label21;
    }
    while (true)
    {
      return j - i;
      j = 0;
      break;
      label21: i = 0;
    }
  }

  public static int compareTo(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfByte1.length) && (i < paramArrayOfByte2.length))
    {
      m = compareTo(paramArrayOfByte1[j], paramArrayOfByte2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfByte1.length, paramArrayOfByte2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static int compareTo(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfChar1.length) && (i < paramArrayOfChar2.length))
    {
      m = compareTo(paramArrayOfChar1[j], paramArrayOfChar2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfChar1.length, paramArrayOfChar2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static int compareTo(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfDouble1.length) && (i < paramArrayOfDouble2.length))
    {
      m = compareTo(paramArrayOfDouble1[j], paramArrayOfDouble2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfDouble1.length, paramArrayOfDouble2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static int compareTo(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfFloat1.length) && (i < paramArrayOfFloat2.length))
    {
      m = compareTo(paramArrayOfFloat1[j], paramArrayOfFloat2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfFloat1.length, paramArrayOfFloat2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static int compareTo(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfInt1.length) && (i < paramArrayOfInt2.length))
    {
      m = compareTo(paramArrayOfInt1[j], paramArrayOfInt2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfInt1.length, paramArrayOfInt2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static int compareTo(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfLong1.length) && (i < paramArrayOfLong2.length))
    {
      m = compareTo(paramArrayOfLong1[j], paramArrayOfLong2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfLong1.length, paramArrayOfLong2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static <T extends Comparable<T>> int compareTo(T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfT1.length) && (i < paramArrayOfT2.length))
    {
      m = paramArrayOfT1[j].compareTo(paramArrayOfT2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfT1.length, paramArrayOfT2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static int compareTo(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfShort1.length) && (i < paramArrayOfShort2.length))
    {
      m = compareTo(paramArrayOfShort1[j], paramArrayOfShort2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfShort1.length, paramArrayOfShort2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static int compareTo(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
  {
    int i = 0;
    int j = 0;
    int m;
    if ((j < paramArrayOfBoolean1.length) && (i < paramArrayOfBoolean2.length))
    {
      m = compareTo(paramArrayOfBoolean1[j], paramArrayOfBoolean2[i]);
      if (m == 0);
    }
    for (int k = m; ; k = compareTo(paramArrayOfBoolean1.length, paramArrayOfBoolean2.length))
    {
      return k;
      j++;
      i++;
      break;
    }
  }

  public static boolean equals(byte paramByte1, byte paramByte2)
  {
    if (paramByte1 == paramByte2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean equals(char paramChar1, char paramChar2)
  {
    if (paramChar1 == paramChar2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean equals(double paramDouble1, double paramDouble2)
  {
    if (paramDouble1 == paramDouble2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean equals(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 == paramFloat2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean equals(int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean equals(long paramLong1, long paramLong2)
  {
    if (paramLong1 == paramLong2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean equals(Object paramObject1, Object paramObject2)
  {
    return paramObject1.equals(paramObject2);
  }

  public static boolean equals(short paramShort1, short paramShort2)
  {
    if (paramShort1 == paramShort2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean equals(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == paramBoolean2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static String getHexdump(ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.remaining();
    if (i == 0);
    StringBuffer localStringBuffer;
    for (String str = "empty"; ; str = localStringBuffer.toString())
    {
      return str;
      localStringBuffer = new StringBuffer(-1 + 3 * paramByteBuffer.remaining());
      int j = paramByteBuffer.position();
      int k = 0xFF & paramByteBuffer.get();
      localStringBuffer.append((char)a[k]);
      localStringBuffer.append((char)b[k]);
      for (int m = i - 1; m > 0; m--)
      {
        localStringBuffer.append(' ');
        int n = 0xFF & paramByteBuffer.get();
        localStringBuffer.append((char)a[n]);
        localStringBuffer.append((char)b[n]);
      }
      paramByteBuffer.position(j);
    }
  }

  public static String getHexdump(byte[] paramArrayOfByte)
  {
    return getHexdump(ByteBuffer.wrap(paramArrayOfByte));
  }

  public static byte[] getJceBufArray(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = new byte[paramByteBuffer.position()];
    System.arraycopy(paramByteBuffer.array(), 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public static int hashCode(byte paramByte)
  {
    return paramByte + 629;
  }

  public static int hashCode(char paramChar)
  {
    return paramChar + 'ɵ';
  }

  public static int hashCode(double paramDouble)
  {
    return hashCode(Double.doubleToLongBits(paramDouble));
  }

  public static int hashCode(float paramFloat)
  {
    return 629 + Float.floatToIntBits(paramFloat);
  }

  public static int hashCode(int paramInt)
  {
    return paramInt + 629;
  }

  public static int hashCode(long paramLong)
  {
    return 629 + (int)(paramLong ^ paramLong >> 32);
  }

  public static int hashCode(Object paramObject)
  {
    int i;
    if (paramObject == null)
      i = 629;
    while (true)
    {
      return i;
      if (paramObject.getClass().isArray())
      {
        if ((paramObject instanceof long[]))
          i = hashCode((long[])paramObject);
        else if ((paramObject instanceof int[]))
          i = hashCode((int[])paramObject);
        else if ((paramObject instanceof short[]))
          i = hashCode((short[])paramObject);
        else if ((paramObject instanceof char[]))
          i = hashCode((char[])paramObject);
        else if ((paramObject instanceof byte[]))
          i = hashCode((byte[])paramObject);
        else if ((paramObject instanceof double[]))
          i = hashCode((double[])paramObject);
        else if ((paramObject instanceof float[]))
          i = hashCode((float[])paramObject);
        else if ((paramObject instanceof boolean[]))
          i = hashCode((boolean[])paramObject);
        else if ((paramObject instanceof JceStruct[]))
          i = hashCode((JceStruct[])paramObject);
        else
          i = hashCode((Object[])paramObject);
      }
      else if ((paramObject instanceof JceStruct))
        i = paramObject.hashCode();
      else
        i = 629 + paramObject.hashCode();
    }
  }

  public static int hashCode(short paramShort)
  {
    return paramShort + 629;
  }

  public static int hashCode(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 0; ; i = 1)
      return i + 629;
  }

  public static int hashCode(byte[] paramArrayOfByte)
  {
    int i;
    if (paramArrayOfByte == null)
      i = 629;
    while (true)
    {
      return i;
      i = 17;
      for (int j = 0; j < paramArrayOfByte.length; j++)
        i = i * 37 + paramArrayOfByte[j];
    }
  }

  public static int hashCode(char[] paramArrayOfChar)
  {
    int i;
    if (paramArrayOfChar == null)
      i = 629;
    while (true)
    {
      return i;
      i = 17;
      for (int j = 0; j < paramArrayOfChar.length; j++)
        i = i * 37 + paramArrayOfChar[j];
    }
  }

  public static int hashCode(double[] paramArrayOfDouble)
  {
    int i;
    if (paramArrayOfDouble == null)
      i = 629;
    while (true)
    {
      return i;
      i = 17;
      for (int j = 0; j < paramArrayOfDouble.length; j++)
        i = i * 37 + (int)(Double.doubleToLongBits(paramArrayOfDouble[j]) ^ Double.doubleToLongBits(paramArrayOfDouble[j]) >> 32);
    }
  }

  public static int hashCode(float[] paramArrayOfFloat)
  {
    int i;
    if (paramArrayOfFloat == null)
      i = 629;
    while (true)
    {
      return i;
      i = 17;
      for (int j = 0; j < paramArrayOfFloat.length; j++)
        i = i * 37 + Float.floatToIntBits(paramArrayOfFloat[j]);
    }
  }

  public static int hashCode(int[] paramArrayOfInt)
  {
    int i;
    if (paramArrayOfInt == null)
      i = 629;
    while (true)
    {
      return i;
      i = 17;
      for (int j = 0; j < paramArrayOfInt.length; j++)
        i = i * 37 + paramArrayOfInt[j];
    }
  }

  public static int hashCode(long[] paramArrayOfLong)
  {
    int i;
    if (paramArrayOfLong == null)
      i = 629;
    while (true)
    {
      return i;
      i = 17;
      for (int j = 0; j < paramArrayOfLong.length; j++)
        i = i * 37 + (int)(paramArrayOfLong[j] ^ paramArrayOfLong[j] >> 32);
    }
  }

  public static int hashCode(JceStruct[] paramArrayOfJceStruct)
  {
    int i;
    if (paramArrayOfJceStruct == null)
      i = 629;
    while (true)
    {
      return i;
      i = 17;
      for (int j = 0; j < paramArrayOfJceStruct.length; j++)
        i = i * 37 + paramArrayOfJceStruct[j].hashCode();
    }
  }

  public static int hashCode(short[] paramArrayOfShort)
  {
    int i;
    if (paramArrayOfShort == null)
      i = 629;
    while (true)
    {
      return i;
      i = 17;
      for (int j = 0; j < paramArrayOfShort.length; j++)
        i = i * 37 + paramArrayOfShort[j];
    }
  }

  public static int hashCode(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
    {
      i = 629;
      return i;
    }
    int i = 17;
    int j = 0;
    label15: int k;
    if (j < paramArrayOfBoolean.length)
    {
      k = i * 37;
      if (paramArrayOfBoolean[j] == 0)
        break label46;
    }
    label46: for (int m = 0; ; m = 1)
    {
      i = m + k;
      j++;
      break label15;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.qq.taf.jce.JceUtil
 * JD-Core Version:    0.6.2
 */