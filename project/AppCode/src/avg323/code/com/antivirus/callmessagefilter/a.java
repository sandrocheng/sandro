package com.antivirus.callmessagefilter;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class a
{
  public static Map a(Map paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, new com.antivirus.ui.callmessagefilter.contacts.a((com.antivirus.core.b.b.a)paramMap.get(str)));
    }
    return localHashMap;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.callmessagefilter.a
 * JD-Core Version:    0.6.2
 */