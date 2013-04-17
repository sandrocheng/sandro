package com.tencent.feedback.common;

import android.util.Log;

public class c
{
  public final int a;
  public final int b;
  public final int c;

  public c()
  {
  }

  public c(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = 3;
    this.b = 3;
    this.c = 1;
  }

  public static void a(String paramString)
  {
    boolean bool = Constants.IS_DEBUG;
    int i = 0;
    if (!bool)
      if (i != 0)
        break label37;
    while (true)
    {
      return;
      i = 0;
      if (paramString == null)
        break;
      int j = paramString.length();
      i = 0;
      if (j <= 0)
        break;
      i = 1;
      break;
      label37: Log.i("eup", paramString);
    }
  }

  public static void b(String paramString)
  {
    boolean bool = Constants.IS_DEBUG;
    int i = 0;
    if (!bool)
      if (i != 0)
        break label37;
    while (true)
    {
      return;
      i = 0;
      if (paramString == null)
        break;
      int j = paramString.length();
      i = 0;
      if (j <= 0)
        break;
      i = 1;
      break;
      label37: Log.e("eup", paramString);
    }
  }

  public static void c(String paramString)
  {
    boolean bool = Constants.IS_DEBUG;
    int i = 0;
    if (!bool)
      if ((i != 0) && (Constants.IS_CORE_DEBUG))
        break label43;
    while (true)
    {
      return;
      i = 0;
      if (paramString == null)
        break;
      int j = paramString.length();
      i = 0;
      if (j <= 0)
        break;
      i = 1;
      break;
      label43: Log.w("eup", paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.c
 * JD-Core Version:    0.6.2
 */