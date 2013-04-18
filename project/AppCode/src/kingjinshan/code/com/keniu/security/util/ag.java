package com.keniu.security.util;

import com.hoi.string.LocalString;
import com.keniu.security.util.a.a;
import java.io.File;

public final class ag
{
  public static String a(String paramString)
  {
    String str = b(paramString);
    if (str.startsWith("http://"))
      str = str.substring("http://".length());
    if (str.startsWith("https://"))
      str = str.substring("https://".length());
    if (str.endsWith("/"))
      str = str.substring(0, str.length() - 1);
    if (str.endsWith("/"))
      str = str.substring(0, str.length() - 1);
    return str;
  }

  public static String b(String paramString)
  {
    File localFile = new File(new LocalString().malloc(1));
    if (localFile.exists());
    Object localObject;
    while (true)
    {
      String str3;
      int i;
      String str4;
      try
      {
        a locala = new a(localFile.getAbsolutePath());
        String str1 = locala.a("default", "root_uri", paramString);
        String str2 = locala.a("default", "magic_num", "").trim();
        str3 = str1.trim().replace(" ", "");
        if ((str3.endsWith("/")) && (!str3.endsWith("//")))
        {
          if (str3.startsWith("http://"))
          {
            i = 1;
            break label225;
            if (aa.a(aa.b(str3 + new LocalString().malloc(2)), str2))
              break label214;
            localObject = paramString;
            break;
          }
          if (str3.startsWith("https://"))
          {
            i = 1;
            break label225;
          }
          boolean bool = str3.startsWith("/mnt/sdcard/");
          if (bool)
          {
            i = 1;
            break label225;
          }
        }
        i = 0;
        break label225;
        str4 = paramString;
        continue;
      }
      catch (Exception localException)
      {
        localObject = paramString;
      }
      label214: localObject = str4;
      break;
      localObject = paramString;
      break;
      label225: if (i != 0)
        str4 = str3;
    }
    return localObject;
  }

  private static boolean c(String paramString)
  {
    boolean bool;
    if (!paramString.endsWith("/"))
      bool = false;
    while (true)
    {
      return bool;
      if (paramString.endsWith("//"))
        bool = false;
      else if (paramString.startsWith("http://"))
        bool = true;
      else if (paramString.startsWith("https://"))
        bool = true;
      else if (paramString.startsWith("/mnt/sdcard/"))
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ag
 * JD-Core Version:    0.6.2
 */