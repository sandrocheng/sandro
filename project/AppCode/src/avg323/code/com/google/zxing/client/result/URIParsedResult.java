package com.google.zxing.client.result;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class URIParsedResult extends ParsedResult
{
  private static final Pattern USER_IN_HOST = Pattern.compile(":/*([^/@]+)@[^/]+");
  private final String title;
  private final String uri;

  public URIParsedResult(String paramString1, String paramString2)
  {
    super(ParsedResultType.URI);
    this.uri = massageURI(paramString1);
    this.title = paramString2;
  }

  private static boolean isColonFollowedByPortNumber(String paramString, int paramInt)
  {
    int i = paramString.indexOf('/', paramInt + 1);
    if (i < 0);
    for (int j = paramString.length(); ; j = i)
    {
      int k = paramInt + 1;
      boolean bool = false;
      if (j <= k)
        return bool;
      for (int m = paramInt + 1; ; m++)
      {
        if (m >= j)
        {
          bool = true;
          break;
        }
        int n = paramString.charAt(m);
        bool = false;
        if (n < 48)
          break;
        int i1 = paramString.charAt(m);
        bool = false;
        if (i1 > 57)
          break;
      }
    }
  }

  private static String massageURI(String paramString)
  {
    String str1 = paramString.trim();
    int i = str1.indexOf(':');
    String str2;
    if (i < 0)
      str2 = "http://" + str1;
    while (true)
    {
      return str2;
      if (isColonFollowedByPortNumber(str1, i))
        str2 = "http://" + str1;
      else
        str2 = str1.substring(0, i).toLowerCase(Locale.ENGLISH) + str1.substring(i);
    }
  }

  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(30);
    maybeAppend(this.title, localStringBuilder);
    maybeAppend(this.uri, localStringBuilder);
    return localStringBuilder.toString();
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getURI()
  {
    return this.uri;
  }

  public boolean isPossiblyMaliciousURI()
  {
    return USER_IN_HOST.matcher(this.uri).find();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.URIParsedResult
 * JD-Core Version:    0.6.2
 */