package com.avast.android.generic.util;

import android.text.TextUtils;

public class aa
{
  public static ab a(String paramString)
  {
    ab localab;
    if (TextUtils.isEmpty(paramString))
      localab = ab.c;
    while (true)
    {
      return localab;
      for (int i = 0; ; i++)
      {
        if (i >= paramString.length())
          break label121;
        switch (paramString.charAt(i))
        {
        case ',':
        case '-':
        case '.':
        case '/':
        default:
        case '+':
          do
          {
            localab = ab.b;
            break;
          }
          while (i != 0);
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
        }
      }
      label121: if (paramString.length() < 4)
        localab = ab.c;
      else
        localab = ab.a;
    }
  }

  public static boolean b(String paramString)
  {
    if (a(paramString) == ab.a);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static String c(String paramString)
  {
    String str;
    if (paramString == null)
      str = "";
    int i;
    do
    {
      return str;
      str = "";
      i = 0;
    }
    while (i >= paramString.length());
    switch (paramString.charAt(i))
    {
    case ',':
    case '-':
    case '.':
    case '/':
    default:
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '+':
    }
    while (true)
    {
      i++;
      break;
      str = str + paramString.charAt(i);
      continue;
      if (i == 0)
        str = str + paramString.charAt(i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.aa
 * JD-Core Version:    0.6.2
 */