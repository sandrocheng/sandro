package com.qq.taf.jce;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class JceInputStream
{
  private ByteBuffer bs;
  protected String sServerEncoding = "GBK";

  public JceInputStream()
  {
  }

  public JceInputStream(ByteBuffer paramByteBuffer)
  {
    this.bs = paramByteBuffer;
  }

  public JceInputStream(byte[] paramArrayOfByte)
  {
    this.bs = ByteBuffer.wrap(paramArrayOfByte);
  }

  public JceInputStream(byte[] paramArrayOfByte, int paramInt)
  {
    this.bs = ByteBuffer.wrap(paramArrayOfByte);
    this.bs.position(paramInt);
  }

  public static void main(String[] paramArrayOfString)
  {
  }

  private int peakHead(HeadData paramHeadData)
  {
    return readHead(paramHeadData, this.bs.duplicate());
  }

  private <T> T[] readArrayImpl(T paramT, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      arrayOfObject = (Object[])Array.newInstance(paramT.getClass(), i);
      for (int j = 0; j < i; j++)
        arrayOfObject[j] = read(paramT, 0, true);
    }
    if (paramBoolean)
      throw new JceDecodeException("require field not exist.");
    Object[] arrayOfObject = null;
    return arrayOfObject;
  }

  public static int readHead(HeadData paramHeadData, ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.get();
    paramHeadData.type = ((byte)(i & 0xF));
    paramHeadData.tag = ((i & 0xF0) >> 4);
    if (paramHeadData.tag == 15)
      paramHeadData.tag = paramByteBuffer.get();
    for (int j = 2; ; j = 1)
      return j;
  }

  private <K, V> Map<K, V> readMap(Map<K, V> paramMap1, Map<K, V> paramMap2, int paramInt, boolean paramBoolean)
  {
    if ((paramMap2 == null) || (paramMap2.isEmpty()))
      paramMap1 = new HashMap();
    do
      while (true)
      {
        return paramMap1;
        Map.Entry localEntry = (Map.Entry)paramMap2.entrySet().iterator().next();
        Object localObject1 = localEntry.getKey();
        Object localObject2 = localEntry.getValue();
        if (!skipToTag(paramInt))
          break;
        HeadData localHeadData = new HeadData();
        readHead(localHeadData);
        switch (localHeadData.type)
        {
        default:
          throw new JceDecodeException("type mismatch.");
        case 8:
        }
        int i = read(0, 0, true);
        if (i < 0)
          throw new JceDecodeException("size invalid: " + i);
        for (int j = 0; j < i; j++)
          paramMap1.put(read(localObject1, 0, true), read(localObject2, 1, true));
      }
    while (!paramBoolean);
    throw new JceDecodeException("require field not exist.");
  }

  private void skip(int paramInt)
  {
    this.bs.position(paramInt + this.bs.position());
  }

  private void skipField()
  {
    HeadData localHeadData = new HeadData();
    readHead(localHeadData);
    skipField(localHeadData.type);
  }

  private void skipField(byte paramByte)
  {
    switch (paramByte)
    {
    default:
      throw new JceDecodeException("invalid type.");
    case 0:
      skip(1);
    case 11:
    case 12:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 13:
    case 10:
    }
    while (true)
    {
      return;
      skip(2);
      continue;
      skip(4);
      continue;
      skip(8);
      continue;
      skip(4);
      continue;
      skip(8);
      continue;
      int n = this.bs.get();
      if (n < 0)
        n += 256;
      skip(n);
      continue;
      skip(this.bs.getInt());
      continue;
      int k = read(0, 0, true);
      for (int m = 0; m < k * 2; m++)
        skipField();
      continue;
      int i = read(0, 0, true);
      for (int j = 0; j < i; j++)
        skipField();
      continue;
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      if (localHeadData.type != 0)
        throw new JceDecodeException("skipField with invalid type, type value: " + paramByte + ", " + localHeadData.type);
      skip(read(0, 0, true));
      continue;
      skipToStructEnd();
    }
  }

  public JceStruct directRead(JceStruct paramJceStruct, int paramInt, boolean paramBoolean)
  {
    JceStruct localJceStruct1;
    if (skipToTag(paramInt))
    {
      try
      {
        JceStruct localJceStruct2 = paramJceStruct.newInit();
        localJceStruct1 = localJceStruct2;
        HeadData localHeadData = new HeadData();
        readHead(localHeadData);
        if (localHeadData.type != 10)
          throw new JceDecodeException("type mismatch.");
      }
      catch (Exception localException)
      {
        throw new JceDecodeException(localException.getMessage());
      }
      localJceStruct1.readFrom(this);
      skipToStructEnd();
    }
    do
    {
      return localJceStruct1;
      localJceStruct1 = null;
    }
    while (!paramBoolean);
    throw new JceDecodeException("require field not exist.");
  }

  public ByteBuffer getBs()
  {
    return this.bs;
  }

  public byte read(byte paramByte, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 12:
        paramByte = 0;
      case 0:
      }
    }
    while (!paramBoolean)
      while (true)
      {
        HeadData localHeadData;
        return paramByte;
        paramByte = this.bs.get();
      }
    throw new JceDecodeException("require field not exist.");
  }

  public double read(double paramDouble, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 12:
        paramDouble = 0.0D;
      case 4:
      case 5:
      }
    }
    while (!paramBoolean)
      while (true)
      {
        HeadData localHeadData;
        return paramDouble;
        paramDouble = this.bs.getFloat();
        continue;
        paramDouble = this.bs.getDouble();
      }
    throw new JceDecodeException("require field not exist.");
  }

  public float read(float paramFloat, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 12:
        paramFloat = 0.0F;
      case 4:
      }
    }
    while (!paramBoolean)
      while (true)
      {
        HeadData localHeadData;
        return paramFloat;
        paramFloat = this.bs.getFloat();
      }
    throw new JceDecodeException("require field not exist.");
  }

  public int read(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (skipToTag(paramInt2))
    {
      localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 12:
        paramInt1 = 0;
      case 0:
      case 1:
      case 2:
      }
    }
    while (!paramBoolean)
      while (true)
      {
        HeadData localHeadData;
        return paramInt1;
        paramInt1 = this.bs.get();
        continue;
        paramInt1 = this.bs.getShort();
        continue;
        paramInt1 = this.bs.getInt();
      }
    throw new JceDecodeException("require field not exist.");
  }

  public long read(long paramLong, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 12:
        paramLong = 0L;
      case 0:
      case 1:
      case 2:
      case 3:
      }
    }
    while (!paramBoolean)
      while (true)
      {
        HeadData localHeadData;
        return paramLong;
        paramLong = this.bs.get();
        continue;
        paramLong = this.bs.getShort();
        continue;
        paramLong = this.bs.getInt();
        continue;
        paramLong = this.bs.getLong();
      }
    throw new JceDecodeException("require field not exist.");
  }

  public JceStruct read(JceStruct paramJceStruct, int paramInt, boolean paramBoolean)
  {
    JceStruct localJceStruct;
    if (skipToTag(paramInt))
    {
      try
      {
        localJceStruct = (JceStruct)paramJceStruct.getClass().newInstance();
        HeadData localHeadData = new HeadData();
        readHead(localHeadData);
        if (localHeadData.type != 10)
          throw new JceDecodeException("type mismatch.");
      }
      catch (Exception localException)
      {
        throw new JceDecodeException(localException.getMessage());
      }
      localJceStruct.readFrom(this);
      skipToStructEnd();
    }
    do
    {
      return localJceStruct;
      localJceStruct = null;
    }
    while (!paramBoolean);
    throw new JceDecodeException("require field not exist.");
  }

  public <T> Object read(T paramT, int paramInt, boolean paramBoolean)
  {
    Object localObject;
    if ((paramT instanceof Byte))
      localObject = Byte.valueOf(read((byte)0, paramInt, paramBoolean));
    while (true)
    {
      return localObject;
      if ((paramT instanceof Boolean))
      {
        localObject = Boolean.valueOf(read(false, paramInt, paramBoolean));
      }
      else if ((paramT instanceof Short))
      {
        localObject = Short.valueOf(read((short)0, paramInt, paramBoolean));
      }
      else if ((paramT instanceof Integer))
      {
        localObject = Integer.valueOf(read(0, paramInt, paramBoolean));
      }
      else if ((paramT instanceof Long))
      {
        localObject = Long.valueOf(read(0L, paramInt, paramBoolean));
      }
      else if ((paramT instanceof Float))
      {
        localObject = Float.valueOf(read(0.0F, paramInt, paramBoolean));
      }
      else if ((paramT instanceof Double))
      {
        localObject = Double.valueOf(read(0.0D, paramInt, paramBoolean));
      }
      else if ((paramT instanceof String))
      {
        localObject = String.valueOf(readString(paramInt, paramBoolean));
      }
      else if ((paramT instanceof Map))
      {
        localObject = readMap((Map)paramT, paramInt, paramBoolean);
      }
      else if ((paramT instanceof List))
      {
        localObject = readArray((List)paramT, paramInt, paramBoolean);
      }
      else if ((paramT instanceof JceStruct))
      {
        localObject = read((JceStruct)paramT, paramInt, paramBoolean);
      }
      else
      {
        if (!paramT.getClass().isArray())
          break;
        if (((paramT instanceof byte[])) || ((paramT instanceof Byte[])))
          localObject = read((byte[])null, paramInt, paramBoolean);
        else if ((paramT instanceof boolean[]))
          localObject = read((boolean[])null, paramInt, paramBoolean);
        else if ((paramT instanceof short[]))
          localObject = read((short[])null, paramInt, paramBoolean);
        else if ((paramT instanceof int[]))
          localObject = read((int[])null, paramInt, paramBoolean);
        else if ((paramT instanceof long[]))
          localObject = read((long[])null, paramInt, paramBoolean);
        else if ((paramT instanceof float[]))
          localObject = read((float[])null, paramInt, paramBoolean);
        else if ((paramT instanceof double[]))
          localObject = read((double[])null, paramInt, paramBoolean);
        else
          localObject = readArray((Object[])paramT, paramInt, paramBoolean);
      }
    }
    throw new JceDecodeException("read object error: unsupport type.");
  }

  public String read(String paramString, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 6:
        j = this.bs.get();
        if (j < 0)
          j += 256;
        arrayOfByte2 = new byte[j];
        this.bs.get(arrayOfByte2);
      case 7:
      }
    }
    while (!paramBoolean)
      while (true)
      {
        try
        {
          HeadData localHeadData;
          int j;
          paramString = new String(arrayOfByte2, this.sServerEncoding);
          return paramString;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException2)
        {
          byte[] arrayOfByte2;
          paramString = new String(arrayOfByte2);
          continue;
        }
        int i = this.bs.getInt();
        if ((i > 104857600) || (i < 0))
          throw new JceDecodeException("String too long: " + i);
        byte[] arrayOfByte1 = new byte[i];
        this.bs.get(arrayOfByte1);
        try
        {
          paramString = new String(arrayOfByte1, this.sServerEncoding);
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException1)
        {
          paramString = new String(arrayOfByte1);
        }
      }
    throw new JceDecodeException("require field not exist.");
  }

  public short read(short paramShort, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 12:
        paramShort = 0;
      case 0:
      case 1:
      }
    }
    while (!paramBoolean)
      while (true)
      {
        HeadData localHeadData;
        return paramShort;
        paramShort = (short)this.bs.get();
        continue;
        paramShort = this.bs.getShort();
      }
    throw new JceDecodeException("require field not exist.");
  }

  public boolean read(boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    int i = read((byte)0, paramInt, paramBoolean2);
    boolean bool = false;
    if (i != 0)
      bool = true;
    return bool;
  }

  public byte[] read(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    byte[] arrayOfByte;
    if (skipToTag(paramInt))
    {
      HeadData localHeadData1 = new HeadData();
      readHead(localHeadData1);
      switch (localHeadData1.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 13:
        HeadData localHeadData2 = new HeadData();
        readHead(localHeadData2);
        if (localHeadData2.type != 0)
          throw new JceDecodeException("type mismatch, tag: " + paramInt + ", type: " + localHeadData1.type + ", " + localHeadData2.type);
        int k = read(0, 0, true);
        if (k < 0)
          throw new JceDecodeException("invalid size, tag: " + paramInt + ", type: " + localHeadData1.type + ", " + localHeadData2.type + ", size: " + k);
        arrayOfByte = new byte[k];
        this.bs.get(arrayOfByte);
      case 9:
      }
    }
    do
    {
      while (true)
      {
        return arrayOfByte;
        int i = read(0, 0, true);
        if (i < 0)
          throw new JceDecodeException("size invalid: " + i);
        arrayOfByte = new byte[i];
        for (int j = 0; j < i; j++)
          arrayOfByte[j] = read(arrayOfByte[0], 0, true);
      }
      arrayOfByte = null;
    }
    while (!paramBoolean);
    throw new JceDecodeException("require field not exist.");
  }

  public double[] read(double[] paramArrayOfDouble, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      arrayOfDouble = new double[i];
      for (int j = 0; j < i; j++)
        arrayOfDouble[j] = read(arrayOfDouble[0], 0, true);
    }
    double[] arrayOfDouble = null;
    if (paramBoolean)
      throw new JceDecodeException("require field not exist.");
    return arrayOfDouble;
  }

  public float[] read(float[] paramArrayOfFloat, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      arrayOfFloat = new float[i];
      for (int j = 0; j < i; j++)
        arrayOfFloat[j] = read(arrayOfFloat[0], 0, true);
    }
    float[] arrayOfFloat = null;
    if (paramBoolean)
      throw new JceDecodeException("require field not exist.");
    return arrayOfFloat;
  }

  public int[] read(int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      arrayOfInt = new int[i];
      for (int j = 0; j < i; j++)
        arrayOfInt[j] = read(arrayOfInt[0], 0, true);
    }
    int[] arrayOfInt = null;
    if (paramBoolean)
      throw new JceDecodeException("require field not exist.");
    return arrayOfInt;
  }

  public long[] read(long[] paramArrayOfLong, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      arrayOfLong = new long[i];
      for (int j = 0; j < i; j++)
        arrayOfLong[j] = read(arrayOfLong[0], 0, true);
    }
    long[] arrayOfLong = null;
    if (paramBoolean)
      throw new JceDecodeException("require field not exist.");
    return arrayOfLong;
  }

  public JceStruct[] read(JceStruct[] paramArrayOfJceStruct, int paramInt, boolean paramBoolean)
  {
    return (JceStruct[])readArray(paramArrayOfJceStruct, paramInt, paramBoolean);
  }

  public String[] read(String[] paramArrayOfString, int paramInt, boolean paramBoolean)
  {
    return (String[])readArray(paramArrayOfString, paramInt, paramBoolean);
  }

  public short[] read(short[] paramArrayOfShort, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      arrayOfShort = new short[i];
      for (int j = 0; j < i; j++)
        arrayOfShort[j] = read(arrayOfShort[0], 0, true);
    }
    short[] arrayOfShort = null;
    if (paramBoolean)
      throw new JceDecodeException("require field not exist.");
    return arrayOfShort;
  }

  public boolean[] read(boolean[] paramArrayOfBoolean, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      arrayOfBoolean = new boolean[i];
      for (int j = 0; j < i; j++)
        arrayOfBoolean[j] = read(arrayOfBoolean[0], 0, true);
    }
    boolean[] arrayOfBoolean = null;
    if (paramBoolean)
      throw new JceDecodeException("require field not exist.");
    return arrayOfBoolean;
  }

  public <T> List<T> readArray(List<T> paramList, int paramInt, boolean paramBoolean)
  {
    ArrayList localArrayList;
    if ((paramList == null) || (paramList.isEmpty()))
      localArrayList = new ArrayList();
    while (true)
    {
      return localArrayList;
      Object[] arrayOfObject = readArrayImpl(paramList.get(0), paramInt, paramBoolean);
      if (arrayOfObject == null)
      {
        localArrayList = null;
      }
      else
      {
        localArrayList = new ArrayList();
        for (int i = 0; i < arrayOfObject.length; i++)
          localArrayList.add(arrayOfObject[i]);
      }
    }
  }

  public <T> T[] readArray(T[] paramArrayOfT, int paramInt, boolean paramBoolean)
  {
    if ((paramArrayOfT == null) || (paramArrayOfT.length == 0))
      throw new JceDecodeException("unable to get type of key and value.");
    return readArrayImpl(paramArrayOfT[0], paramInt, paramBoolean);
  }

  public String readByteString(String paramString, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 6:
        j = this.bs.get();
        if (j < 0)
          j += 256;
        arrayOfByte2 = new byte[j];
        this.bs.get(arrayOfByte2);
        paramString = HexUtil.bytes2HexStr(arrayOfByte2);
      case 7:
      }
    }
    while (!paramBoolean)
      while (true)
      {
        HeadData localHeadData;
        int j;
        byte[] arrayOfByte2;
        return paramString;
        int i = this.bs.getInt();
        if ((i > 104857600) || (i < 0))
          throw new JceDecodeException("String too long: " + i);
        byte[] arrayOfByte1 = new byte[i];
        this.bs.get(arrayOfByte1);
        paramString = HexUtil.bytes2HexStr(arrayOfByte1);
      }
    throw new JceDecodeException("require field not exist.");
  }

  public void readHead(HeadData paramHeadData)
  {
    readHead(paramHeadData, this.bs);
  }

  public List readList(int paramInt, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (skipToTag(paramInt))
    {
      HeadData localHeadData1 = new HeadData();
      readHead(localHeadData1);
      switch (localHeadData1.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      int j = 0;
      if (j < i)
      {
        HeadData localHeadData2 = new HeadData();
        readHead(localHeadData2);
        switch (localHeadData2.type)
        {
        case 11:
        default:
          throw new JceDecodeException("type mismatch.");
        case 0:
          skip(1);
        case 8:
        case 9:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 10:
        case 12:
        }
        while (true)
        {
          j++;
          break;
          skip(2);
          continue;
          skip(4);
          continue;
          skip(8);
          continue;
          skip(4);
          continue;
          skip(8);
          continue;
          int k = this.bs.get();
          if (k < 0)
            k += 256;
          skip(k);
          continue;
          skip(this.bs.getInt());
          continue;
          try
          {
            JceStruct localJceStruct = (JceStruct)Class.forName(JceStruct.class.getName()).getConstructor(new Class[0]).newInstance(new Object[0]);
            localJceStruct.readFrom(this);
            skipToStructEnd();
            localArrayList.add(localJceStruct);
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            throw new JceDecodeException("type mismatch." + localException);
          }
          localArrayList.add(new Integer(0));
        }
      }
    }
    else if (paramBoolean)
    {
      throw new JceDecodeException("require field not exist.");
    }
    return localArrayList;
  }

  public <K, V> HashMap<K, V> readMap(Map<K, V> paramMap, int paramInt, boolean paramBoolean)
  {
    return (HashMap)readMap(new HashMap(), paramMap, paramInt, paramBoolean);
  }

  public String readString(int paramInt, boolean paramBoolean)
  {
    byte[] arrayOfByte2;
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 6:
        int j = this.bs.get();
        if (j < 0)
          j += 256;
        arrayOfByte2 = new byte[j];
        this.bs.get(arrayOfByte2);
      case 7:
      }
    }
    do
    {
      while (true)
      {
        try
        {
          str = new String(arrayOfByte2, this.sServerEncoding);
          return str;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException2)
        {
          str = new String(arrayOfByte2);
          continue;
        }
        int i = this.bs.getInt();
        if ((i > 104857600) || (i < 0))
          throw new JceDecodeException("String too long: " + i);
        byte[] arrayOfByte1 = new byte[i];
        this.bs.get(arrayOfByte1);
        try
        {
          str = new String(arrayOfByte1, this.sServerEncoding);
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException1)
        {
          str = new String(arrayOfByte1);
        }
      }
      String str = null;
    }
    while (!paramBoolean);
    throw new JceDecodeException("require field not exist.");
  }

  public Map<String, String> readStringMap(int paramInt, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (skipToTag(paramInt))
    {
      HeadData localHeadData = new HeadData();
      readHead(localHeadData);
      switch (localHeadData.type)
      {
      default:
        throw new JceDecodeException("type mismatch.");
      case 8:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new JceDecodeException("size invalid: " + i);
      for (int j = 0; j < i; j++)
        localHashMap.put(readString(0, true), readString(1, true));
    }
    if (paramBoolean)
      throw new JceDecodeException("require field not exist.");
    return localHashMap;
  }

  public int setServerEncoding(String paramString)
  {
    this.sServerEncoding = paramString;
    return 0;
  }

  public void skipToStructEnd()
  {
    HeadData localHeadData = new HeadData();
    do
    {
      readHead(localHeadData);
      skipField(localHeadData.type);
    }
    while (localHeadData.type != 11);
  }

  public boolean skipToTag(int paramInt)
  {
    boolean bool = false;
    try
    {
      HeadData localHeadData = new HeadData();
      while (true)
      {
        int i = peakHead(localHeadData);
        int j = localHeadData.tag;
        bool = false;
        if (paramInt > j)
        {
          int m = localHeadData.type;
          bool = false;
          if (m != 11);
        }
        else
        {
          int k = localHeadData.tag;
          bool = false;
          if (paramInt != k)
            break;
          bool = true;
          break;
        }
        skip(i);
        skipField(localHeadData.type);
      }
    }
    catch (JceDecodeException localJceDecodeException)
    {
    }
    catch (BufferUnderflowException localBufferUnderflowException)
    {
    }
    return bool;
  }

  public void warp(byte[] paramArrayOfByte)
  {
    if (this.bs != null)
      this.bs.clear();
    this.bs = ByteBuffer.wrap(paramArrayOfByte);
  }

  public static class HeadData
  {
    public int tag;
    public byte type;

    public void clear()
    {
      this.type = 0;
      this.tag = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.JceInputStream
 * JD-Core Version:    0.6.2
 */