package com.ijinshan.kinghelper.firewall.core;

import android.content.Context;
import android.content.res.Resources;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class e
{
  public static HashMap a = null;
  public static List b = null;
  public static List c = null;
  public static HashMap d = null;

  public static f a(String paramString1, String paramString2)
  {
    f localf1 = new f();
    if (paramString2.contains(paramString1))
      localf1.a = true;
    for (f localf2 = localf1; ; localf2 = localf1)
    {
      return localf2;
      if (paramString2.length() > 20)
        break;
      localf1.a = true;
      localf1.i = true;
    }
    int i = 0;
    label54: int j = paramString2.length();
    if (i < j)
    {
      int i16 = paramString2.charAt(i);
      if ((i16 >= 48) && (i16 <= 57));
    }
    for (int k = 0; ; k = 1)
    {
      if (k == 0)
        break label123;
      localf1.j = paramString2;
      localf1.f = true;
      localf2 = localf1;
      break;
      i++;
      break label54;
    }
    label123: int m = 0;
    label126: int n = paramString2.length();
    if (m < n)
    {
      int i15 = paramString2.charAt(m);
      if ((i15 < 19968) || (i15 > 40895));
    }
    for (int i1 = 0; ; i1 = 1)
    {
      if (i1 == 0)
        break label203;
      localf1.j = paramString2;
      localf1.a = true;
      localf1.g = true;
      localf2 = localf1;
      break;
      m++;
      break label126;
    }
    label203: StringBuilder localStringBuilder = new StringBuilder();
    int i2 = paramString2.length();
    int i3 = 0;
    char c1;
    label453: label505: label511: char c2;
    label544: label577: int i6;
    if (i3 < i2)
    {
      c1 = paramString2.charAt(i3);
      if ((c1 >= '0') && (c1 <= '2'))
      {
        if ((c1 == '2') && (i3 + 10 <= i2))
        {
          int i7 = paramString2.charAt(i3 + 1);
          char c4 = paramString2.charAt(i3 + 2);
          char c5 = paramString2.charAt(i3 + 3);
          int i8 = paramString2.charAt(i3 + 5);
          char c6 = paramString2.charAt(i3 + 6);
          int i9 = paramString2.charAt(i3 + 8);
          char c7 = paramString2.charAt(i3 + 9);
          int i10 = paramString2.charAt(i3 + 4);
          int i11 = paramString2.charAt(i3 + 7);
          int i12;
          int i13;
          int i14;
          if (i10 != 45)
          {
            i12 = 0;
            if (i10 != 47);
          }
          else if (i11 != 45)
          {
            i12 = 0;
            if (i11 != 47);
          }
          else
          {
            i12 = 0;
            if (i7 == 48)
            {
              boolean bool2 = a(c4);
              i12 = 0;
              if (bool2)
              {
                boolean bool3 = a(c5);
                i12 = 0;
                if (bool3)
                {
                  if ((i8 != 48) || (!a(c6)))
                    break label511;
                  i13 = 1;
                  i12 = 0;
                  if (i13 != 0)
                  {
                    if ((i9 < 48) || (i9 > 50) || (!a(c7)))
                      break label544;
                    i14 = 1;
                  }
                }
              }
            }
          }
          while (true)
          {
            i12 = 0;
            if (i14 != 0)
              i12 = 1;
            if (i12 == 0)
              break label577;
            i3 += 9;
            i3++;
            break;
            if ((i8 == 49) && (c6 >= '0') && (c6 <= '2'))
            {
              i13 = 1;
              break label453;
            }
            i13 = 0;
            break label453;
            if ((i9 == 51) && (c7 >= '0') && (c7 <= '1'))
              i14 = 1;
            else
              i14 = 0;
          }
        }
        if (i3 + 5 <= i2)
        {
          c2 = paramString2.charAt(i3 + 1);
          int i4 = paramString2.charAt(i3 + 2);
          int i5 = paramString2.charAt(i3 + 3);
          char c3 = paramString2.charAt(i3 + 4);
          if ((i4 != 58) || (i5 < 48) || (i5 > 53) || (!a(c3)))
            break label840;
          if ((c1 == '2') && (c2 >= '0') && (c2 <= '3'))
            i6 = 1;
        }
      }
    }
    while (true)
    {
      if (i6 != 0)
      {
        i3 += 4;
        break label505;
        if (!a(c2))
          break label840;
        i6 = 1;
        continue;
      }
      localStringBuilder.append(c1);
      break label505;
      localf1.j = localStringBuilder.toString();
      localf1.j = g(localf1.j);
      g localg = a(localf1.j);
      if (localg.b)
      {
        localf1.j = paramString2;
        localf1.h = true;
        localf2 = localf1;
        break;
      }
      localf1.c = localg.a;
      if (localf1.c)
      {
        localf1.b = true;
        localf2 = localf1;
        break;
      }
      if (b(localf1.j) >= 7);
      for (boolean bool1 = true; ; bool1 = false)
      {
        localf1.d = bool1;
        if (localf1.d)
          localf1.b = true;
        localf2 = localf1;
        break;
      }
      label840: i6 = 0;
    }
  }

  public static g a(String paramString)
  {
    g localg = new g();
    String str = paramString.toLowerCase();
    Iterator localIterator = c.iterator();
    int i;
    int k;
    while (localIterator.hasNext())
    {
      i = str.indexOf((String)localIterator.next());
      if (i != -1)
      {
        localg.a = true;
        if (i > 1)
          break label83;
        k = 0;
      }
    }
    while (true)
    {
      if (k != 0)
      {
        localg.a = false;
        localg.b = true;
      }
      return localg;
      label83: for (int j = i - 1; ; j--)
      {
        if (j < 0)
          break label156;
        int m = paramString.charAt(j);
        if (((m < 97) || (m > 122)) && (m != 46) && ((m < 48) || (m > 57)))
        {
          if (m != 64)
            break label156;
          k = 1;
          break;
        }
      }
      label156: k = 0;
    }
  }

  public static void a(Context paramContext)
  {
    int i = 1;
    while (true)
    {
      try
      {
        if (a == null)
        {
          a = new HashMap();
          String[] arrayOfString5 = paramContext.getResources().getStringArray(2131165237);
          if (arrayOfString5.length > i)
          {
            String str1 = arrayOfString5[0];
            if (i < arrayOfString5.length)
            {
              String str2 = arrayOfString5[i];
              if (str2.length() != str1.length())
                break label330;
              int n = 0;
              if (n >= str2.length())
                break label330;
              String str3 = str2.substring(n, n + 1);
              String str4 = str1.substring(n, n + 1);
              a.put(str3, str4);
              n++;
              continue;
            }
          }
        }
        if (b == null)
        {
          b = new ArrayList();
          String[] arrayOfString3 = paramContext.getResources().getStringArray(2131165235);
          int m = 0;
          if (m < arrayOfString3.length)
          {
            String[] arrayOfString4 = arrayOfString3[m].split("/");
            b.add(arrayOfString4);
            m++;
            continue;
          }
        }
        if (c == null)
        {
          c = new ArrayList();
          String[] arrayOfString2 = paramContext.getResources().getStringArray(2131165236);
          int k = 0;
          if (k < arrayOfString2.length)
          {
            c.add(arrayOfString2[k]);
            k++;
            continue;
          }
        }
        if (d == null)
        {
          d = new HashMap();
          String[] arrayOfString1 = paramContext.getResources().getStringArray(2131165238);
          d.put(" ", " ");
          int j = 0;
          if (j < arrayOfString1.length)
          {
            d.put(arrayOfString1[j], arrayOfString1[j]);
            j++;
            continue;
          }
        }
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
      label330: i++;
    }
  }

  private static boolean a(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9'));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean a(char paramChar1, char paramChar2)
  {
    boolean bool;
    if ((paramChar1 >= '0') && (paramChar1 <= '2') && (a(paramChar2)))
      bool = true;
    while (true)
    {
      return bool;
      if ((paramChar1 == '3') && (paramChar2 >= '0') && (paramChar2 <= '1'))
        bool = true;
      else
        bool = false;
    }
  }

  private static boolean a(String paramString, int paramInt)
  {
    boolean bool;
    if (paramInt <= 1)
      bool = false;
    while (true)
    {
      return bool;
      for (int i = paramInt - 1; ; i--)
      {
        if (i < 0)
          break label77;
        int j = paramString.charAt(i);
        if (((j < 97) || (j > 122)) && (j != 46) && ((j < 48) || (j > 57)))
        {
          if (j != 64)
            break label77;
          bool = true;
          break;
        }
      }
      label77: bool = false;
    }
  }

  public static int b(String paramString)
  {
    int i = 0;
    int j = 0;
    int k = 0;
    if (i < paramString.length())
    {
      int m = paramString.charAt(i);
      if ((m >= 48) && (m <= 57))
      {
        k++;
        if (k > j)
          j = k;
      }
      while (true)
      {
        i++;
        break;
        if ((m >= 19968) && (m <= 40895))
          k = 0;
        else if ((m >= 97) && (m <= 122))
          k = 0;
        else if ((m >= 65) && (m <= 90))
          k = 0;
      }
    }
    return j;
  }

  private static boolean b(char paramChar1, char paramChar2)
  {
    boolean bool;
    if ((paramChar1 == '0') && (a(paramChar2)))
      bool = true;
    while (true)
    {
      return bool;
      if ((paramChar1 == '1') && (paramChar2 >= '0') && (paramChar2 <= '2'))
        bool = true;
      else
        bool = false;
    }
  }

  private static boolean c(String paramString)
  {
    int i = 0;
    if (i < paramString.length())
    {
      int j = paramString.charAt(i);
      if ((j >= 48) && (j <= 57));
    }
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      i++;
      break;
    }
  }

  private static boolean d(String paramString)
  {
    int i = 0;
    if (i < paramString.length())
    {
      int j = paramString.charAt(i);
      if ((j < 19968) || (j > 40895));
    }
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      i++;
      break;
    }
  }

  private static boolean e(String paramString)
  {
    Iterator localIterator = b.iterator();
    int i;
    label31: int j;
    if (localIterator.hasNext())
    {
      String[] arrayOfString = (String[])localIterator.next();
      i = 0;
      if (i < arrayOfString.length)
        if (!paramString.contains(arrayOfString[i]))
        {
          j = 0;
          label52: if (j == 0)
            break label71;
        }
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i++;
      break label31;
      j = 1;
      break label52;
      label71: break;
    }
  }

  private static int f(String paramString)
  {
    int i = 0;
    int j = 0;
    while (i < paramString.length())
    {
      int k = paramString.charAt(i);
      if ((k >= 48) && (k <= 57))
        j++;
      i++;
    }
    return j;
  }

  private static String g(String paramString)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder(paramString);
    int i = 0;
    if (i < localStringBuilder2.length())
    {
      String str = localStringBuilder2.substring(i, i + 1);
      if (!d.containsKey(str))
      {
        if (!a.containsKey(str))
          break label81;
        localStringBuilder1.append((String)a.get(str));
      }
      while (true)
      {
        i++;
        break;
        label81: localStringBuilder1.append(str);
      }
    }
    return localStringBuilder1.toString();
  }

  private static String h(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramString.length();
    int j = 0;
    char c1;
    label233: char c2;
    label291: label324: label357: int n;
    if (j < i)
    {
      c1 = paramString.charAt(j);
      if ((c1 >= '0') && (c1 <= '2'))
      {
        if ((c1 == '2') && (j + 10 <= i))
        {
          int i1 = paramString.charAt(j + 1);
          char c4 = paramString.charAt(j + 2);
          char c5 = paramString.charAt(j + 3);
          int i2 = paramString.charAt(j + 5);
          char c6 = paramString.charAt(j + 6);
          int i3 = paramString.charAt(j + 8);
          char c7 = paramString.charAt(j + 9);
          int i4 = paramString.charAt(j + 4);
          int i5 = paramString.charAt(j + 7);
          int i6;
          int i7;
          int i8;
          if (i4 != 45)
          {
            i6 = 0;
            if (i4 != 47);
          }
          else if (i5 != 45)
          {
            i6 = 0;
            if (i5 != 47);
          }
          else
          {
            i6 = 0;
            if (i1 == 48)
            {
              boolean bool1 = a(c4);
              i6 = 0;
              if (bool1)
              {
                boolean bool2 = a(c5);
                i6 = 0;
                if (bool2)
                {
                  if ((i2 != 48) || (!a(c6)))
                    break label291;
                  i7 = 1;
                  i6 = 0;
                  if (i7 != 0)
                  {
                    if ((i3 < 48) || (i3 > 50) || (!a(c7)))
                      break label324;
                    i8 = 1;
                  }
                }
              }
            }
          }
          while (true)
          {
            i6 = 0;
            if (i8 != 0)
              i6 = 1;
            if (i6 == 0)
              break label357;
            j += 9;
            j++;
            break;
            if ((i2 == 49) && (c6 >= '0') && (c6 <= '2'))
            {
              i7 = 1;
              break label233;
            }
            i7 = 0;
            break label233;
            if ((i3 == 51) && (c7 >= '0') && (c7 <= '1'))
              i8 = 1;
            else
              i8 = 0;
          }
        }
        if (j + 5 <= i)
        {
          c2 = paramString.charAt(j + 1);
          int k = paramString.charAt(j + 2);
          int m = paramString.charAt(j + 3);
          char c3 = paramString.charAt(j + 4);
          if ((k != 58) || (m < 48) || (m > 53) || (!a(c3)))
            break label493;
          if ((c1 == '2') && (c2 >= '0') && (c2 <= '3'))
            n = 1;
        }
      }
    }
    while (true)
    {
      if (n != 0)
      {
        j += 4;
        break;
        if (!a(c2))
          break label493;
        n = 1;
        continue;
      }
      localStringBuilder.append(c1);
      break;
      return localStringBuilder.toString();
      label493: n = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.e
 * JD-Core Version:    0.6.2
 */