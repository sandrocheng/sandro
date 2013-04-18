package com.keniu.security.mydb.opt;

import android.content.Context;
import java.io.IOException;
import java.util.Locale;

public final class i
{
  private final String a;
  private final Context b;
  private final String c;

  public i(Context paramContext, String paramString1, String paramString2)
  {
    this.b = paramContext;
    this.a = paramString1;
    this.c = paramString2;
  }

  private static String a(int paramInt1, int paramInt2)
  {
    return a.a(paramInt1, paramInt2);
  }

  public static void a(Context paramContext)
  {
    try
    {
      i locali = new i(paramContext, "local number", "unknow number");
      locali.b("010", "default");
      locali.b("0956", "default");
      locali.b("0998", "default");
      locali.b("0999", "default");
      locali.b("13300034444", "default");
      locali.b("13300044444", "default");
      locali.b("18100000000", "default");
      locali.b("13700194444", "default");
      locali.b("02480194444", "default");
      locali.b("02470194444", "default");
      locali.b("02410194444", "default");
      locali.a("022799", "japan xiantai");
      locali.a("022800", "japan??");
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  private static boolean a()
  {
    return Locale.getDefault().getLanguage().equals("ja");
  }

  private String b(String paramString1, String paramString2)
  {
    try
    {
      String str2 = a(paramString1, paramString2);
      str1 = str2;
      return str1;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        String str1 = null;
      }
    }
  }

  private static void b(Context paramContext)
  {
    i locali = new i(paramContext, "local number", "unknow number");
    locali.b("010", "default");
    locali.b("0956", "default");
    locali.b("0998", "default");
    locali.b("0999", "default");
    locali.b("13300034444", "default");
    locali.b("13300044444", "default");
    locali.b("18100000000", "default");
    locali.b("13700194444", "default");
    locali.b("02480194444", "default");
    locali.b("02470194444", "default");
    locali.b("02410194444", "default");
    locali.a("022799", "japan xiantai");
    locali.a("022800", "japan??");
  }

  private static String c(String paramString1, String paramString2)
  {
    Object localObject;
    if (paramString1 == null)
    {
      localObject = paramString2;
      return localObject;
    }
    if (paramString1.length() > 6);
    for (String str1 = paramString1.substring(0, 6); ; str1 = paramString1)
    {
      String str2 = h.a(str1);
      if (str2 != null)
      {
        localObject = str2;
        break;
      }
      localObject = h.b(str1);
      if (localObject != null)
        break;
      localObject = paramString2;
      break;
    }
  }

  public final String a(String paramString1, String paramString2)
  {
    Object localObject;
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      localObject = paramString2;
      return localObject;
    }
    if (Locale.getDefault().getLanguage().equals("ja"))
      if (!paramString1.startsWith("+81"))
        break label458;
    label387: label458: for (String str4 = paramString1.substring(3); ; str4 = paramString1)
    {
      if (str4.startsWith("0081"))
        str4 = str4.substring(4);
      if (str4.startsWith("81"))
        str4 = str4.substring(2);
      if (str4 != null)
      {
        if (str4.length() > 6)
          str4 = str4.substring(0, 6);
        String str5 = h.a(str4);
        if (str5 != null)
        {
          localObject = str5;
          break;
        }
        localObject = h.b(str4);
        if (localObject != null)
          break;
      }
      localObject = paramString2;
      break;
      String str3;
      label225: String str2;
      String str1;
      if (paramString1.charAt(0) == '0')
      {
        if (paramString1.length() < 2)
        {
          localObject = paramString2;
          break;
        }
        localObject = a.c(paramString1);
        if (!((String)localObject).equals("unkown_str"))
          break;
        int i = paramString1.charAt(1);
        if (i == 48)
        {
          localObject = this.b.getString(2131427917);
          break;
        }
        if ((i > 48) && (i < 51))
        {
          str3 = paramString1.substring(0, 3);
          str2 = str3;
          str1 = "0";
        }
      }
      while (true)
      {
        localObject = a.a(Integer.parseInt(str1), Integer.parseInt(str2));
        if (!((String)localObject).equals("unkown_str"))
          break label387;
        localObject = this.c;
        break;
        if (paramString1.length() > 3)
        {
          str3 = paramString1.substring(0, 4);
          break label225;
        }
        localObject = paramString2;
        break;
        if ((paramString1.charAt(0) != '1') || (paramString1.length() < 7) || (paramString1.length() > 11))
          break label336;
        str1 = paramString1.substring(0, 3);
        str2 = paramString1.substring(0, 7);
      }
      label336: if (((paramString1.length() == 7) || (paramString1.length() == 8)) && (paramString1.charAt(0) > '1') && (paramString1.charAt(0) <= '9'))
      {
        localObject = this.a;
        break;
      }
      localObject = paramString2;
      break;
      if ((localObject == null) || (((String)localObject).length() <= 0))
        break;
      if (((String)localObject).compareTo("湖北襄阳(原襄樊)") == 0)
      {
        localObject = "湖北襄阳";
        break;
      }
      if (((String)localObject).compareTo("甘肃西峰") == 0)
      {
        localObject = "甘肃庆阳";
        break;
      }
      if (((String)localObject).compareTo("新疆库尔勒") == 0)
      {
        localObject = "新疆巴州";
        break;
      }
      if (((String)localObject).compareTo("四川达县") != 0)
        break;
      localObject = "四川达州";
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.mydb.opt.i
 * JD-Core Version:    0.6.2
 */