package com.tencent.tmsecure.module.aresengine;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class FilterConfig
{
  public static final int STATE_ACCEPTABLE = 0;
  public static final int STATE_DISABLE = 3;
  public static final int STATE_EMTPY = 4;
  public static final int STATE_ENABLE = 2;
  public static final int STATE_REJECTABLE = 1;
  private HashMap<Integer, Integer> a = new HashMap();

  public FilterConfig()
  {
    this(null);
  }

  public FilterConfig(String paramString)
  {
    String[] arrayOfString;
    if (paramString != null)
      arrayOfString = paramString.trim().split(",");
    for (int i = 0; ; i += 2)
    {
      if (i >= arrayOfString.length)
        return;
      set(Integer.parseInt(arrayOfString[i]), Integer.parseInt(arrayOfString[(i + 1)]));
    }
  }

  public final String dump()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = this.a.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localStringBuffer.length() > 0)
          localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        return localStringBuffer.toString();
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuffer.append(new StringBuilder().append(localEntry.getKey()).append(",").append(localEntry.getValue()).toString() + ",");
    }
  }

  public final int get(int paramInt)
  {
    Integer localInteger = (Integer)this.a.get(Integer.valueOf(paramInt));
    if (localInteger != null);
    for (int i = localInteger.intValue(); ; i = 4)
      return i;
  }

  public final void reset()
  {
    this.a.clear();
  }

  public final void set(int paramInt1, int paramInt2)
  {
    if ((paramInt2 == 0) || (paramInt2 == 1) || (paramInt2 == 2) || (paramInt2 == 3) || (paramInt2 == 4))
    {
      this.a.put(Integer.valueOf(paramInt1), Integer.valueOf(paramInt2));
      return;
    }
    throw new IllegalStateException("the state " + paramInt2 + " is not define.");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.FilterConfig
 * JD-Core Version:    0.6.2
 */