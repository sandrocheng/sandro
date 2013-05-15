package com.google.analytics.tracking.android;

import android.util.Log;

class ay
{
  private static boolean a;

  static int a(String paramString)
  {
    return Log.d("GAV2", j(paramString));
  }

  static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  static boolean a()
  {
    return a;
  }

  static int b(String paramString)
  {
    if (a);
    for (int i = a(paramString); ; i = 0)
      return i;
  }

  static int c(String paramString)
  {
    return Log.e("GAV2", j(paramString));
  }

  static int d(String paramString)
  {
    return Log.i("GAV2", j(paramString));
  }

  static int e(String paramString)
  {
    if (a);
    for (int i = d(paramString); ; i = 0)
      return i;
  }

  static int f(String paramString)
  {
    return Log.v("GAV2", j(paramString));
  }

  static int g(String paramString)
  {
    if (a);
    for (int i = f(paramString); ; i = 0)
      return i;
  }

  static int h(String paramString)
  {
    return Log.w("GAV2", j(paramString));
  }

  static int i(String paramString)
  {
    if (a);
    for (int i = h(paramString); ; i = 0)
      return i;
  }

  private static String j(String paramString)
  {
    return Thread.currentThread().toString() + ": " + paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ay
 * JD-Core Version:    0.6.2
 */