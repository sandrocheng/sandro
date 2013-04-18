package com.keniu.security.f;

import java.util.Collection;
import java.util.Iterator;

public final class z
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final String d = "switch";
  public static final String e = "info";
  public static final String f = "global";
  public static final String g = "description";
  public static final String h = "version";
  public static final String i = "size";
  public static final String j = "path";
  public static final String k = "md5";
  public static final String l = "md5_target";
  public static final String m = "delta";
  public static final String n = "compressed";
  public static final String o = "description";
  public static final String p = "data_switch";
  public static final int q = 0;
  public static final int r = 1;
  public static final int s = 2;
  public static final int t = 3;
  public static final int u = 4;
  public static final int v = 5;
  public static final int w = 6;
  public static final int x = 7;

  public static int a(h paramh, String paramString)
  {
    String str = a(paramh, "switch", paramString);
    int i1;
    if (!k.a(str))
      if ("force".compareToIgnoreCase(str) == 0)
        i1 = 1;
    while (true)
    {
      return i1;
      if ("allow".compareTo(str) == 0)
        i1 = 2;
      else if ("allow_apk".compareTo(str) == 0)
        i1 = 3;
      else if ("allow_data".compareTo(str) == 0)
        i1 = 4;
      else if ("deny".compareTo(str) == 0)
        i1 = 5;
      else if ("deny_apk".compareTo(str) == 0)
        i1 = 6;
      else if ("deny_data".compareTo(str) == 0)
        i1 = 7;
      else
        i1 = 0;
    }
  }

  private static int a(String paramString)
  {
    int i1;
    if (k.a(paramString))
      i1 = 0;
    while (true)
    {
      return i1;
      if ("force".compareToIgnoreCase(paramString) == 0)
        i1 = 1;
      else if ("allow".compareTo(paramString) == 0)
        i1 = 2;
      else if ("allow_apk".compareTo(paramString) == 0)
        i1 = 3;
      else if ("allow_data".compareTo(paramString) == 0)
        i1 = 4;
      else if ("deny".compareTo(paramString) == 0)
        i1 = 5;
      else if ("deny_apk".compareTo(paramString) == 0)
        i1 = 6;
      else if ("deny_data".compareTo(paramString) == 0)
        i1 = 7;
      else
        i1 = 0;
    }
  }

  public static String a(h paramh, String paramString1, String paramString2)
  {
    Collection localCollection = paramh.a(paramString1);
    String str1;
    if (localCollection == null)
      str1 = null;
    while (true)
    {
      return str1;
      Iterator localIterator = localCollection.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          if (k.a(str2, paramString2))
          {
            str1 = paramh.a(paramString1, str2);
            break;
          }
        }
      str1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.z
 * JD-Core Version:    0.6.2
 */