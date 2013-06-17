package com.avast.android.mobilesecurity.vps.b;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
{
  public static byte[] a(Map paramMap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ByteBuffer localByteBuffer = ByteBuffer.allocate(14);
    localByteBuffer.order(null);
    localByteBuffer.putInt(0);
    localByteArrayOutputStream.write(localByteBuffer.array(), 0, 4);
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      short s = ((j)localEntry.getKey()).a();
      Object localObject = localEntry.getValue();
      if ((localObject instanceof String))
      {
        localByteBuffer.clear();
        localByteBuffer.putInt(1 + (2 + ((String)localObject).getBytes().length));
        localByteBuffer.putShort(s);
        localByteArrayOutputStream.write(localByteBuffer.array(), 0, 6);
        localByteArrayOutputStream.write(((String)localObject).getBytes(), 0, ((String)localObject).getBytes().length);
        localByteArrayOutputStream.write(-1);
      }
      else if ((localObject instanceof Integer))
      {
        localByteBuffer.clear();
        localByteBuffer.putInt(7);
        localByteBuffer.putShort(s);
        localByteBuffer.putInt(((Integer)localObject).intValue());
        localByteArrayOutputStream.write(localByteBuffer.array(), 0, 10);
        localByteArrayOutputStream.write(-1);
      }
      else if ((localObject instanceof Short))
      {
        localByteBuffer.clear();
        localByteBuffer.putInt(5);
        localByteBuffer.putShort(s);
        localByteBuffer.putShort(((Short)localObject).shortValue());
        localByteArrayOutputStream.write(localByteBuffer.array(), 0, 8);
        localByteArrayOutputStream.write(-1);
      }
      else if ((localObject instanceof Byte))
      {
        localByteBuffer.clear();
        localByteBuffer.putInt(4);
        localByteBuffer.putShort(s);
        localByteBuffer.put(((Byte)localObject).byteValue());
        localByteArrayOutputStream.write(localByteBuffer.array(), 0, 7);
        localByteArrayOutputStream.write(-1);
      }
      else if ((localObject instanceof Double))
      {
        localByteBuffer.clear();
        localByteBuffer.putInt(11);
        localByteBuffer.putShort(s);
        localByteBuffer.putDouble(((Double)localObject).doubleValue());
        localByteArrayOutputStream.write(localByteBuffer.array(), 0, 14);
        localByteArrayOutputStream.write(-1);
      }
      else if ((localObject instanceof Float))
      {
        localByteBuffer.clear();
        localByteBuffer.putInt(7);
        localByteBuffer.putShort(s);
        localByteBuffer.putFloat(((Float)localObject).floatValue());
        localByteArrayOutputStream.write(localByteBuffer.array(), 0, 10);
        localByteArrayOutputStream.write(-1);
      }
      else if ((localObject instanceof Long))
      {
        localByteBuffer.clear();
        localByteBuffer.putInt(11);
        localByteBuffer.putShort(s);
        localByteBuffer.putLong(((Long)localObject).longValue());
        localByteArrayOutputStream.write(localByteBuffer.array(), 0, 14);
        localByteArrayOutputStream.write(-1);
      }
      else if ((localObject instanceof Character))
      {
        localByteBuffer.clear();
        localByteBuffer.putInt(4);
        localByteBuffer.putShort(s);
        localByteBuffer.putChar(((Character)localObject).charValue());
        localByteArrayOutputStream.write(localByteBuffer.array(), 0, 7);
        localByteArrayOutputStream.write(-1);
      }
      else
      {
        if ((localObject instanceof Boolean))
        {
          localByteBuffer.clear();
          localByteBuffer.putInt(4);
          localByteBuffer.putShort(s);
          localByteArrayOutputStream.write(localByteBuffer.array(), 0, 6);
          if (((Boolean)localObject).booleanValue())
            localByteArrayOutputStream.write(1);
          while (true)
          {
            localByteArrayOutputStream.write(-1);
            break;
            localByteArrayOutputStream.write(0);
          }
        }
        throw new IllegalArgumentException("");
      }
    }
    byte[] arrayOfByte1 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.reset();
    localByteBuffer.clear();
    localByteBuffer.putInt(-4 + arrayOfByte1.length);
    byte[] arrayOfByte2 = localByteBuffer.array();
    for (int i = 0; i < 4; i++)
      arrayOfByte1[i] = arrayOfByte2[i];
    try
    {
      localByteArrayOutputStream.close();
      label726: return arrayOfByte1;
    }
    catch (IOException localIOException)
    {
      break label726;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.b.b
 * JD-Core Version:    0.6.2
 */