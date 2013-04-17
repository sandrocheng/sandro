package com.qq.jce.wup;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import puw.f;
import puw.g;

public class UniAttribute extends f
{
  private HashMap<String, Object> a = new HashMap();
  protected HashMap<String, byte[]> d = null;
  JceInputStream e = new JceInputStream();

  private Object decodeData(byte[] paramArrayOfByte, Object paramObject)
  {
    this.e.warp(paramArrayOfByte);
    this.e.setServerEncoding(this.h);
    return this.e.read(paramObject, 0, true);
  }

  private void saveDataCache(String paramString, Object paramObject)
  {
    this.a.put(paramString, paramObject);
  }

  public void clearCacheData()
  {
    this.a.clear();
  }

  public boolean containsKey(String paramString)
  {
    if (this.d != null);
    for (boolean bool = this.d.containsKey(paramString); ; bool = this.f.containsKey(paramString))
      return bool;
  }

  public void decode(byte[] paramArrayOfByte)
  {
    try
    {
      super.decode(paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        this.e.warp(paramArrayOfByte);
        this.e.setServerEncoding(this.h);
        HashMap localHashMap = new HashMap(1);
        localHashMap.put("", new byte[0]);
        this.d = this.e.readMap(localHashMap, 0, false);
      }
    }
  }

  public void decodeVersion2(byte[] paramArrayOfByte)
  {
    super.decode(paramArrayOfByte);
  }

  public void decodeVersion3(byte[] paramArrayOfByte)
  {
    this.e.warp(paramArrayOfByte);
    this.e.setServerEncoding(this.h);
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("", new byte[0]);
    this.d = this.e.readMap(localHashMap, 0, false);
  }

  public byte[] encode()
  {
    JceOutputStream localJceOutputStream;
    if (this.d != null)
    {
      localJceOutputStream = new JceOutputStream(0);
      localJceOutputStream.setServerEncoding(this.h);
      localJceOutputStream.write(this.d, 0);
    }
    for (byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream.getByteBuffer()); ; arrayOfByte = super.encode())
      return arrayOfByte;
  }

  public <T> T get(String paramString)
    throws g
  {
    if (this.d != null)
      throw new RuntimeException("data is encoded by new version, please use getByClass(String name, T proxy)");
    return super.get(paramString);
  }

  public <T> T get(String paramString, Object paramObject)
  {
    if (this.d != null)
      throw new RuntimeException("data is encoded by new version, please use get(String name, T proxy, Object defaultValue)");
    return super.get(paramString, paramObject);
  }

  public <T> T get(String paramString, T paramT, Object paramObject)
  {
    if (!this.d.containsKey(paramString));
    while (true)
    {
      return paramObject;
      paramObject = getByClass(paramString, paramT);
    }
  }

  public <T> T getByClass(String paramString, T paramT)
    throws g
  {
    Object localObject;
    if (this.d != null)
    {
      boolean bool2 = this.d.containsKey(paramString);
      localObject = null;
      if (bool2);
    }
    while (true)
    {
      return localObject;
      if (this.a.containsKey(paramString))
      {
        localObject = this.a.get(paramString);
      }
      else
      {
        byte[] arrayOfByte3 = (byte[])this.d.get(paramString);
        try
        {
          localObject = decodeData(arrayOfByte3, paramT);
          if (localObject == null)
            continue;
          saveDataCache(paramString, localObject);
        }
        catch (Exception localException2)
        {
          throw new g(localException2);
        }
        boolean bool1 = this.f.containsKey(paramString);
        localObject = null;
        if (bool1)
        {
          if (!this.a.containsKey(paramString))
            break;
          localObject = this.a.get(paramString);
        }
      }
    }
    HashMap localHashMap = (HashMap)this.f.get(paramString);
    byte[] arrayOfByte1 = new byte[0];
    Iterator localIterator = localHashMap.entrySet().iterator();
    Map.Entry localEntry;
    if (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      ((String)localEntry.getKey());
    }
    for (byte[] arrayOfByte2 = (byte[])localEntry.getValue(); ; arrayOfByte2 = arrayOfByte1)
      try
      {
        this.e.warp(arrayOfByte2);
        this.e.setServerEncoding(this.h);
        localObject = this.e.read(paramT, 0, true);
        saveDataCache(paramString, localObject);
      }
      catch (Exception localException1)
      {
        throw new g(localException1);
      }
  }

  public <T> T getByClass(String paramString, T paramT1, T paramT2)
    throws g
  {
    if (this.d != null)
      if (this.d.containsKey(paramString));
    while (true)
    {
      return paramT2;
      if (this.a.containsKey(paramString))
      {
        paramT2 = this.a.get(paramString);
      }
      else
      {
        byte[] arrayOfByte3 = (byte[])this.d.get(paramString);
        try
        {
          paramT2 = decodeData(arrayOfByte3, paramT1);
          if (paramT2 == null)
            continue;
          saveDataCache(paramString, paramT2);
        }
        catch (Exception localException2)
        {
          throw new g(localException2);
        }
        if (this.f.containsKey(paramString))
        {
          if (!this.a.containsKey(paramString))
            break;
          paramT2 = this.a.get(paramString);
        }
      }
    }
    HashMap localHashMap = (HashMap)this.f.get(paramString);
    byte[] arrayOfByte1 = new byte[0];
    Iterator localIterator = localHashMap.entrySet().iterator();
    Map.Entry localEntry;
    if (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      ((String)localEntry.getKey());
    }
    for (byte[] arrayOfByte2 = (byte[])localEntry.getValue(); ; arrayOfByte2 = arrayOfByte1)
      try
      {
        this.e.warp(arrayOfByte2);
        this.e.setServerEncoding(this.h);
        paramT2 = this.e.read(paramT1, 0, true);
        saveDataCache(paramString, paramT2);
      }
      catch (Exception localException1)
      {
        throw new g(localException1);
      }
  }

  public <T> T getJceStruct(String paramString)
    throws g
  {
    if (this.d != null)
      throw new RuntimeException("data is encoded by new version, please use getJceStruct(String name,T proxy)");
    return super.getJceStruct(paramString);
  }

  public <T> T getJceStruct(String paramString, T paramT)
    throws g
  {
    Object localObject;
    if (!this.d.containsKey(paramString))
      localObject = null;
    while (true)
    {
      return localObject;
      if (this.a.containsKey(paramString))
      {
        localObject = this.a.get(paramString);
        continue;
      }
      byte[] arrayOfByte = (byte[])this.d.get(paramString);
      try
      {
        localObject = decodeData(arrayOfByte, paramT);
        if (localObject == null)
          continue;
        saveDataCache(paramString, localObject);
      }
      catch (Exception localException)
      {
        throw new g(localException);
      }
    }
  }

  public Set<String> getKeySet()
  {
    if (this.d != null);
    for (Set localSet = Collections.unmodifiableSet(this.d.keySet()); ; localSet = Collections.unmodifiableSet(this.f.keySet()))
      return localSet;
  }

  public boolean isEmpty()
  {
    if (this.d != null);
    for (boolean bool = this.d.isEmpty(); ; bool = this.f.isEmpty())
      return bool;
  }

  public <T> void put(String paramString, T paramT)
  {
    if (this.d != null)
    {
      if (paramString == null)
        throw new IllegalArgumentException("put key can not is null");
      if (paramT == null)
        throw new IllegalArgumentException("put value can not is null");
      if ((paramT instanceof Set))
        throw new IllegalArgumentException("can not support Set");
      JceOutputStream localJceOutputStream = new JceOutputStream();
      localJceOutputStream.setServerEncoding(this.h);
      localJceOutputStream.write(paramT, 0);
      byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream.getByteBuffer());
      this.d.put(paramString, arrayOfByte);
    }
    while (true)
    {
      return;
      super.put(paramString, paramT);
    }
  }

  public <T> T remove(String paramString)
    throws g
  {
    Object localObject;
    if (this.d != null)
    {
      boolean bool = this.d.containsKey(paramString);
      localObject = null;
      if (bool);
    }
    while (true)
    {
      return localObject;
      this.d.remove(paramString);
      localObject = null;
      continue;
      localObject = super.remove(paramString);
    }
  }

  public <T> T remove(String paramString, T paramT)
    throws g
  {
    boolean bool = this.d.containsKey(paramString);
    Object localObject = null;
    if (!bool);
    while (true)
    {
      return localObject;
      if (paramT != null)
      {
        localObject = decodeData((byte[])this.d.remove(paramString), paramT);
      }
      else
      {
        this.d.remove(paramString);
        localObject = null;
      }
    }
  }

  public int size()
  {
    if (this.d != null);
    for (int i = this.d.size(); ; i = this.f.size())
      return i;
  }

  public void useVersion3()
  {
    this.d = new HashMap();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.qq.jce.wup.UniAttribute
 * JD-Core Version:    0.6.2
 */