package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

class bq
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };

  static int a(char paramChar)
  {
    int i = paramChar - '0';
    if (i > 9)
      i -= 7;
    return i;
  }

  static String a(Locale paramLocale)
  {
    String str = null;
    if (paramLocale == null);
    while (true)
    {
      return str;
      boolean bool = TextUtils.isEmpty(paramLocale.getLanguage());
      str = null;
      if (!bool)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramLocale.getLanguage().toLowerCase());
        if (!TextUtils.isEmpty(paramLocale.getCountry()))
          localStringBuilder.append("-").append(paramLocale.getCountry().toLowerCase());
        str = localStringBuilder.toString();
      }
    }
  }

  public static Map a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1 = paramString.split("&");
    int i = arrayOfString1.length;
    int j = 0;
    if (j < i)
    {
      String[] arrayOfString2 = arrayOfString1[j].split("=");
      if (arrayOfString2.length > 1)
        localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
      while (true)
      {
        j++;
        break;
        if ((arrayOfString2.length == 1) && (arrayOfString2[0].length() != 0))
          localHashMap.put(arrayOfString2[0], null);
      }
    }
    return localHashMap;
  }

  public static double b(String paramString)
  {
    double d1 = 0.0D;
    if (paramString == null);
    while (true)
    {
      return d1;
      try
      {
        double d2 = Double.parseDouble(paramString);
        d1 = d2;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    }
  }

  public static boolean c(String paramString)
  {
    return Boolean.parseBoolean(paramString);
  }

  public static String d(String paramString)
  {
    String str1;
    if (TextUtils.isEmpty(paramString))
      str1 = null;
    while (true)
    {
      return str1;
      if (paramString.contains("?"))
        paramString = paramString.split("[\\?]")[1];
      if (paramString.contains("%3D"));
      StringBuilder localStringBuilder;
      while (true)
      {
        try
        {
          String str2 = URLDecoder.decode(paramString, "UTF-8");
          paramString = str2;
          Map localMap = a(paramString);
          String[] arrayOfString = { "dclid", "utm_source", "gclid", "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "gmob_t" };
          localStringBuilder = new StringBuilder();
          int i = 0;
          if (i >= arrayOfString.length)
            break label220;
          if (!TextUtils.isEmpty((CharSequence)localMap.get(arrayOfString[i])))
          {
            if (localStringBuilder.length() > 0)
              localStringBuilder.append("&");
            localStringBuilder.append(arrayOfString[i]).append("=").append((String)localMap.get(arrayOfString[i]));
          }
          i++;
          continue;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          str1 = null;
        }
        break;
        if (!paramString.contains("="))
        {
          str1 = null;
          break;
        }
      }
      label220: str1 = localStringBuilder.toString();
    }
  }

  static byte[] e(String paramString)
  {
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    for (int i = 0; i < arrayOfByte.length; i++)
      arrayOfByte[i] = ((byte)(a(paramString.charAt(i * 2)) << 4 | a(paramString.charAt(1 + i * 2))));
    return arrayOfByte;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bq
 * JD-Core Version:    0.6.2
 */