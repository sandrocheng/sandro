package com.avast.android.generic.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class p
{
  public static String a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      if (paramString.equals(""))
        localObject = "";
      else
        try
        {
          String str1 = paramString.replace("", "");
          if (paramBoolean1)
          {
            str1 = str1.trim();
            if (paramBoolean2)
              while (str1.contains("  "))
                str1 = str1.replace("  ", " ");
          }
          String str2 = URLEncoder.encode(str1, "UTF-8");
          localObject = str2;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          localObject = "NoEncoding";
        }
    }
  }

  public static String b(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      if (paramString.equals(""))
        localObject = "";
      else
        try
        {
          localObject = URLDecoder.decode(paramString, "UTF-8").replace("", "");
          if (paramBoolean1)
          {
            localObject = ((String)localObject).trim();
            if (paramBoolean2)
              while (((String)localObject).contains("  "))
              {
                String str = ((String)localObject).replace("  ", " ");
                localObject = str;
              }
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          localObject = "NoDecoding";
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.p
 * JD-Core Version:    0.6.2
 */