package com.qq.taf.jce;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import puw.a;
import puw.d;

public class JceOutputStream
{
  protected String a = "GBK";
  private ByteBuffer b;

  public JceOutputStream()
  {
    this(128);
  }

  public JceOutputStream(int paramInt)
  {
    this.b = ByteBuffer.allocate(paramInt);
  }

  public JceOutputStream(ByteBuffer paramByteBuffer)
  {
    this.b = paramByteBuffer;
  }

  public static void main(String[] paramArrayOfString)
  {
    JceOutputStream localJceOutputStream = new JceOutputStream();
    localJceOutputStream.write(1311768467283714885L, 0);
    ByteBuffer localByteBuffer = localJceOutputStream.getByteBuffer();
    System.out.println(d.a(localByteBuffer.array()));
    System.out.println(Arrays.toString(localJceOutputStream.toByteArray()));
  }

  private void writeArray(Object[] paramArrayOfObject, int paramInt)
  {
    reserve(8);
    writeHead((byte)9, paramInt);
    write(paramArrayOfObject.length, 0);
    int i = paramArrayOfObject.length;
    for (int j = 0; j < i; j++)
      write(paramArrayOfObject[j], 0);
  }

  public ByteBuffer getByteBuffer()
  {
    return this.b;
  }

  public void reserve(int paramInt)
  {
    if (this.b.remaining() < paramInt)
    {
      ByteBuffer localByteBuffer = ByteBuffer.allocate(2 * (paramInt + this.b.capacity()));
      localByteBuffer.put(this.b.array(), 0, this.b.position());
      this.b = localByteBuffer;
    }
  }

  public int setServerEncoding(String paramString)
  {
    this.a = paramString;
    return 0;
  }

  public byte[] toByteArray()
  {
    byte[] arrayOfByte = new byte[this.b.position()];
    System.arraycopy(this.b.array(), 0, arrayOfByte, 0, this.b.position());
    return arrayOfByte;
  }

  public void write(byte paramByte, int paramInt)
  {
    reserve(3);
    if (paramByte == 0)
      writeHead((byte)12, paramInt);
    while (true)
    {
      return;
      writeHead((byte)0, paramInt);
      this.b.put(paramByte);
    }
  }

  public void write(double paramDouble, int paramInt)
  {
    reserve(10);
    writeHead((byte)5, paramInt);
    this.b.putDouble(paramDouble);
  }

  public void write(float paramFloat, int paramInt)
  {
    reserve(6);
    writeHead((byte)4, paramInt);
    this.b.putFloat(paramFloat);
  }

  public void write(int paramInt1, int paramInt2)
  {
    reserve(6);
    if ((paramInt1 >= -32768) && (paramInt1 <= 32767))
      write((short)paramInt1, paramInt2);
    while (true)
    {
      return;
      writeHead((byte)2, paramInt2);
      this.b.putInt(paramInt1);
    }
  }

  public void write(long paramLong, int paramInt)
  {
    reserve(10);
    if ((paramLong >= -2147483648L) && (paramLong <= 2147483647L))
      write((int)paramLong, paramInt);
    while (true)
    {
      return;
      writeHead((byte)3, paramInt);
      this.b.putLong(paramLong);
    }
  }

  public void write(JceStruct paramJceStruct, int paramInt)
  {
    reserve(2);
    writeHead((byte)10, paramInt);
    paramJceStruct.writeTo(this);
    reserve(2);
    writeHead((byte)11, 0);
  }

  public void write(Boolean paramBoolean, int paramInt)
  {
    write(paramBoolean.booleanValue(), paramInt);
  }

  public void write(Byte paramByte, int paramInt)
  {
    write(paramByte.byteValue(), paramInt);
  }

  public void write(Double paramDouble, int paramInt)
  {
    write(paramDouble.doubleValue(), paramInt);
  }

  public void write(Float paramFloat, int paramInt)
  {
    write(paramFloat.floatValue(), paramInt);
  }

  public void write(Integer paramInteger, int paramInt)
  {
    write(paramInteger.intValue(), paramInt);
  }

  public void write(Long paramLong, int paramInt)
  {
    write(paramLong.longValue(), paramInt);
  }

  public void write(Object paramObject, int paramInt)
  {
    if ((paramObject instanceof Byte))
      write(((Byte)paramObject).byteValue(), paramInt);
    while (true)
    {
      return;
      if ((paramObject instanceof Boolean))
      {
        write(((Boolean)paramObject).booleanValue(), paramInt);
      }
      else if ((paramObject instanceof Short))
      {
        write(((Short)paramObject).shortValue(), paramInt);
      }
      else if ((paramObject instanceof Integer))
      {
        write(((Integer)paramObject).intValue(), paramInt);
      }
      else if ((paramObject instanceof Long))
      {
        write(((Long)paramObject).longValue(), paramInt);
      }
      else if ((paramObject instanceof Float))
      {
        write(((Float)paramObject).floatValue(), paramInt);
      }
      else if ((paramObject instanceof Double))
      {
        write(((Double)paramObject).doubleValue(), paramInt);
      }
      else if ((paramObject instanceof String))
      {
        write((String)paramObject, paramInt);
      }
      else if ((paramObject instanceof Map))
      {
        write((Map)paramObject, paramInt);
      }
      else if ((paramObject instanceof List))
      {
        write((List)paramObject, paramInt);
      }
      else if ((paramObject instanceof JceStruct))
      {
        write((JceStruct)paramObject, paramInt);
      }
      else if ((paramObject instanceof byte[]))
      {
        write((byte[])paramObject, paramInt);
      }
      else if ((paramObject instanceof boolean[]))
      {
        write((boolean[])paramObject, paramInt);
      }
      else if ((paramObject instanceof short[]))
      {
        write((short[])paramObject, paramInt);
      }
      else if ((paramObject instanceof int[]))
      {
        write((int[])paramObject, paramInt);
      }
      else if ((paramObject instanceof long[]))
      {
        write((long[])paramObject, paramInt);
      }
      else if ((paramObject instanceof float[]))
      {
        write((float[])paramObject, paramInt);
      }
      else if ((paramObject instanceof double[]))
      {
        write((double[])paramObject, paramInt);
      }
      else if (paramObject.getClass().isArray())
      {
        writeArray((Object[])paramObject, paramInt);
      }
      else
      {
        if (!(paramObject instanceof Collection))
          break;
        write((Collection)paramObject, paramInt);
      }
    }
    throw new a("write object error: unsupport type. " + paramObject.getClass());
  }

  public void write(Short paramShort, int paramInt)
  {
    write(paramShort.shortValue(), paramInt);
  }

  public void write(String paramString, int paramInt)
  {
    try
    {
      byte[] arrayOfByte2 = paramString.getBytes(this.a);
      arrayOfByte1 = arrayOfByte2;
      reserve(10 + arrayOfByte1.length);
      if (arrayOfByte1.length > 255)
      {
        writeHead((byte)7, paramInt);
        this.b.putInt(arrayOfByte1.length);
        this.b.put(arrayOfByte1);
        return;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        byte[] arrayOfByte1 = paramString.getBytes();
        continue;
        writeHead((byte)6, paramInt);
        this.b.put((byte)arrayOfByte1.length);
        this.b.put(arrayOfByte1);
      }
    }
  }

  public <T> void write(Collection<T> paramCollection, int paramInt)
  {
    reserve(8);
    writeHead((byte)9, paramInt);
    if (paramCollection == null);
    for (int i = 0; ; i = paramCollection.size())
    {
      write(i, 0);
      if (paramCollection == null)
        break;
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        write(localIterator.next(), 0);
    }
  }

  public <K, V> void write(Map<K, V> paramMap, int paramInt)
  {
    reserve(8);
    writeHead((byte)8, paramInt);
    if (paramMap == null);
    for (int i = 0; ; i = paramMap.size())
    {
      write(i, 0);
      if (paramMap == null)
        break;
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        write(localEntry.getKey(), 0);
        write(localEntry.getValue(), 1);
      }
    }
  }

  public void write(short paramShort, int paramInt)
  {
    reserve(4);
    if ((paramShort >= -128) && (paramShort <= 127))
      write((byte)paramShort, paramInt);
    while (true)
    {
      return;
      writeHead((byte)1, paramInt);
      this.b.putShort(paramShort);
    }
  }

  public void write(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      write((byte)i, paramInt);
      return;
    }
  }

  public void write(byte[] paramArrayOfByte, int paramInt)
  {
    reserve(8 + paramArrayOfByte.length);
    writeHead((byte)13, paramInt);
    writeHead((byte)0, 0);
    write(paramArrayOfByte.length, 0);
    this.b.put(paramArrayOfByte);
  }

  public void write(double[] paramArrayOfDouble, int paramInt)
  {
    reserve(8);
    writeHead((byte)9, paramInt);
    write(paramArrayOfDouble.length, 0);
    int i = paramArrayOfDouble.length;
    for (int j = 0; j < i; j++)
      write(paramArrayOfDouble[j], 0);
  }

  public void write(float[] paramArrayOfFloat, int paramInt)
  {
    reserve(8);
    writeHead((byte)9, paramInt);
    write(paramArrayOfFloat.length, 0);
    int i = paramArrayOfFloat.length;
    for (int j = 0; j < i; j++)
      write(paramArrayOfFloat[j], 0);
  }

  public void write(int[] paramArrayOfInt, int paramInt)
  {
    reserve(8);
    writeHead((byte)9, paramInt);
    write(paramArrayOfInt.length, 0);
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
      write(paramArrayOfInt[j], 0);
  }

  public void write(long[] paramArrayOfLong, int paramInt)
  {
    reserve(8);
    writeHead((byte)9, paramInt);
    write(paramArrayOfLong.length, 0);
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++)
      write(paramArrayOfLong[j], 0);
  }

  public <T> void write(T[] paramArrayOfT, int paramInt)
  {
    writeArray(paramArrayOfT, paramInt);
  }

  public void write(short[] paramArrayOfShort, int paramInt)
  {
    reserve(8);
    writeHead((byte)9, paramInt);
    write(paramArrayOfShort.length, 0);
    int i = paramArrayOfShort.length;
    for (int j = 0; j < i; j++)
      write(paramArrayOfShort[j], 0);
  }

  public void write(boolean[] paramArrayOfBoolean, int paramInt)
  {
    reserve(8);
    writeHead((byte)9, paramInt);
    write(paramArrayOfBoolean.length, 0);
    int i = paramArrayOfBoolean.length;
    for (int j = 0; j < i; j++)
      write(paramArrayOfBoolean[j], 0);
  }

  public void writeByteString(String paramString, int paramInt)
  {
    reserve(10 + paramString.length());
    byte[] arrayOfByte = d.a(paramString);
    if (arrayOfByte.length > 255)
    {
      writeHead((byte)7, paramInt);
      this.b.putInt(arrayOfByte.length);
      this.b.put(arrayOfByte);
    }
    while (true)
    {
      return;
      writeHead((byte)6, paramInt);
      this.b.put((byte)arrayOfByte.length);
      this.b.put(arrayOfByte);
    }
  }

  public void writeHead(byte paramByte, int paramInt)
  {
    if (paramInt < 15)
    {
      byte b2 = (byte)(paramByte | paramInt << 4);
      this.b.put(b2);
    }
    while (true)
    {
      return;
      if (paramInt >= 256)
        break;
      byte b1 = (byte)(paramByte | 0xF0);
      this.b.put(b1);
      this.b.put((byte)paramInt);
    }
    throw new a("tag is too large: " + paramInt);
  }

  public void writeStringByte(String paramString, int paramInt)
  {
    byte[] arrayOfByte = d.a(paramString);
    reserve(10 + arrayOfByte.length);
    if (arrayOfByte.length > 255)
    {
      writeHead((byte)7, paramInt);
      this.b.putInt(arrayOfByte.length);
      this.b.put(arrayOfByte);
    }
    while (true)
    {
      return;
      writeHead((byte)6, paramInt);
      this.b.put((byte)arrayOfByte.length);
      this.b.put(arrayOfByte);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.qq.taf.jce.JceOutputStream
 * JD-Core Version:    0.6.2
 */