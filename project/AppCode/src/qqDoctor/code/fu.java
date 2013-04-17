import android.telephony.PhoneNumberUtils;

public final class fu
{
  private static final String[] a = { "-", "+86", "12593", "17909", "17951", "17911", "10193", "12583", "12520", "96688" };

  public static String a(String paramString)
  {
    String[] arrayOfString;
    int i;
    if ((paramString != null) && (paramString.length() > 2))
    {
      arrayOfString = a;
      i = arrayOfString.length;
    }
    for (int j = 0; ; j++)
      if (j < i)
      {
        String str = arrayOfString[j];
        if (paramString.startsWith(str))
          paramString = paramString.substring(str.length());
      }
      else
      {
        return paramString;
      }
  }

  public static String a(String paramString1, String paramString2)
  {
    String str1 = f(paramString2);
    int i = str1.length();
    String str3;
    if (i >= 8)
      str3 = str1.substring(0, i - 4) + " " + str1.substring(i - 4, i);
    for (String str2 = paramString1 + " like '%" + str1 + "' OR " + paramString1 + " like '%" + str3 + "'"; ; str2 = paramString1 + " ='" + str1 + "' ")
    {
      new StringBuilder("where: ").append(str2).toString();
      return str2;
    }
  }

  public static String[] a(int paramInt)
  {
    String[] arrayOfString = new String[2];
    switch (paramInt)
    {
    default:
      arrayOfString[0] = "12593";
      arrayOfString[1] = "17951";
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return arrayOfString;
      arrayOfString[0] = "12593";
      arrayOfString[1] = "17951";
      continue;
      arrayOfString[0] = "10193";
      arrayOfString[1] = "17911";
      continue;
      arrayOfString[0] = "17909";
      arrayOfString[1] = "17901";
    }
  }

  public static boolean b(String paramString)
  {
    boolean bool1 = paramString.endsWith("*");
    boolean bool2 = false;
    String str;
    String[] arrayOfString;
    int j;
    if (bool1)
    {
      int i = paramString.length();
      bool2 = false;
      if (i > 4)
      {
        str = paramString.substring(0, -1 + paramString.length());
        arrayOfString = a;
        j = arrayOfString.length;
      }
    }
    for (int k = 0; ; k++)
    {
      bool2 = false;
      if (k < j)
      {
        if (str.equals(arrayOfString[k]))
          bool2 = true;
      }
      else
        return bool2;
    }
  }

  public static boolean c(String paramString)
  {
    String[] arrayOfString = a;
    int i = arrayOfString.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (paramString.startsWith(arrayOfString[j]))
          bool = true;
      }
      else
        return bool;
    }
  }

  public static String d(String paramString)
  {
    if (paramString != null)
      paramString = PhoneNumberUtils.stripSeparators(paramString).replace("-", "").replace(" ", "").trim();
    return paramString;
  }

  public static String e(String paramString)
  {
    int i = 0;
    if (paramString == null)
    {
      if (i == 0)
        break label167;
      if (paramString == null)
        break label173;
    }
    label162: label167: label173: for (String str = PhoneNumberUtils.stripSeparators(paramString).replace("-", "").replace(" ", "").trim(); ; str = paramString)
    {
      if ((str == null) || (str.equals("")) || (str.equals("1")));
      for (str = null; ; str = null)
      {
        return str;
        char[] arrayOfChar = { 47, 58, 35, 44, 59, 46, 40, 41, 78, 42 };
        int j = arrayOfChar.length;
        for (int k = 0; ; k++)
        {
          if (k >= j)
            break label162;
          int m = paramString.indexOf(arrayOfChar[k]);
          i = 0;
          if (m >= 0)
            break;
        }
        i = 1;
        break;
      }
    }
  }

  public static String f(String paramString)
  {
    if (paramString != null)
    {
      int i = paramString.length();
      if (i > 8)
        paramString = paramString.substring(i - 8, i);
    }
    return paramString;
  }

  public static String g(String paramString)
  {
    String str1 = f(paramString);
    if (str1.length() >= 8);
    for (String str2 = " like '%" + str1 + "'"; ; str2 = " ='" + str1 + "' ")
      return str2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fu
 * JD-Core Version:    0.6.2
 */