package com.keniu.security.mydb.opt;

import android.content.Context;
import android.content.res.Resources;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private static b a = b.a();

  private static String a(int paramInt)
  {
    List localList = a.d();
    int i = localList.size();
    int j = 0;
    if (j < i)
      if ((((d)localList.get(j)).a != paramInt) || (((d)localList.get(j)).b != 0));
    for (String str = a.a(j); ; str = null)
    {
      return str;
      j++;
      break;
    }
  }

  public static String a(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = g.h;
    int i;
    if (paramInt1 == 0)
      i = 129;
    while (true)
    {
      if (paramInt2 > 10000);
      try
      {
        int j = paramInt2 % 10000;
        b localb = a;
        String str = localb.c(b.a(i, j));
        return str;
        i = paramInt1;
        continue;
        j = paramInt2;
      }
      finally
      {
      }
    }
  }

  private static String a(long paramLong)
  {
    b localb = a;
    return localb.c(b.a(paramLong));
  }

  private static List a()
  {
    return a.b();
  }

  public static List a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = a.a(paramString);
    if (i == -1)
      localArrayList = null;
    while (true)
    {
      return localArrayList;
      List localList = a.d();
      int j = localList.size();
      for (int k = 0; k < j; k++)
        if ((((d)localList.get(k)).c == i) && (((d)localList.get(k)).b == 0))
        {
          String str = a.a(k + 1);
          if (!"unkown_str".equals(str))
            localArrayList.add(str);
        }
    }
  }

  public static boolean a(String paramString1, String paramString2)
  {
    synchronized (g.h)
    {
      int i = d(paramString1);
      int j = d(paramString2);
      if ((i == -1) || (j == -1));
      for (boolean bool1 = false; ; bool1 = bool2)
      {
        return bool1;
        if (i != j)
          break;
        bool2 = true;
      }
      boolean bool2 = false;
    }
  }

  public static String[] a(Context paramContext)
  {
    return paramContext.getResources().getStringArray(2131165233);
  }

  private static int b(long paramLong)
  {
    b localb = a;
    return localb.d(b.a(paramLong));
  }

  private static String b(int paramInt)
  {
    List localList = a.d();
    int i = localList.size();
    int j = 0;
    if (j < i)
      if ((((d)localList.get(j)).a != paramInt) || (((d)localList.get(j)).b != 1));
    for (String str = a.a(j); ; str = null)
    {
      return str;
      j++;
      break;
    }
  }

  private static List b()
  {
    return a.c();
  }

  private static List b(Context paramContext)
  {
    return Arrays.asList(a(paramContext));
  }

  public static String[] b(String paramString)
  {
    List localList = a(paramString);
    if ((localList == null) || (localList.size() == 0));
    String[] arrayOfString;
    for (Object localObject = null; ; localObject = arrayOfString)
    {
      return localObject;
      arrayOfString = new String[localList.size()];
      localList.toArray(arrayOfString);
    }
  }

  public static String c(String paramString)
  {
    synchronized (g.h)
    {
      String str = a.c(a.c(paramString));
      return str;
    }
  }

  private static int d(String paramString)
  {
    List localList = a.b();
    int i;
    if (localList == null)
      i = -1;
    while (true)
    {
      return i;
      Iterator localIterator = localList.iterator();
      label26: String str2;
      for (String str1 = paramString; localIterator.hasNext(); str1 = str1.substring(str2.length()))
      {
        str2 = (String)localIterator.next();
        if ((!str1.startsWith(str2)) || (str1.length() <= 2))
          break label26;
      }
      d locald = a.b(1 + a.b(str1));
      if (locald == null)
        i = -1;
      else
        i = locald.a;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.mydb.opt.a
 * JD-Core Version:    0.6.2
 */