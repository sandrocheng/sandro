package com.google.a.a.a;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ao
{
  static String a(an paraman, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paraman.a());
    if (paraman.c() > 0L)
    {
      long l = paramLong - paraman.c();
      if (l >= 0L)
        localStringBuilder.append("&").append("qt").append("=").append(l);
    }
    localStringBuilder.append("&").append("z").append("=").append(paraman.b());
    return localStringBuilder.toString();
  }

  static String a(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError("URL encoding failed for: " + paramString);
  }

  static Map a(ar paramar, Map paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      at localat = paramar.a((String)localEntry.getKey());
      if (localat != null)
      {
        String str1 = localat.a((String)localEntry.getKey());
        if (str1 != null)
        {
          String str2 = (String)localEntry.getValue();
          if (localat.b() != null)
            str2 = localat.b().a(str2);
          if ((str2 != null) && (!str2.equals(localat.a())))
            localHashMap.put(str1, str2);
        }
      }
    }
    return localHashMap;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.ao
 * JD-Core Version:    0.6.2
 */