package com.google.c.a;

import java.util.regex.Pattern;

public class r
{
  private s a;

  public r(int paramInt)
  {
    this.a = new s(paramInt);
  }

  public Pattern a(String paramString)
  {
    Pattern localPattern = (Pattern)this.a.a(paramString);
    if (localPattern == null)
    {
      localPattern = Pattern.compile(paramString);
      this.a.a(paramString, localPattern);
    }
    return localPattern;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.r
 * JD-Core Version:    0.6.2
 */