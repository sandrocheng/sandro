package com.antivirus.core.b;

import com.google.c.a.e;
import com.google.c.a.g;
import com.google.c.a.p;

public class a
{
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      e locale = e.a();
      String str = locale.a(locale.a(paramString1, paramString2), g.a);
      paramString1 = str;
      label22: return paramString1;
    }
    catch (Exception localException)
    {
      break label22;
    }
  }

  public static String b(String paramString1, String paramString2)
  {
    if (paramString1.startsWith("+"));
    Object localObject;
    try
    {
      e locale2 = e.a();
      p localp = locale2.a(paramString1, "");
      if (locale2.b(localp.a()).equalsIgnoreCase(paramString2))
      {
        localObject = locale2.a(localp, g.c);
      }
      else
      {
        String str2 = locale2.a(localp, g.a);
        localObject = str2;
        break label109;
        try
        {
          e locale1 = e.a();
          String str1 = locale1.a(locale1.a(paramString1, paramString2), g.c);
          paramString1 = str1;
        }
        catch (Exception localException1)
        {
        }
      }
    }
    catch (Exception localException2)
    {
    }
    label109: paramString1 = (String)localObject;
    return paramString1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.b.a
 * JD-Core Version:    0.6.2
 */