package com.keniu.security.f;

public final class ag
{
  public static int a(String paramString1, String paramString2)
  {
    int j;
    if ((paramString1 == null) && (paramString2 == null))
      j = 0;
    while (true)
    {
      return j;
      if (paramString1 == null)
      {
        j = -1;
      }
      else if (paramString2 == null)
      {
        j = 1;
      }
      else
      {
        String[] arrayOfString1 = paramString1.split("\\.");
        String[] arrayOfString2 = paramString2.split("\\.");
        if ((arrayOfString1 == null) && (arrayOfString2 == null))
        {
          j = 0;
        }
        else if (arrayOfString1 == null)
        {
          j = -1;
        }
        else
        {
          int i = 0;
          if (arrayOfString2 == null)
          {
            j = 1;
          }
          else
          {
            int k;
            int m;
            do
            {
              i++;
              if ((i >= arrayOfString1.length) || (i >= arrayOfString2.length))
                break label146;
              k = Integer.parseInt(arrayOfString1[i]);
              m = Integer.parseInt(arrayOfString2[i]);
              if (k > m)
              {
                j = 1;
                break;
              }
            }
            while (k >= m);
            j = -1;
            continue;
            label146: j = arrayOfString1.length - arrayOfString2.length;
          }
        }
      }
    }
  }

  private static String a()
  {
    return null;
  }

  public static String a(int paramInt)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt / 1000000);
    arrayOfObject[1] = Integer.valueOf(paramInt / 10000 % 100);
    arrayOfObject[2] = Integer.valueOf(paramInt / 100 % 100);
    arrayOfObject[3] = Integer.valueOf(paramInt % 100);
    return String.format("%d.%d.%d.%d", arrayOfObject);
  }

  public static String a(String paramString)
  {
    String str1;
    if (k.a(paramString))
    {
      str1 = null;
      if (str1 != null)
        break label171;
    }
    label171: for (String str2 = null; ; str2 = String.format("%s(%s)", new Object[] { str1, paramString }))
    {
      return str2;
      String[] arrayOfString = paramString.split("\\.");
      if ((arrayOfString == null) || (arrayOfString.length != 4))
      {
        str1 = null;
        break;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(arrayOfString[0] + "." + arrayOfString[1]);
      if (arrayOfString[2].equals("0"))
      {
        localStringBuilder.append("alpha");
        localStringBuilder.append(arrayOfString[3]);
      }
      while (true)
      {
        str1 = localStringBuilder.toString();
        break;
        if (arrayOfString[2].equals("1"))
        {
          localStringBuilder.append("beta");
          localStringBuilder.append(arrayOfString[3]);
        }
        else if (arrayOfString[2].equals("2"))
        {
          localStringBuilder.append("rel");
        }
      }
    }
  }

  private static int b(String paramString)
  {
    String[] arrayOfString = paramString.split("\\.");
    int i;
    if ((arrayOfString == null) || (arrayOfString.length > 4))
      i = -1;
    while (true)
    {
      return i;
      int j = 0;
      int k = 0;
      try
      {
        while (j < arrayOfString.length)
        {
          int m = Integer.parseInt(arrayOfString[j]);
          k |= m << 8 * (3 - j);
          j++;
        }
        i = k;
      }
      catch (Exception localException)
      {
        i = -1;
      }
    }
  }

  private static String c(String paramString)
  {
    if (k.a(paramString));
    String[] arrayOfString;
    for (String str = null; ; str = null)
    {
      return str;
      arrayOfString = paramString.split("\\.");
      if ((arrayOfString != null) && (arrayOfString.length == 4))
        break;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(arrayOfString[0] + "." + arrayOfString[1]);
    if (arrayOfString[2].equals("0"))
    {
      localStringBuilder.append("alpha");
      localStringBuilder.append(arrayOfString[3]);
    }
    while (true)
    {
      str = localStringBuilder.toString();
      break;
      if (arrayOfString[2].equals("1"))
      {
        localStringBuilder.append("beta");
        localStringBuilder.append(arrayOfString[3]);
      }
      else if (arrayOfString[2].equals("2"))
      {
        localStringBuilder.append("rel");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.ag
 * JD-Core Version:    0.6.2
 */