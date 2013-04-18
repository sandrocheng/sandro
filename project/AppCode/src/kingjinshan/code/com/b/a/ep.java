package com.b.a;

import java.io.UnsupportedEncodingException;

public final class ep
{
  private static String a(String paramString)
  {
    try
    {
      String str = new String(paramString.getBytes("ISO-8859-1"), "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException("Java VM does not support a standard character set.", localUnsupportedEncodingException);
    }
  }

  public static boolean a(i parami)
  {
    int i = parami.a();
    int j = 0;
    while (true)
    {
      int k;
      int m;
      boolean bool;
      if (j < i)
      {
        k = j + 1;
        m = 0xFF & parami.a(j);
        if (m < 128)
          break label313;
        if ((m < 194) || (m > 244))
          bool = false;
      }
      int n;
      int i2;
      while (true)
      {
        return bool;
        if (k >= i)
        {
          bool = false;
        }
        else
        {
          n = k + 1;
          int i1 = 0xFF & parami.a(k);
          if ((i1 < 128) || (i1 > 191))
          {
            bool = false;
          }
          else
          {
            if (m <= 223)
              break;
            if (n >= i)
            {
              bool = false;
            }
            else
            {
              i2 = n + 1;
              int i3 = 0xFF & parami.a(n);
              if ((i3 < 128) || (i3 > 191))
              {
                bool = false;
              }
              else if (m <= 239)
              {
                if (((m != 224) || (i1 >= 160)) && ((m != 237) || (i1 <= 159)))
                  break label307;
                bool = false;
              }
              else if (i2 >= i)
              {
                bool = false;
              }
              else
              {
                n = i2 + 1;
                int i4 = 0xFF & parami.a(i2);
                if ((i4 < 128) || (i4 > 191))
                {
                  bool = false;
                }
                else
                {
                  if (((m != 240) || (i1 >= 144)) && ((m != 244) || (i1 <= 143)))
                    break;
                  bool = false;
                  continue;
                  bool = true;
                }
              }
            }
          }
        }
      }
      j = n;
      continue;
      label307: j = i2;
      continue;
      label313: j = k;
    }
  }

  private static i b(String paramString)
  {
    try
    {
      i locali = i.a(paramString.getBytes("ISO-8859-1"));
      return locali;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException("Java VM does not support a standard character set.", localUnsupportedEncodingException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ep
 * JD-Core Version:    0.6.2
 */