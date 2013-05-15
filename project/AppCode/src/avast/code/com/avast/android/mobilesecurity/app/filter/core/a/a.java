package com.avast.android.mobilesecurity.app.filter.core.a;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

class a
{
  private static final int[] b;
  private static final String[] c;
  private static final HashMap d;
  private static final HashMap e;

  static
  {
    int i = 0;
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      b = new int[] { 0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 106, 2026, 1000, 1015 };
      c = new String[] { "*", "us-ascii", "iso-8859-1", "iso-8859-2", "iso-8859-3", "iso-8859-4", "iso-8859-5", "iso-8859-6", "iso-8859-7", "iso-8859-8", "iso-8859-9", "shift_JIS", "utf-8", "big5", "iso-10646-ucs-2", "utf-16" };
      d = new HashMap();
      e = new HashMap();
      if ((a) || (b.length == c.length))
        break;
      throw new AssertionError();
    }
    int j = -1 + b.length;
    while (i <= j)
    {
      d.put(Integer.valueOf(b[i]), c[i]);
      e.put(c[i], Integer.valueOf(b[i]));
      i++;
    }
  }

  public static int a(String paramString)
  {
    if (paramString == null);
    Integer localInteger;
    for (int i = -1; ; i = localInteger.intValue())
    {
      return i;
      localInteger = (Integer)e.get(paramString);
      if (localInteger == null)
        throw new UnsupportedEncodingException();
    }
  }

  public static String a(int paramInt)
  {
    String str = (String)d.get(Integer.valueOf(paramInt));
    if (str == null)
      throw new UnsupportedEncodingException();
    return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.a.a
 * JD-Core Version:    0.6.2
 */