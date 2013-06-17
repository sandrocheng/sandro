package com.google.a.a.a;

public class at
{
  private final String a;
  private final String b;
  private final as c;

  public at(String paramString1, String paramString2, as paramas)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramas;
  }

  public String a()
  {
    return this.b;
  }

  public String a(String paramString)
  {
    String str2;
    String[] arrayOfString;
    String str1;
    if (paramString.contains("*"))
    {
      str2 = this.a;
      arrayOfString = paramString.split("\\*");
      int i = arrayOfString.length;
      str1 = null;
      if (i <= 1);
    }
    while (true)
    {
      try
      {
        int j = Integer.parseInt(arrayOfString[1]);
        str1 = str2 + j;
        return str1;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        aq.h("Unable to parse slot for url parameter " + str2);
        str1 = null;
        continue;
      }
      str1 = this.a;
    }
  }

  public as b()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.at
 * JD-Core Version:    0.6.2
 */