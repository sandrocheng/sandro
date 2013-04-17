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
import puw.d;
import puw.h;

public final class JceInputStream
{
  protected String a = "GBK";
  private ByteBuffer b;

  public JceInputStream()
  {
  }

  public JceInputStream(ByteBuffer paramByteBuffer)
  {
    this.b = paramByteBuffer;
  }

  public JceInputStream(byte[] paramArrayOfByte)
  {
    this.b = ByteBuffer.wrap(paramArrayOfByte);
  }

  public JceInputStream(byte[] paramArrayOfByte, int paramInt)
  {
    this.b = ByteBuffer.wrap(paramArrayOfByte);
    this.b.position(paramInt);
  }

  public static void main(String[] paramArrayOfString)
  {
  }

  private int peakHead(a parama)
  {
    return readHead(parama, this.b.duplicate());
  }

  private <T> T[] readArrayImpl(T paramT, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      arrayOfObject = (Object[])Array.newInstance(paramT.getClass(), i);
      for (int j = 0; j < i; j++)
        arrayOfObject[j] = read(paramT, 0, true);
    }
    if (paramBoolean)
      throw new h("require field not exist.");
    Object[] arrayOfObject = null;
    return arrayOfObject;
  }

  public static int readHead(a parama, ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.get();
    parama.a = ((byte)(i & 0xF));
    parama.b = ((i & 0xF0) >> 4);
    if (parama.b == 15)
      parama.b = paramByteBuffer.get();
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
        a locala = new a();
        readHead(locala);
        switch (locala.a)
        {
        default:
          throw new h("type mismatch.");
        case 8:
        }
        int i = read(0, 0, true);
        if (i < 0)
          throw new h("size invalid: " + i);
        for (int j = 0; j < i; j++)
          paramMap1.put(read(localObject1, 0, true), read(localObject2, 1, true));
      }
    while (!paramBoolean);
    throw new h("require field not exist.");
  }

  private void skip(int paramInt)
  {
    this.b.position(paramInt + this.b.position());
  }

  private void skipField()
  {
    a locala = new a();
    readHead(locala);
    skipField(locala.a);
  }

  private void skipField(byte paramByte)
  {
    int i = 0;
    switch (paramByte)
    {
    default:
      throw new h("invalid type.");
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
      int m = this.b.get();
      if (m < 0)
        m += 256;
      skip(m);
      continue;
      skip(this.b.getInt());
      continue;
      int k = read(0, 0, true);
      while (i < k * 2)
      {
        skipField();
        i++;
      }
      continue;
      int j = read(0, 0, true);
      while (i < j)
      {
        skipField();
        i++;
      }
      continue;
      a locala = new a();
      readHead(locala);
      if (locala.a != 0)
        throw new h("skipField with invalid type, type value: " + paramByte + ", " + locala.a);
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
        a locala = new a();
        readHead(locala);
        if (locala.a != 10)
          throw new h("type mismatch.");
      }
      catch (Exception localException)
      {
        throw new h(localException.getMessage());
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
    throw new h("require field not exist.");
  }

  public ByteBuffer getBs()
  {
    return this.b;
  }

  public byte read(byte paramByte, int paramInt, boolean paramBoolean)
  {
    byte b1;
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 12:
        b1 = 0;
      case 0:
      }
    }
    while (true)
    {
      return b1;
      b1 = this.b.get();
      continue;
      if (paramBoolean)
        throw new h("require field not exist.");
      b1 = paramByte;
    }
  }

  public double read(double paramDouble, int paramInt, boolean paramBoolean)
  {
    double d;
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 12:
        d = 0.0D;
      case 4:
      case 5:
      }
    }
    while (true)
    {
      return d;
      d = this.b.getFloat();
      continue;
      d = this.b.getDouble();
      continue;
      if (paramBoolean)
        throw new h("require field not exist.");
      d = paramDouble;
    }
  }

  public float read(float paramFloat, int paramInt, boolean paramBoolean)
  {
    float f;
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 12:
        f = 0.0F;
      case 4:
      }
    }
    while (true)
    {
      return f;
      f = this.b.getFloat();
      continue;
      if (paramBoolean)
        throw new h("require field not exist.");
      f = paramFloat;
    }
  }

  public int read(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i;
    if (skipToTag(paramInt2))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 12:
        i = 0;
      case 0:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      return i;
      i = this.b.get();
      continue;
      i = this.b.getShort();
      continue;
      i = this.b.getInt();
      continue;
      if (paramBoolean)
        throw new h("require field not exist.");
      i = paramInt1;
    }
  }

  public long read(long paramLong, int paramInt, boolean paramBoolean)
  {
    long l;
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 12:
        l = 0L;
      case 0:
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      return l;
      l = this.b.get();
      continue;
      l = this.b.getShort();
      continue;
      l = this.b.getInt();
      continue;
      l = this.b.getLong();
      continue;
      if (paramBoolean)
        throw new h("require field not exist.");
      l = paramLong;
    }
  }

  public JceStruct read(JceStruct paramJceStruct, int paramInt, boolean paramBoolean)
  {
    JceStruct localJceStruct;
    if (skipToTag(paramInt))
    {
      try
      {
        localJceStruct = (JceStruct)paramJceStruct.getClass().newInstance();
        a locala = new a();
        readHead(locala);
        if (locala.a != 10)
          throw new h("type mismatch.");
      }
      catch (Exception localException)
      {
        throw new h(localException.getMessage());
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
    throw new h("require field not exist.");
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
    throw new h("read object error: unsupport type.");
  }

  public String read(String paramString, int paramInt, boolean paramBoolean)
  {
    byte[] arrayOfByte2;
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 6:
        int j = this.b.get();
        if (j < 0)
          j += 256;
        arrayOfByte2 = new byte[j];
        this.b.get(arrayOfByte2);
      case 7:
      }
    }
    while (true)
    {
      try
      {
        str = new String(arrayOfByte2, this.a);
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2)
      {
        str = new String(arrayOfByte2);
        continue;
      }
      int i = this.b.getInt();
      if ((i > 104857600) || (i < 0))
        throw new h("String too long: " + i);
      byte[] arrayOfByte1 = new byte[i];
      this.b.get(arrayOfByte1);
      try
      {
        str = new String(arrayOfByte1, this.a);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException1)
      {
        str = new String(arrayOfByte1);
      }
      continue;
      if (paramBoolean)
        throw new h("require field not exist.");
      String str = paramString;
    }
  }

  public short read(short paramShort, int paramInt, boolean paramBoolean)
  {
    short s;
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 12:
        s = 0;
      case 0:
      case 1:
      }
    }
    while (true)
    {
      return s;
      s = (short)this.b.get();
      continue;
      s = this.b.getShort();
      continue;
      if (paramBoolean)
        throw new h("require field not exist.");
      s = paramShort;
    }
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
      a locala1 = new a();
      readHead(locala1);
      switch (locala1.a)
      {
      default:
        throw new h("type mismatch.");
      case 13:
        a locala2 = new a();
        readHead(locala2);
        if (locala2.a != 0)
          throw new h("type mismatch, tag: " + paramInt + ", type: " + locala1.a + ", " + locala2.a);
        int k = read(0, 0, true);
        if (k < 0)
          throw new h("invalid size, tag: " + paramInt + ", type: " + locala1.a + ", " + locala2.a + ", size: " + k);
        arrayOfByte = new byte[k];
        this.b.get(arrayOfByte);
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
          throw new h("size invalid: " + i);
        arrayOfByte = new byte[i];
        for (int j = 0; j < i; j++)
          arrayOfByte[j] = read(arrayOfByte[0], 0, true);
      }
      arrayOfByte = null;
    }
    while (!paramBoolean);
    throw new h("require field not exist.");
  }

  public double[] read(double[] paramArrayOfDouble, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      arrayOfDouble = new double[i];
      for (int j = 0; j < i; j++)
        arrayOfDouble[j] = read(arrayOfDouble[0], 0, true);
    }
    double[] arrayOfDouble = null;
    if (paramBoolean)
      throw new h("require field not exist.");
    return arrayOfDouble;
  }

  public float[] read(float[] paramArrayOfFloat, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      arrayOfFloat = new float[i];
      for (int j = 0; j < i; j++)
        arrayOfFloat[j] = read(arrayOfFloat[0], 0, true);
    }
    float[] arrayOfFloat = null;
    if (paramBoolean)
      throw new h("require field not exist.");
    return arrayOfFloat;
  }

  public int[] read(int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      arrayOfInt = new int[i];
      for (int j = 0; j < i; j++)
        arrayOfInt[j] = read(arrayOfInt[0], 0, true);
    }
    int[] arrayOfInt = null;
    if (paramBoolean)
      throw new h("require field not exist.");
    return arrayOfInt;
  }

  public long[] read(long[] paramArrayOfLong, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      arrayOfLong = new long[i];
      for (int j = 0; j < i; j++)
        arrayOfLong[j] = read(arrayOfLong[0], 0, true);
    }
    long[] arrayOfLong = null;
    if (paramBoolean)
      throw new h("require field not exist.");
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
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      arrayOfShort = new short[i];
      for (int j = 0; j < i; j++)
        arrayOfShort[j] = read(arrayOfShort[0], 0, true);
    }
    short[] arrayOfShort = null;
    if (paramBoolean)
      throw new h("require field not exist.");
    return arrayOfShort;
  }

  public boolean[] read(boolean[] paramArrayOfBoolean, int paramInt, boolean paramBoolean)
  {
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      arrayOfBoolean = new boolean[i];
      for (int j = 0; j < i; j++)
        arrayOfBoolean[j] = read(arrayOfBoolean[0], 0, true);
    }
    boolean[] arrayOfBoolean = null;
    if (paramBoolean)
      throw new h("require field not exist.");
    return arrayOfBoolean;
  }

  public <T> List<T> readArray(List<T> paramList, int paramInt, boolean paramBoolean)
  {
    int i = 0;
    Object localObject;
    if ((paramList == null) || (paramList.isEmpty()))
      localObject = new ArrayList();
    while (true)
    {
      return localObject;
      Object[] arrayOfObject = readArrayImpl(paramList.get(0), paramInt, paramBoolean);
      if (arrayOfObject == null)
      {
        localObject = null;
      }
      else
      {
        ArrayList localArrayList = new ArrayList();
        while (i < arrayOfObject.length)
        {
          localArrayList.add(arrayOfObject[i]);
          i++;
        }
        localObject = localArrayList;
      }
    }
  }

  public <T> T[] readArray(T[] paramArrayOfT, int paramInt, boolean paramBoolean)
  {
    if ((paramArrayOfT == null) || (paramArrayOfT.length == 0))
      throw new h("unable to get type of key and value.");
    return readArrayImpl(paramArrayOfT[0], paramInt, paramBoolean);
  }

  public String readByteString(String paramString, int paramInt, boolean paramBoolean)
  {
    String str;
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 6:
        int j = this.b.get();
        if (j < 0)
          j += 256;
        byte[] arrayOfByte2 = new byte[j];
        this.b.get(arrayOfByte2);
        str = d.a(arrayOfByte2);
      case 7:
      }
    }
    while (true)
    {
      return str;
      int i = this.b.getInt();
      if ((i > 104857600) || (i < 0))
        throw new h("String too long: " + i);
      byte[] arrayOfByte1 = new byte[i];
      this.b.get(arrayOfByte1);
      str = d.a(arrayOfByte1);
      continue;
      if (paramBoolean)
        throw new h("require field not exist.");
      str = paramString;
    }
  }

  public void readHead(a parama)
  {
    readHead(parama, this.b);
  }

  public List readList(int paramInt, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (skipToTag(paramInt))
    {
      a locala1 = new a();
      readHead(locala1);
      switch (locala1.a)
      {
      default:
        throw new h("type mismatch.");
      case 9:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      int j = 0;
      if (j < i)
      {
        a locala2 = new a();
        readHead(locala2);
        switch (locala2.a)
        {
        case 11:
        default:
          throw new h("type mismatch.");
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
          int k = this.b.get();
          if (k < 0)
            k += 256;
          skip(k);
          continue;
          skip(this.b.getInt());
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
            throw new h("type mismatch." + localException);
          }
          localArrayList.add(new Integer(0));
        }
      }
    }
    else if (paramBoolean)
    {
      throw new h("require field not exist.");
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
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 6:
        int j = this.b.get();
        if (j < 0)
          j += 256;
        arrayOfByte2 = new byte[j];
        this.b.get(arrayOfByte2);
      case 7:
      }
    }
    do
    {
      while (true)
      {
        try
        {
          str = new String(arrayOfByte2, this.a);
          return str;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException2)
        {
          str = new String(arrayOfByte2);
          continue;
        }
        int i = this.b.getInt();
        if ((i > 104857600) || (i < 0))
          throw new h("String too long: " + i);
        byte[] arrayOfByte1 = new byte[i];
        this.b.get(arrayOfByte1);
        try
        {
          str = new String(arrayOfByte1, this.a);
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException1)
        {
          str = new String(arrayOfByte1);
        }
      }
      String str = null;
    }
    while (!paramBoolean);
    throw new h("require field not exist.");
  }

  public Map<String, String> readStringMap(int paramInt, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (skipToTag(paramInt))
    {
      a locala = new a();
      readHead(locala);
      switch (locala.a)
      {
      default:
        throw new h("type mismatch.");
      case 8:
      }
      int i = read(0, 0, true);
      if (i < 0)
        throw new h("size invalid: " + i);
      for (int j = 0; j < i; j++)
        localHashMap.put(readString(0, true), readString(1, true));
    }
    if (paramBoolean)
      throw new h("require field not exist.");
    return localHashMap;
  }

  public int setServerEncoding(String paramString)
  {
    this.a = paramString;
    return 0;
  }

  public void skipToStructEnd()
  {
    a locala = new a();
    do
    {
      readHead(locala);
      skipField(locala.a);
    }
    while (locala.a != 11);
  }

  public boolean skipToTag(int paramInt)
  {
    boolean bool = false;
    try
    {
      a locala = new a();
      while (true)
      {
        int i = peakHead(locala);
        int j = locala.b;
        bool = false;
        if (paramInt > j)
        {
          int m = locala.a;
          bool = false;
          if (m != 11);
        }
        else
        {
          int k = locala.b;
          bool = false;
          if (paramInt != k)
            break;
          bool = true;
          break;
        }
        skip(i);
        skipField(locala.a);
      }
    }
    catch (h localh)
    {
    }
    catch (BufferUnderflowException localBufferUnderflowException)
    {
    }
    return bool;
  }

  public void warp(byte[] paramArrayOfByte)
  {
    if (this.b != null)
      this.b.clear();
    this.b = ByteBuffer.wrap(paramArrayOfByte);
  }

  public static class a
  {
    public byte a;
    public int b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.qq.taf.jce.JceInputStream
 * JD-Core Version:    0.6.2
 */