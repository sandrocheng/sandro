package com.google.b.a.a;

import com.google.b.b.a;
import com.google.b.b.e;
import com.google.b.b.f;
import com.google.b.j;
import java.util.Locale;
import java.util.StringTokenizer;

final class r extends j
{
  public void a(f paramf, Locale paramLocale)
  {
    if (paramLocale == null);
    for (String str = null; ; str = paramLocale.toString())
    {
      paramf.b(str);
      return;
    }
  }

  public Locale b(a parama)
  {
    Locale localLocale = null;
    if (parama.g() == e.i)
    {
      parama.k();
      return localLocale;
    }
    StringTokenizer localStringTokenizer = new StringTokenizer(parama.i(), "_");
    if (localStringTokenizer.hasMoreElements());
    for (String str1 = localStringTokenizer.nextToken(); ; str1 = null)
    {
      if (localStringTokenizer.hasMoreElements());
      for (String str2 = localStringTokenizer.nextToken(); ; str2 = null)
      {
        if (localStringTokenizer.hasMoreElements());
        for (String str3 = localStringTokenizer.nextToken(); ; str3 = null)
        {
          if ((str2 == null) && (str3 == null))
          {
            localLocale = new Locale(str1);
            break;
          }
          if (str3 == null)
          {
            localLocale = new Locale(str1, str2);
            break;
          }
          localLocale = new Locale(str1, str2, str3);
          break;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.a.r
 * JD-Core Version:    0.6.2
 */