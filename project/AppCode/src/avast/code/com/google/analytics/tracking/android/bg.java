package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;

class bg
  implements bf
{
  private final Context a;

  public bg(Context paramContext)
  {
    if (paramContext == null)
      throw new NullPointerException("Context cannot be null");
    this.a = paramContext.getApplicationContext();
  }

  private int a(String paramString1, String paramString2)
  {
    if (this.a == null);
    for (int i = 0; ; i = this.a.getResources().getIdentifier(paramString1, paramString2, this.a.getPackageName()))
      return i;
  }

  public int a(String paramString, int paramInt)
  {
    int i = a(paramString, "integer");
    if (i == 0);
    while (true)
    {
      return paramInt;
      try
      {
        int j = Integer.parseInt(this.a.getString(i));
        paramInt = j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        ay.h("NumberFormatException parsing " + this.a.getString(i));
      }
    }
  }

  public String a(String paramString)
  {
    int i = a(paramString, "string");
    if (i == 0);
    for (String str = null; ; str = this.a.getString(i))
      return str;
  }

  public Double b(String paramString)
  {
    String str = a(paramString);
    boolean bool = TextUtils.isEmpty(str);
    Object localObject = null;
    if (bool);
    while (true)
    {
      return localObject;
      try
      {
        Double localDouble = Double.valueOf(Double.parseDouble(str));
        localObject = localDouble;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        ay.h("NumberFormatException parsing " + str);
        localObject = null;
      }
    }
  }

  public boolean c(String paramString)
  {
    int i = a(paramString, "bool");
    if (i == 0);
    for (boolean bool = false; ; bool = "true".equalsIgnoreCase(this.a.getString(i)))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bg
 * JD-Core Version:    0.6.2
 */