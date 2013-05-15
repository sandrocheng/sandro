package com.avast.android.generic.b;

import com.avast.android.generic.b.a.b;
import com.avast.android.generic.b.a.c;
import com.avast.android.generic.b.a.d;
import com.avast.android.generic.util.p;

public class h
{
  private String a;
  private int b;
  private boolean c = false;

  public h(String paramString)
  {
    if (paramString == null)
      paramString = "";
    String str = paramString.trim();
    int i = str.indexOf("##");
    if (i > -1)
      str = str.substring(0, i).trim();
    this.a = str;
  }

  private String a(j paramj, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str;
    switch (i.a[paramj.ordinal()])
    {
    default:
      str = null;
      return str;
    case 1:
      str = c(paramBoolean1);
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      if (this.c)
        str = p.b(str, false, false);
      if (paramBoolean2)
        break;
      str = str.toUpperCase();
      break;
      str = b(paramBoolean1);
      continue;
      str = d(paramBoolean1);
      continue;
      str = e(paramBoolean1);
    }
  }

  private String b(boolean paramBoolean)
  {
    int i = 1;
    String str = "";
    if (this.b >= this.a.length())
      throw new b();
    int j = this.b;
    int k = i;
    char c1;
    while (true)
      if (j < this.a.length())
      {
        c1 = this.a.charAt(j);
        if ((c1 == ' ') && (k != 0))
          j++;
        else if (c1 == ' ')
          if (!paramBoolean)
            this.b = (j + 1);
      }
    while (true)
    {
      if ((i == 0) && (!paramBoolean))
        this.b = this.a.length();
      if (str.equals(""))
      {
        throw new d();
        if ((c1 == '1') || (c1 == '2') || (c1 == '3') || (c1 == '4') || (c1 == '5') || (c1 == '6') || (c1 == '7') || (c1 == '8') || (c1 == '9') || (c1 == '0'))
        {
          str = str + c1;
          k = 0;
          break;
        }
        throw new c();
      }
      return str;
      i = 0;
    }
  }

  private String c(boolean paramBoolean)
  {
    if (this.b >= this.a.length())
      throw new b();
    String str = String.valueOf(this.a.charAt(this.b));
    if (!paramBoolean)
      this.b = (1 + this.b);
    return str;
  }

  private String d(boolean paramBoolean)
  {
    if (this.b >= this.a.length())
      throw new b();
    int i = this.b;
    for (int j = this.b; j < this.a.length(); j++)
      if (this.a.charAt(j) != ' ')
        break label64;
    j = i;
    label64: if (j >= this.a.length())
      throw new b();
    int k = this.a.indexOf(' ', j);
    String str;
    if (k == -1)
    {
      str = this.a.substring(j);
      if (!paramBoolean)
        this.b = this.a.length();
    }
    while (str.equals(""))
    {
      throw new d();
      str = this.a.substring(j, k);
      if (!paramBoolean)
        this.b = (k + 1);
    }
    return str;
  }

  private String e(boolean paramBoolean)
  {
    String str2;
    if (this.c)
      str2 = d(paramBoolean);
    do
    {
      return str2;
      if (this.b >= this.a.length())
        throw new b();
      String str1 = this.a.substring(this.b);
      if (!paramBoolean)
        this.b = this.a.length();
      str2 = str1.trim();
    }
    while (!str2.equals(""));
    throw new d();
  }

  public String a(j paramj)
  {
    return a(paramj, false, true);
  }

  public void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public boolean a()
  {
    if (this.b >= this.a.length());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String b(j paramj)
  {
    return a(paramj, true, false);
  }

  public String c(j paramj)
  {
    return a(paramj, false, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.h
 * JD-Core Version:    0.6.2
 */