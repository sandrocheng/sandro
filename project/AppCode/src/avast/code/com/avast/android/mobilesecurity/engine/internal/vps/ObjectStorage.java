package com.avast.android.mobilesecurity.engine.internal.vps;

import com.avast.android.generic.util.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ObjectStorage
{
  private static final List a = new ArrayList();
  private static final List b = new ArrayList();

  public static void clearStorage(int paramInt)
  {
    if (paramInt >= 0);
    try
    {
      if (paramInt >= a.size())
        throw new IndexOutOfBoundsException();
    }
    finally
    {
    }
    HashMap localHashMap1 = (HashMap)a.get(paramInt);
    if (localHashMap1 != null)
      localHashMap1.clear();
    if ((paramInt < 0) || (paramInt >= b.size()))
      throw new IndexOutOfBoundsException();
    HashMap localHashMap2 = (HashMap)b.get(paramInt);
    if (localHashMap2 != null)
      localHashMap2.clear();
  }

  public static byte[] getByteArray(int paramInt, String paramString)
  {
    if (paramInt < 0)
      try
      {
        throw new IllegalArgumentException();
      }
      finally
      {
      }
    if (paramString == null)
      throw new NullPointerException();
    int i = a.size();
    byte[] arrayOfByte;
    if (paramInt >= i)
      arrayOfByte = null;
    while (true)
    {
      return arrayOfByte;
      HashMap localHashMap = (HashMap)a.get(paramInt);
      if (localHashMap != null)
        arrayOfByte = (byte[])localHashMap.get(paramString);
      else
        arrayOfByte = null;
    }
  }

  public static Object getObject(int paramInt, String paramString)
  {
    if (paramInt < 0)
      try
      {
        throw new IllegalArgumentException();
      }
      finally
      {
      }
    if (paramString == null)
      throw new NullPointerException();
    int i = b.size();
    Object localObject1;
    if (paramInt >= i)
      localObject1 = null;
    while (true)
    {
      return localObject1;
      HashMap localHashMap = (HashMap)b.get(paramInt);
      if (localHashMap != null)
      {
        Object localObject2 = localHashMap.get(paramString);
        localObject1 = localObject2;
      }
      else
      {
        localObject1 = null;
      }
    }
  }

  public static void initializeStorage(int paramInt)
  {
    if (paramInt < 0)
      try
      {
        throw new IllegalArgumentException();
      }
      finally
      {
      }
    m.c("ObjectStorage: initiating for contextId = " + paramInt);
    if (a.size() <= paramInt)
      for (int j = a.size(); j <= paramInt; j++)
        a.add(new HashMap());
    if (a.get(paramInt) == null)
      a.set(paramInt, new HashMap());
    if (b.size() <= paramInt)
      for (int i = b.size(); i <= paramInt; i++)
        b.add(new HashMap());
    if (b.get(paramInt) == null)
      b.set(paramInt, new HashMap());
  }

  public static void setByteArray(int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    if (paramInt < 0)
      try
      {
        throw new IllegalArgumentException();
      }
      finally
      {
      }
    if (paramString == null)
      throw new NullPointerException();
    if (a.size() <= paramInt)
      throw new IllegalStateException();
    HashMap localHashMap = (HashMap)a.get(paramInt);
    if (localHashMap != null)
      localHashMap.put(paramString, paramArrayOfByte);
  }

  public static void setObject(int paramInt, String paramString, Object paramObject)
  {
    if (paramInt < 0)
      try
      {
        throw new IllegalArgumentException();
      }
      finally
      {
      }
    if (paramString == null)
      throw new NullPointerException();
    if (b.size() <= paramInt)
      throw new IllegalStateException();
    HashMap localHashMap = (HashMap)b.get(paramInt);
    if (localHashMap != null)
      localHashMap.put(paramString, paramObject);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.vps.ObjectStorage
 * JD-Core Version:    0.6.2
 */