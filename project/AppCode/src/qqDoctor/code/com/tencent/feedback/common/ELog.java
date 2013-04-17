package com.tencent.feedback.common;

import android.util.Log;

public class ELog
{
  private static boolean check(String paramString)
  {
    boolean bool1 = Constants.IS_DEBUG;
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      bool2 = false;
      if (paramString != null)
      {
        int i = paramString.length();
        bool2 = false;
        if (i > 0)
          bool2 = true;
      }
    }
  }

  public static void debug(String paramString)
  {
    if ((!check(paramString)) || (!Constants.IS_CORE_DEBUG));
    while (true)
    {
      return;
      Log.w("eup", paramString);
    }
  }

  public static void error(String paramString)
  {
    if (!check(paramString));
    do
    {
      return;
      Log.e("eup", paramString);
    }
    while (!Constants.Is_AutoCheckOpen);
    throw new RuntimeException("RQD ERROR CHECK:\n" + paramString + "\n this error will throw only Constants.Is_AutoCheckOpen == true!\n this throw is for found error early!");
  }

  public static void info(String paramString)
  {
    if (!check(paramString));
    while (true)
    {
      return;
      Log.i("eup", paramString);
    }
  }

  public static void testinfo(String paramString)
  {
    if ((!check(paramString)) || (!Constants.IS_CORE_DEBUG));
    while (true)
    {
      return;
      Log.w("test", paramString);
    }
  }

  public static void warn(String paramString)
  {
    if (!check(paramString));
    while (true)
    {
      return;
      Log.w("eup", paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.ELog
 * JD-Core Version:    0.6.2
 */