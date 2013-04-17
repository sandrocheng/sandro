package puw;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class f
{
  private HashMap<String, Object> a = new HashMap();
  protected HashMap<String, HashMap<String, byte[]>> f = new HashMap();
  protected HashMap<String, Object> g = new HashMap();
  protected String h = "GBK";
  JceInputStream i = new JceInputStream();

  private void checkObjectType(ArrayList<String> paramArrayList, Object paramObject)
  {
    if (paramObject.getClass().isArray())
    {
      if (!paramObject.getClass().getComponentType().toString().equals("byte"))
        throw new IllegalArgumentException("only byte[] is supported");
      if (Array.getLength(paramObject) > 0)
      {
        paramArrayList.add("java.util.List");
        checkObjectType(paramArrayList, Array.get(paramObject, 0));
      }
    }
    while (true)
    {
      return;
      paramArrayList.add("Array");
      paramArrayList.add("?");
      continue;
      if ((paramObject instanceof Array))
        throw new IllegalArgumentException("can not support Array, please use List");
      if ((paramObject instanceof List))
      {
        paramArrayList.add("java.util.List");
        List localList = (List)paramObject;
        if (localList.size() > 0)
          checkObjectType(paramArrayList, localList.get(0));
        else
          paramArrayList.add("?");
      }
      else if ((paramObject instanceof Map))
      {
        paramArrayList.add("java.util.Map");
        Map localMap = (Map)paramObject;
        if (localMap.size() > 0)
        {
          Object localObject1 = localMap.keySet().iterator().next();
          Object localObject2 = localMap.get(localObject1);
          paramArrayList.add(localObject1.getClass().getName());
          checkObjectType(paramArrayList, localObject2);
        }
        else
        {
          paramArrayList.add("?");
          paramArrayList.add("?");
        }
      }
      else
      {
        paramArrayList.add(paramObject.getClass().getName());
      }
    }
  }

  private Object getCacheProxy(String paramString)
  {
    Object localObject;
    if (this.g.containsKey(paramString))
      localObject = this.g.get(paramString);
    while (true)
    {
      return localObject;
      localObject = c.b(paramString);
      this.g.put(paramString, localObject);
    }
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
    return this.f.containsKey(paramString);
  }

  public void decode(byte[] paramArrayOfByte)
  {
    this.i.warp(paramArrayOfByte);
    this.i.setServerEncoding(this.h);
    HashMap localHashMap1 = new HashMap(1);
    HashMap localHashMap2 = new HashMap(1);
    localHashMap2.put("", new byte[0]);
    localHashMap1.put("", localHashMap2);
    this.f = this.i.readMap(localHashMap1, 0, false);
  }

  public byte[] encode()
  {
    JceOutputStream localJceOutputStream = new JceOutputStream(0);
    localJceOutputStream.setServerEncoding(this.h);
    localJceOutputStream.write(this.f, 0);
    return JceUtil.getJceBufArray(localJceOutputStream.getByteBuffer());
  }

  public <T> T get(String paramString)
    throws g
  {
    if (!this.f.containsKey(paramString));
    for (Object localObject2 = null; ; localObject2 = this.a.get(paramString))
    {
      return localObject2;
      if (!this.a.containsKey(paramString))
        break;
    }
    HashMap localHashMap = (HashMap)this.f.get(paramString);
    byte[] arrayOfByte1 = new byte[0];
    Iterator localIterator = localHashMap.entrySet().iterator();
    String str;
    byte[] arrayOfByte2;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      str = (String)localEntry.getKey();
      arrayOfByte2 = (byte[])localEntry.getValue();
    }
    while (true)
    {
      try
      {
        Object localObject1 = getCacheProxy(str);
        this.i.warp(arrayOfByte2);
        this.i.setServerEncoding(this.h);
        localObject2 = this.i.read(localObject1, 0, true);
        saveDataCache(paramString, localObject2);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        throw new g(localException);
      }
      arrayOfByte2 = arrayOfByte1;
      str = null;
    }
  }

  public <T> T get(String paramString, Object paramObject)
  {
    if (!this.f.containsKey(paramString));
    while (true)
    {
      return paramObject;
      if (!this.a.containsKey(paramString))
        break;
      paramObject = this.a.get(paramString);
    }
    HashMap localHashMap = (HashMap)this.f.get(paramString);
    byte[] arrayOfByte1 = new byte[0];
    Iterator localIterator = localHashMap.entrySet().iterator();
    String str;
    byte[] arrayOfByte2;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      str = (String)localEntry.getKey();
      arrayOfByte2 = (byte[])localEntry.getValue();
    }
    while (true)
    {
      try
      {
        Object localObject1 = getCacheProxy(str);
        this.i.warp(arrayOfByte2);
        this.i.setServerEncoding(this.h);
        Object localObject2 = this.i.read(localObject1, 0, true);
        saveDataCache(paramString, localObject2);
        paramObject = localObject2;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        saveDataCache(paramString, paramObject);
      }
      break;
      arrayOfByte2 = arrayOfByte1;
      str = "";
    }
  }

  public String getEncodeName()
  {
    return this.h;
  }

  public <T> T getJceStruct(String paramString)
    throws g
  {
    if (!this.f.containsKey(paramString));
    for (Object localObject2 = null; ; localObject2 = this.a.get(paramString))
    {
      return localObject2;
      if (!this.a.containsKey(paramString))
        break;
    }
    HashMap localHashMap = (HashMap)this.f.get(paramString);
    byte[] arrayOfByte1 = new byte[0];
    Iterator localIterator = localHashMap.entrySet().iterator();
    String str1;
    byte[] arrayOfByte2;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str2 = (String)localEntry.getKey();
      byte[] arrayOfByte3 = (byte[])localEntry.getValue();
      str1 = str2;
      arrayOfByte2 = arrayOfByte3;
    }
    while (true)
    {
      try
      {
        Object localObject1 = getCacheProxy(str1);
        this.i.warp(arrayOfByte2);
        this.i.setServerEncoding(this.h);
        localObject2 = this.i.directRead((JceStruct)localObject1, 0, true);
        saveDataCache(paramString, localObject2);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        throw new g(localException);
      }
      arrayOfByte2 = arrayOfByte1;
      str1 = null;
    }
  }

  public Set<String> getKeySet()
  {
    return Collections.unmodifiableSet(this.f.keySet());
  }

  public boolean isEmpty()
  {
    return this.f.isEmpty();
  }

  public <T> void put(String paramString, T paramT)
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
    HashMap localHashMap = new HashMap(1);
    ArrayList localArrayList = new ArrayList(1);
    checkObjectType(localArrayList, paramT);
    localHashMap.put(c.a(localArrayList), arrayOfByte);
    this.a.remove(paramString);
    this.f.put(paramString, localHashMap);
  }

  public <T> T remove(String paramString)
    throws g
  {
    Object localObject3;
    if (!this.f.containsKey(paramString))
    {
      localObject3 = null;
      return localObject3;
    }
    HashMap localHashMap = (HashMap)this.f.remove(paramString);
    byte[] arrayOfByte1 = new byte[0];
    Iterator localIterator = localHashMap.entrySet().iterator();
    String str;
    byte[] arrayOfByte2;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      str = (String)localEntry.getKey();
      arrayOfByte2 = (byte[])localEntry.getValue();
    }
    while (true)
    {
      try
      {
        Object localObject1 = c.b(str);
        this.i.warp(arrayOfByte2);
        this.i.setServerEncoding(this.h);
        Object localObject2 = this.i.read(localObject1, 0, true);
        localObject3 = localObject2;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        throw new g(localException);
      }
      arrayOfByte2 = arrayOfByte1;
      str = "";
    }
  }

  public void setEncodeName(String paramString)
  {
    this.h = paramString;
  }

  public int size()
  {
    return this.f.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     puw.f
 * JD-Core Version:    0.6.2
 */