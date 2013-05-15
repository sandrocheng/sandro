package com.google.analytics.tracking.android;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class aw
{
  static String a(av paramav, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramav.a());
    if (paramav.c() > 0L)
    {
      long l = paramLong - paramav.c();
      if (l >= 0L)
        localStringBuilder.append("&").append("qt").append("=").append(l);
    }
    localStringBuilder.append("&").append("z").append("=").append(paramav.b());
    return localStringBuilder.toString();
  }

  public static String a(String paramString)
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

  public static Map a(az paramaz, Map paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      bb localbb = paramaz.a((String)localEntry.getKey());
      if (localbb != null)
      {
        String str1 = localbb.a((String)localEntry.getKey());
        if (str1 != null)
        {
          String str2 = (String)localEntry.getValue();
          if (localbb.b() != null)
            str2 = localbb.b().a(str2);
          if ((str2 != null) && (!str2.equals(localbb.a())))
            localHashMap.put(str1, str2);
        }
      }
    }
    return localHashMap;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.aw
 * JD-Core Version:    0.6.2
 */