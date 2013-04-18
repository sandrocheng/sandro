package com.c.a.a;

import android.content.Context;
import android.content.pm.PackageManager;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class q
{
  Context a;
  Locale b;

  public q()
  {
  }

  public q(Context paramContext, Locale paramLocale)
  {
    this.a = paramContext;
    this.b = paramLocale;
    if (!n.b)
    {
      PackageManager localPackageManager = this.a.getPackageManager();
      n.e = this.a.getPackageName();
      n.d = n.a(localPackageManager, n.e);
      n.c = j.a(localPackageManager, n.e);
      n.b = n.a(n.d);
    }
  }

  static String a()
  {
    char[] arrayOfChar = " lO>_g7L'\027-t^=\026fuZ>\007)j\025-\n%7H+\004:{SaZ/z\006~Wn".toCharArray();
    int i = arrayOfChar.length;
    int j = 0;
    if (j < i)
    {
      int k;
      switch (j % 5)
      {
      default:
        k = 101;
      case 0:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        arrayOfChar[j] = ((char)(k ^ arrayOfChar[j]));
        j++;
        break;
        k = 72;
        continue;
        k = 24;
        continue;
        k = 59;
        continue;
        k = 78;
      }
    }
    return new String(arrayOfChar);
  }

  public final List a(String paramString, int paramInt)
  {
    ArrayList localArrayList1 = new ArrayList();
    if (!n.b);
    for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
    {
      return localArrayList2;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(a()).append("ct=").append(URLEncoder.encode("全国", "utf-8")).append("&ch=UTF-8&fd=5&rn=").append(paramInt).append("&pn=1&tp=1&q=").append(URLEncoder.encode(paramString, "utf-8"));
      ah localah = new ah(this.a);
      localah.a(localStringBuilder.toString());
      String str = (String)localah.a();
      if (str != null)
      {
        List localList = o.b(this.b, str);
        if (localList != null)
          localArrayList1.addAll(localList);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.q
 * JD-Core Version:    0.6.2
 */