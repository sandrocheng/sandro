package com.google.analytics.tracking.android;

public class bb
{
  private final String a;
  private final String b;
  private final ba c;

  public bb(String paramString1, String paramString2, ba paramba)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramba;
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
        ay.h("Unable to parse slot for url parameter " + str2);
        str1 = null;
        continue;
      }
      str1 = this.a;
    }
  }

  public ba b()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bb
 * JD-Core Version:    0.6.2
 */