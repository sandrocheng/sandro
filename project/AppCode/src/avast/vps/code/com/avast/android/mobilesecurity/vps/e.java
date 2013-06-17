package com.avast.android.mobilesecurity.vps;

import com.avast.android.mobilesecurity.vps.b.t;
import com.avast.android.mobilesecurity.vps.b.u;
import com.avast.android.mobilesecurity.vps.d.c;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class e
{
  public static int a(u paramu1, u paramu2)
  {
    if ((paramu1 == null) || (paramu2 == null))
      throw new IllegalArgumentException("VPS: At least one of the parameters is null");
    int i;
    if (paramu1.a() > paramu2.a())
      i = 1;
    while (true)
    {
      return i;
      if (paramu1.a() < paramu2.a())
        i = -1;
      else
        i = 0;
    }
  }

  private static Object a(byte[] paramArrayOfByte, Class paramClass, int paramInt)
  {
    int i = 2;
    int j = 4;
    if ((paramArrayOfByte == null) || (paramClass == null))
      throw new NullPointerException("VPS: Provided byte array and/or primitive type class is null");
    if (paramArrayOfByte.length < paramInt + 1)
      throw new IndexOutOfBoundsException("VPS: Byte array length is " + paramArrayOfByte.length + ", requested index " + paramInt);
    if (paramClass.equals(Integer.TYPE))
      i = 1;
    while (true)
      if ((j == 0) || (i == 0))
      {
        throw new IllegalArgumentException("VPS: Class is not a primitive type class");
        if (paramClass.equals(Double.TYPE))
        {
          j = 8;
        }
        else if (paramClass.equals(Short.TYPE))
        {
          j = i;
          i = 3;
        }
        else if (paramClass.equals(Long.TYPE))
        {
          i = j;
          j = 8;
        }
        else if (paramClass.equals(Float.TYPE))
        {
          i = 5;
        }
        else if (paramClass.equals(Character.TYPE))
        {
          i = 6;
          j = 1;
        }
        else if (paramClass.equals(Boolean.TYPE))
        {
          i = 7;
          j = 1;
        }
        else if (paramClass.equals(Byte.TYPE))
        {
          i = 8;
          j = 1;
        }
      }
      else
      {
        if (paramArrayOfByte.length < j)
          throw new IllegalArgumentException("VPS: Provided byte array (" + paramArrayOfByte.length + ") is smaller than the primitive type requires (" + j + ")");
        if (paramArrayOfByte.length < paramInt + j)
          throw new IllegalArgumentException("VPS: Can't parse requested primitive type from given position");
        Object localObject;
        if (i == 8)
          localObject = Byte.valueOf(paramArrayOfByte[paramInt]);
        while (true)
        {
          return localObject;
          if (i == 7)
          {
            if (paramArrayOfByte[paramInt] == 0)
              localObject = Boolean.valueOf(false);
            else
              localObject = Boolean.valueOf(true);
          }
          else
          {
            ByteBuffer localByteBuffer = ByteBuffer.wrap(paramArrayOfByte, paramInt, j);
            localByteBuffer.order(null);
            switch (i)
            {
            default:
              throw new IllegalStateException("VPS: Terrible failure happened, primitive type recognized, but wrong value set somehow, this should never happen :>");
            case 1:
              localObject = Integer.valueOf(localByteBuffer.getInt());
              break;
            case 2:
              localObject = Double.valueOf(localByteBuffer.getDouble());
              break;
            case 3:
              localObject = Short.valueOf(localByteBuffer.getShort());
              break;
            case 4:
              localObject = Long.valueOf(localByteBuffer.getLong());
              break;
            case 5:
              localObject = Float.valueOf(localByteBuffer.getFloat());
              break;
            case 6:
              localObject = Character.valueOf(localByteBuffer.getChar());
            }
          }
        }
        i = 0;
        j = 0;
      }
  }

  public static List a(List paramList, HashSet paramHashSet1, HashSet paramHashSet2, boolean paramBoolean)
  {
    Iterator localIterator1 = paramList.iterator();
    label189: 
    while (true)
    {
      c localc;
      Iterator localIterator3;
      if (localIterator1.hasNext())
      {
        localc = (c)localIterator1.next();
        if ((localc != null) && (localc.b != null))
        {
          Iterator localIterator2 = paramHashSet1.iterator();
          localIterator3 = paramHashSet2.iterator();
          String str2;
          do
          {
            if (!localIterator2.hasNext())
              break;
            str2 = ((String)localIterator2.next()).toLowerCase();
          }
          while (!localc.b.toLowerCase().startsWith(str2));
        }
      }
      else
      {
        for (int i = 1; ; i = 0)
        {
          if (i != 0)
            break label189;
          String str1;
          do
          {
            if (!localIterator3.hasNext())
              break;
            str1 = ((String)localIterator3.next()).toLowerCase();
          }
          while (!localc.b.toLowerCase().startsWith(str1));
          for (int j = 1; ; j = 0)
          {
            if (j != 0)
            {
              localIterator1.remove();
              break;
            }
            if (paramBoolean)
              break;
            localIterator1.remove();
            break;
            return paramList;
          }
        }
      }
    }
  }

  public static List a(byte[] paramArrayOfByte)
  {
    LinkedList localLinkedList1 = new LinkedList();
    if (paramArrayOfByte == null);
    for (LinkedList localLinkedList2 = localLinkedList1; ; localLinkedList2 = localLinkedList1)
    {
      return localLinkedList2;
      int k;
      for (int i = 0; i < paramArrayOfByte.length; i = k)
      {
        int j = 4 + ((Integer)a(paramArrayOfByte, Integer.TYPE, i)).intValue();
        byte[] arrayOfByte = new byte[j];
        System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, j);
        k = j + i;
        c localc = b(arrayOfByte);
        if ((localc != null) && (localc.a != null))
          localc.c = arrayOfByte;
        localLinkedList1.add(localc);
      }
    }
  }

  public static byte[] a(u paramu)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(12);
    localByteBuffer.order(null);
    localByteBuffer.putInt(8);
    localByteBuffer.putInt(4);
    localByteBuffer.putShort(new Integer(t.a.a()).shortValue());
    localByteBuffer.put((byte)paramu.a());
    localByteBuffer.put((byte)-1);
    return localByteBuffer.array();
  }

  public static byte[] a(List paramList)
  {
    int i = 0;
    int j = 0;
    while (i < paramList.size())
    {
      j += ((c)paramList.get(i)).c.length;
      i++;
    }
    byte[] arrayOfByte = new byte[j];
    int k = 0;
    int m = 0;
    while (k < paramList.size())
    {
      System.arraycopy(((c)paramList.get(k)).c, 0, arrayOfByte, m, ((c)paramList.get(k)).c.length);
      m += ((c)paramList.get(k)).c.length;
      k++;
    }
    return arrayOfByte;
  }

  private static c b(byte[] paramArrayOfByte)
  {
    c localc = new c();
    Object localObject1 = null;
    try
    {
      int i = 4 + ((Integer)a(paramArrayOfByte, Integer.TYPE, 0)).intValue();
      int j = paramArrayOfByte.length;
      localObject1 = null;
      if (i == j)
        break label239;
      throw new IllegalArgumentException("VPS: Invalid structure length");
    }
    catch (Exception localException)
    {
    }
    if (localc.a != null)
      localc.b = localObject1;
    return localc;
    int n;
    localc.a = u.a((256 + ((Byte)a(paramArrayOfByte, Byte.TYPE, n + 2)).intValue()) % 256);
    Object localObject2 = localObject1;
    break label247;
    int k;
    int m;
    while (k < paramArrayOfByte.length)
    {
      m = ((Integer)a(paramArrayOfByte, Integer.TYPE, k)).intValue();
      n = k + 4;
      if (paramArrayOfByte[(-1 + (n + m))] != -1)
        throw new IllegalArgumentException("VPS: parseScanResult Invalid payload length");
      t localt = t.a(((Short)a(paramArrayOfByte, Short.TYPE, n)).shortValue());
      if (localt == null)
        break label260;
      switch (f.a[localt.ordinal()])
      {
      case 1:
      case 2:
        localObject2 = new String(paramArrayOfByte, n + 2, -1 + (m - 2));
        break label247;
        label239: k = 4;
        localObject1 = null;
      }
    }
    while (true)
    {
      label247: k = n + m;
      localObject1 = localObject2;
      break;
      label260: localObject2 = localObject1;
    }
  }

  public static List b(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    HashSet localHashSet = new HashSet();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ((localc != null) && (localc.b != null))
        if (localHashSet.contains(localc.b.toLowerCase()))
          localIterator.remove();
        else
          localHashSet.add(localc.b.toLowerCase());
    }
    return paramList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.e
 * JD-Core Version:    0.6.2
 */