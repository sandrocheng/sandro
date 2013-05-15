package com.avast.android.generic.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.avast.android.generic.z;

@SuppressLint({"DefaultLocale"})
public class q
{
  private static final r[] a = arrayOfr;

  static
  {
    r[] arrayOfr = new r[2];
    arrayOfr[0] = new r("HTTP status 400", z.aN);
    arrayOfr[1] = new r("ECONNREFUSED", z.ap);
  }

  public static String a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = paramContext.getString(z.ay);
    label75: 
    while (true)
    {
      return paramString;
      String str = paramString.toLowerCase();
      r[] arrayOfr = a;
      int i = arrayOfr.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label75;
        r localr = arrayOfr[j];
        if (str.contains(localr.a))
        {
          paramString = paramContext.getString(localr.b);
          break;
        }
      }
    }
  }

  public static String a(Context paramContext, Throwable paramThrowable)
  {
    return a(paramContext, paramThrowable.getMessage());
  }

  public static String a(Fragment paramFragment, Throwable paramThrowable)
  {
    if ((paramFragment == null) || (!paramFragment.isAdded()))
    {
      str = paramThrowable.getMessage();
      if (!TextUtils.isEmpty(str));
    }
    for (String str = "Reason unknown"; ; str = a(paramFragment.getActivity(), paramThrowable))
      return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.q
 * JD-Core Version:    0.6.2
 */