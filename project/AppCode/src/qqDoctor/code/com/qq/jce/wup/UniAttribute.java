package com.qq.jce.wup;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class UniAttribute extends OldUniAttribute
{
  JceInputStream _is = new JceInputStream();
  protected HashMap<String, byte[]> _newData = null;
  private HashMap<String, Object> cachedData = new HashMap();

  private Object decodeData(byte[] paramArrayOfByte, Object paramObject)
  {
    this._is.warp(paramArrayOfByte);
    this._is.setServerEncoding(this.encodeName);
    return this._is.read(paramObject, 0, true);
  }

  private void saveDataCache(String paramString, Object paramObject)
  {
    this.cachedData.put(paramString, paramObject);
  }

  public void clearCacheData()
  {
    this.cachedData.clear();
  }

  public boolean containsKey(String paramString)
  {
    if (this._newData != null);
    for (boolean bool = this._newData.containsKey(paramString); ; bool = this._data.containsKey(paramString))
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
        this._is.warp(paramArrayOfByte);
        this._is.setServerEncoding(this.encodeName);
        HashMap localHashMap = new HashMap(1);
        localHashMap.put("", new byte[0]);
        this._newData = this._is.readMap(localHashMap, 0, false);
      }
    }
  }

  public void decodeVersion2(byte[] paramArrayOfByte)
  {
    super.decode(paramArrayOfByte);
  }

  public void decodeVersion3(byte[] paramArrayOfByte)
  {
    this._is.warp(paramArrayOfByte);
    this._is.setServerEncoding(this.encodeName);
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("", new byte[0]);
    this._newData = this._is.readMap(localHashMap, 0, false);
  }

  public byte[] encode()
  {
    JceOutputStream localJceOutputStream;
    if (this._newData != null)
    {
      localJceOutputStream = new JceOutputStream(0);
      localJceOutputStream.setServerEncoding(this.encodeName);
      localJceOutputStream.write(this._newData, 0);
    }
    for (byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream.getByteBuffer()); ; arrayOfByte = super.encode())
      return arrayOfByte;
  }

  public <T> T get(String paramString)
    throws ObjectCreateException
  {
    if (this._newData != null)
      throw new RuntimeException("data is encoded by new version, please use getByClass(String name, T proxy)");
    return super.get(paramString);
  }

  public <T> T get(String paramString, Object paramObject)
  {
    if (this._newData != null)
      throw new RuntimeException("data is encoded by new version, please use get(String name, T proxy, Object defaultValue)");
    return super.get(paramString, paramObject);
  }

  public <T> T get(String paramString, T paramT, Object paramObject)
  {
    if (!this._newData.containsKey(paramString));
    while (true)
    {
      return paramObject;
      paramObject = getByClass(paramString, paramT);
    }
  }

  public <T> T getByClass(String paramString, T paramT)
    throws ObjectCreateException
  {
    Object localObject;
    if (this._newData != null)
    {
      boolean bool2 = this._newData.containsKey(paramString);
      localObject = null;
      if (bool2);
    }
    while (true)
    {
      return localObject;
      if (this.cachedData.containsKey(paramString))
      {
        localObject = this.cachedData.get(paramString);
        continue;
      }
      byte[] arrayOfByte2 = (byte[])this._newData.get(paramString);
      try
      {
        localObject = decodeData(arrayOfByte2, paramT);
        if (localObject == null)
          continue;
        saveDataCache(paramString, localObject);
      }
      catch (Exception localException2)
      {
        throw new ObjectCreateException(localException2);
      }
      boolean bool1 = this._data.containsKey(paramString);
      localObject = null;
      if (!bool1)
        continue;
      if (this.cachedData.containsKey(paramString))
      {
        localObject = this.cachedData.get(paramString);
        continue;
      }
      HashMap localHashMap = (HashMap)this._data.get(paramString);
      byte[] arrayOfByte1 = new byte[0];
      Iterator localIterator = localHashMap.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        ((String)localEntry.getKey());
        arrayOfByte1 = (byte[])localEntry.getValue();
      }
      try
      {
        this._is.warp(arrayOfByte1);
        this._is.setServerEncoding(this.encodeName);
        localObject = this._is.read(paramT, 0, true);
        saveDataCache(paramString, localObject);
      }
      catch (Exception localException1)
      {
        throw new ObjectCreateException(localException1);
      }
    }
  }

  public <T> T getByClass(String paramString, T paramT1, T paramT2)
    throws ObjectCreateException
  {
    if (this._newData != null)
      if (this._newData.containsKey(paramString));
    while (true)
    {
      return paramT2;
      if (this.cachedData.containsKey(paramString))
      {
        paramT2 = this.cachedData.get(paramString);
        continue;
      }
      byte[] arrayOfByte2 = (byte[])this._newData.get(paramString);
      try
      {
        Object localObject2 = decodeData(arrayOfByte2, paramT1);
        if (localObject2 != null)
          saveDataCache(paramString, localObject2);
        paramT2 = localObject2;
      }
      catch (Exception localException2)
      {
        throw new ObjectCreateException(localException2);
      }
      if (!this._data.containsKey(paramString))
        continue;
      if (this.cachedData.containsKey(paramString))
      {
        paramT2 = this.cachedData.get(paramString);
        continue;
      }
      HashMap localHashMap = (HashMap)this._data.get(paramString);
      byte[] arrayOfByte1 = new byte[0];
      Iterator localIterator = localHashMap.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        ((String)localEntry.getKey());
        arrayOfByte1 = (byte[])localEntry.getValue();
      }
      try
      {
        this._is.warp(arrayOfByte1);
        this._is.setServerEncoding(this.encodeName);
        Object localObject1 = this._is.read(paramT1, 0, true);
        saveDataCache(paramString, localObject1);
        paramT2 = localObject1;
      }
      catch (Exception localException1)
      {
        throw new ObjectCreateException(localException1);
      }
    }
  }

  public <T> T getJceStruct(String paramString)
    throws ObjectCreateException
  {
    if (this._newData != null)
      throw new RuntimeException("data is encoded by new version, please use getJceStruct(String name,T proxy)");
    return super.getJceStruct(paramString);
  }

  public <T> T getJceStruct(String paramString, T paramT)
    throws ObjectCreateException
  {
    Object localObject;
    if (!this._newData.containsKey(paramString))
      localObject = null;
    while (true)
    {
      return localObject;
      if (this.cachedData.containsKey(paramString))
      {
        localObject = this.cachedData.get(paramString);
        continue;
      }
      byte[] arrayOfByte = (byte[])this._newData.get(paramString);
      try
      {
        localObject = decodeData(arrayOfByte, paramT);
        if (localObject == null)
          continue;
        saveDataCache(paramString, localObject);
      }
      catch (Exception localException)
      {
        throw new ObjectCreateException(localException);
      }
    }
  }

  public Set<String> getKeySet()
  {
    if (this._newData != null);
    for (Set localSet = Collections.unmodifiableSet(this._newData.keySet()); ; localSet = Collections.unmodifiableSet(this._data.keySet()))
      return localSet;
  }

  public boolean isEmpty()
  {
    if (this._newData != null);
    for (boolean bool = this._newData.isEmpty(); ; bool = this._data.isEmpty())
      return bool;
  }

  public <T> void put(String paramString, T paramT)
  {
    if (this._newData != null)
    {
      if (paramString == null)
        throw new IllegalArgumentException("put key can not is null");
      if (paramT == null)
        throw new IllegalArgumentException("put value can not is null");
      if ((paramT instanceof Set))
        throw new IllegalArgumentException("can not support Set");
      JceOutputStream localJceOutputStream = new JceOutputStream();
      localJceOutputStream.setServerEncoding(this.encodeName);
      localJceOutputStream.write(paramT, 0);
      byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream.getByteBuffer());
      this._newData.put(paramString, arrayOfByte);
    }
    while (true)
    {
      return;
      super.put(paramString, paramT);
    }
  }

  public <T> T remove(String paramString)
    throws ObjectCreateException
  {
    Object localObject;
    if (this._newData != null)
    {
      boolean bool = this._newData.containsKey(paramString);
      localObject = null;
      if (bool);
    }
    while (true)
    {
      return localObject;
      this._newData.remove(paramString);
      localObject = null;
      continue;
      localObject = super.remove(paramString);
    }
  }

  public <T> T remove(String paramString, T paramT)
    throws ObjectCreateException
  {
    boolean bool = this._newData.containsKey(paramString);
    Object localObject = null;
    if (!bool);
    while (true)
    {
      return localObject;
      if (paramT != null)
      {
        localObject = decodeData((byte[])this._newData.remove(paramString), paramT);
      }
      else
      {
        this._newData.remove(paramString);
        localObject = null;
      }
    }
  }

  public int size()
  {
    if (this._newData != null);
    for (int i = this._newData.size(); ; i = this._data.size())
      return i;
  }

  public void useVersion3()
  {
    this._newData = new HashMap();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.jce.wup.UniAttribute
 * JD-Core Version:    0.6.2
 */