package com.avast.android.generic.util;

import android.content.Context;

public class t
{
  public static void a(Context paramContext, String paramString)
  {
    m.b("AvastIPC", paramContext.getPackageName() + ": " + paramString);
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    m.b("AvastIPC", paramContext.getPackageName() + " to " + paramString1 + ": " + paramString2);
  }

  public static void a(String paramString1, Context paramContext, String paramString2)
  {
    m.b(paramString1, paramContext.getPackageName() + ": " + paramString2);
  }

  public static void a(String paramString1, Context paramContext, String paramString2, Throwable paramThrowable)
  {
    m.c(paramString1, paramContext.getPackageName() + ": " + paramString2, paramThrowable);
  }

  public static void a(String paramString1, String paramString2)
  {
    m.b(paramString1, paramString2);
  }

  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    b(paramString1, paramString2, paramThrowable);
  }

  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    m.b("AvastIPC", paramContext.getPackageName() + " from " + paramString1 + ": " + paramString2);
  }

  private static void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (paramThrowable != null)
      m.c(paramString1, paramString2, paramThrowable);
    while (true)
    {
      return;
      m.b(paramString1, paramString2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.t
 * JD-Core Version:    0.6.2
 */