package com.avast.android.generic.util;

import android.util.Log;

public final class m
{
  private static boolean a = false;
  private static String b = "app";

  public static int a(String paramString1, String paramString2)
  {
    boolean bool = a;
    int i = 0;
    if (bool)
      i = Log.v(paramString1, paramString2);
    return i;
  }

  public static int a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    boolean bool = a;
    int i = 0;
    if (bool)
      i = Log.d(paramString1, paramString2, paramThrowable);
    return i;
  }

  public static int a(String paramString, Throwable paramThrowable)
  {
    return b(b, paramString, paramThrowable);
  }

  public static void a(String paramString)
  {
    b = paramString;
  }

  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static boolean a()
  {
    return a;
  }

  public static int b(String paramString)
  {
    return a(b, paramString);
  }

  public static int b(String paramString1, String paramString2)
  {
    boolean bool = a;
    int i = 0;
    if (bool)
      i = Log.d(paramString1, paramString2);
    return i;
  }

  public static int b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    return Log.w(paramString1, paramString2, paramThrowable);
  }

  public static int b(String paramString, Throwable paramThrowable)
  {
    return c(b, paramString, paramThrowable);
  }

  public static int c(String paramString)
  {
    return b(b, paramString);
  }

  public static int c(String paramString1, String paramString2)
  {
    boolean bool = a;
    int i = 0;
    if (bool)
      i = Log.i(paramString1, paramString2);
    return i;
  }

  public static int c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    return Log.e(paramString1, paramString2, paramThrowable);
  }

  public static int d(String paramString)
  {
    return c(b, paramString);
  }

  public static int d(String paramString1, String paramString2)
  {
    return Log.w(paramString1, paramString2);
  }

  public static int e(String paramString)
  {
    return d(b, paramString);
  }

  public static int e(String paramString1, String paramString2)
  {
    return Log.e(paramString1, paramString2);
  }

  public static int f(String paramString)
  {
    return e(b, paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.m
 * JD-Core Version:    0.6.2
 */