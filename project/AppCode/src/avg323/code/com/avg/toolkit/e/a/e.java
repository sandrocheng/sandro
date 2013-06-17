package com.avg.toolkit.e.a;

import android.text.TextUtils;

public class e
{
  public static char a(o paramo, char paramChar)
  {
    String str = a(paramo, Character.toString(paramChar));
    if (!TextUtils.isEmpty(str))
      paramChar = str.charAt(0);
    return paramChar;
  }

  public static char a(String[] paramArrayOfString)
  {
    String str1 = paramArrayOfString[0];
    if (TextUtils.isEmpty(str1))
      throw new ArrayIndexOutOfBoundsException();
    char c = str1.charAt(0);
    if (str1.length() == 1);
    for (String str2 = ""; ; str2 = str1.substring(1))
    {
      paramArrayOfString[0] = str2;
      return c;
    }
  }

  static o a(String[] paramArrayOfString, boolean paramBoolean)
  {
    o localo = o.a;
    int i = paramArrayOfString[0].length();
    if ((i >= 2) && (localo == o.a))
    {
      if (!paramArrayOfString[0].startsWith("70"))
        break label98;
      localo = o.b;
      if (paramBoolean)
        paramArrayOfString[0] = ac.a(paramArrayOfString[0], 0, 2);
    }
    if ((i >= 1) && (localo == o.a))
    {
      if (paramArrayOfString[0].charAt(0) != '8')
        break label131;
      localo = o.d;
      if (paramBoolean)
        paramArrayOfString[0] = ac.a(paramArrayOfString[0], 0, 1);
    }
    while (true)
    {
      return localo;
      label98: if (!paramArrayOfString[0].startsWith("75"))
        break;
      localo = o.c;
      if (!paramBoolean)
        break;
      paramArrayOfString[0] = ac.a(paramArrayOfString[0], 0, 2);
      break;
      label131: if (paramArrayOfString[0].charAt(0) == '9')
      {
        localo = o.e;
        if (paramBoolean)
          paramArrayOfString[0] = ac.a(paramArrayOfString[0], 0, 1);
      }
      else if ((i == 35) || (i == 31) || (i == 26))
      {
        localo = o.f;
      }
    }
  }

  public static String a(o paramo, String paramString)
  {
    switch (f.a[paramo.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return paramString;
      paramString = c(b(a(paramString.toUpperCase().replace(" ", ""))));
      continue;
      paramString = e(b(d(a(paramString.toUpperCase().replace(" ", "")))));
    }
  }

  static String a(String paramString)
  {
    return paramString.replace("0", "O");
  }

  public static String a(String[] paramArrayOfString, int paramInt)
  {
    try
    {
      String str = paramArrayOfString[0].substring(0, paramInt);
      paramArrayOfString[0] = ac.a(paramArrayOfString[0], 0, paramInt);
      return str;
    }
    catch (Exception localException)
    {
    }
    throw new a(3L);
  }

  public static void a(o paramo, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    int i = paramString1.length();
    if (i < 6)
      throw new ArrayIndexOutOfBoundsException();
    switch (f.a[paramo.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      paramArrayOfString[0] = paramString1;
      paramArrayOfString[1] = paramString2;
      return;
      paramString2 = paramString1.substring(i - 4, i);
      paramString1 = ac.a(paramString1, i - 4, 4);
      continue;
      paramString2 = ac.a(paramString1.substring(i - 5, i), 3, 1);
      paramString1 = ac.a(paramString1, i - 5, 5);
    }
  }

  static String b(String paramString)
  {
    return paramString.replace("5", "S");
  }

  public static String b(String[] paramArrayOfString)
  {
    return a(paramArrayOfString, paramArrayOfString[0].indexOf('-'));
  }

  public static void b(o paramo, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    int i = paramString1.length();
    if (i < 5)
      throw new ArrayIndexOutOfBoundsException();
    String str = paramString1.substring(i - 4, i);
    switch (f.a[paramo.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      paramArrayOfString[0] = paramString1;
      paramArrayOfString[1] = str;
      return;
      int j = paramString1.indexOf("-");
      if (j == -1)
        throw new ArrayIndexOutOfBoundsException();
      if ((i - j == 30) && (paramString1.charAt(i - 6) == '-'))
        throw new ArrayIndexOutOfBoundsException();
      if (paramString1.charAt(i - 5) != '-')
        throw new ArrayIndexOutOfBoundsException();
      paramString1 = ac.a(paramString1, i - 5, 5);
      continue;
      if ((i == 31) && (paramString1.charAt(i - 2) == '-'))
        throw new ArrayIndexOutOfBoundsException();
      paramString1 = ac.a(paramString1, i - 4, 4);
    }
  }

  static String c(String paramString)
  {
    return paramString.replace("1", "L").replace("I", "L");
  }

  static String d(String paramString)
  {
    return paramString.replace("1", "I");
  }

  static String e(String paramString)
  {
    return paramString.replace("8", "B");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.e.a.e
 * JD-Core Version:    0.6.2
 */