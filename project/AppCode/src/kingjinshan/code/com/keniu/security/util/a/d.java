package com.keniu.security.util.a;

import java.util.ArrayList;
import java.util.List;

final class d
{
  protected c a;
  private String b;
  private String c;
  private List d;
  private String[] e;
  private final String f = "#";
  private final String g = "=";
  private final String h = " ";
  private final String i = "[";
  private final String j = "]";

  public d(String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.c = paramString2;
    this.a = new c(this.c);
  }

  private b a(String paramString)
  {
    if (this.d == null)
      c();
    int k = 0;
    b localb;
    if (k < this.d.size())
    {
      localb = (b)this.d.get(k);
      if (!paramString.equalsIgnoreCase(localb.a()));
    }
    while (true)
    {
      return localb;
      k++;
      break;
      localb = null;
    }
  }

  private String a(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int k = 0;
    if (k < this.e.length)
    {
      if (k == paramInt)
        if (paramString2 != null)
        {
          if (paramString3 != null)
            localStringBuffer.append("#" + paramString3 + "\r\n");
          localStringBuffer.append(paramString1 + " " + "=" + " " + paramString2 + "\r\n");
        }
      while (true)
      {
        k++;
        break;
        if (this.e[k].trim().length() != 0)
          localStringBuffer.append(this.e[k] + "\r\n");
      }
    }
    return localStringBuffer.toString();
  }

  private void a(int paramInt)
  {
    for (int k = paramInt - 1; (k >= 0) && (this.e[k].trim().startsWith("#")); k--)
      this.e[k] = "";
  }

  private void a(b paramb, String paramString1, String paramString2, String paramString3)
  {
    int k = paramb.c();
    if ((paramString3 != null) || (paramString2 == null))
      for (int m = k - 1; (m >= 0) && (this.e[m].trim().startsWith("#")); m--)
        this.e[m] = "";
    StringBuffer localStringBuffer = new StringBuffer();
    int n = 0;
    if (n < this.e.length)
    {
      if (n == k)
        if (paramString2 != null)
        {
          if (paramString3 != null)
            localStringBuffer.append("#" + paramString3 + "\r\n");
          localStringBuffer.append(paramString1 + " " + "=" + " " + paramString2 + "\r\n");
        }
      while (true)
      {
        n++;
        break;
        if (this.e[n].trim().length() != 0)
          localStringBuffer.append(this.e[n] + "\r\n");
      }
    }
    this.c = localStringBuffer.toString();
    this.e = this.c.split("\r\n");
    c();
  }

  private void a(String paramString, int paramInt)
  {
    String str = paramString.trim();
    if (str.length() == 0);
    while (true)
    {
      return;
      if (str.indexOf("#") != 0)
      {
        String[] arrayOfString = str.split("=");
        if (arrayOfString.length > 1)
        {
          b localb = new b(arrayOfString[0].trim(), arrayOfString[1].trim(), paramInt);
          this.d.add(localb);
        }
      }
    }
  }

  private String b()
  {
    return this.c;
  }

  private String b(String paramString)
  {
    return this.a.a(paramString);
  }

  private void b(String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int k = this.e.length - 1;
    if (k >= 0)
      if (this.e[k].trim().startsWith("#"));
    while (true)
    {
      if (k != -1)
      {
        int m = 0;
        while (true)
          if (m < this.e.length)
          {
            localStringBuffer.append(this.e[m] + "\r\n");
            if (m == k)
            {
              localStringBuffer.append("#" + paramString3 + "\r\n");
              localStringBuffer.append(paramString1 + " " + "=" + " " + paramString2 + "\r\n");
            }
            m++;
            continue;
            k--;
            break;
          }
      }
      this.c = localStringBuffer.toString();
      this.e = this.c.split("\r\n");
      return;
      k = -1;
    }
  }

  private void c()
  {
    this.e = this.c.split("\r\n");
    if (this.d == null)
      this.d = new ArrayList();
    for (int k = 0; k < this.e.length; k++)
    {
      String str = this.e[k].trim();
      if ((str.length() != 0) && (str.indexOf("#") != 0))
      {
        String[] arrayOfString = str.split("=");
        if (arrayOfString.length > 1)
        {
          b localb = new b(arrayOfString[0].trim(), arrayOfString[1].trim(), k);
          this.d.add(localb);
        }
      }
    }
  }

  private ArrayList d()
  {
    c localc = this.a;
    if (localc.a.size() != 0);
    for (ArrayList localArrayList = localc.a; ; localArrayList = null)
      return localArrayList;
  }

  public final String a()
  {
    return this.b;
  }

  public final String a(String paramString1, String paramString2)
  {
    if (this.d == null)
      c();
    b localb = a(paramString1);
    if (localb != null);
    for (String str = localb.b(); ; str = paramString2)
      return str;
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    b localb = a(paramString1);
    StringBuffer localStringBuffer;
    int m;
    if (localb == null)
    {
      if (paramString2 == null)
        return;
      localStringBuffer = new StringBuffer();
      m = this.e.length - 1;
      if (m < 0)
        break label280;
      if (this.e[m].trim().startsWith("#"));
    }
    while (true)
    {
      if (m != -1)
      {
        int n = 0;
        while (true)
          if (n < this.e.length)
          {
            localStringBuffer.append(this.e[n] + "\r\n");
            if (n == m)
            {
              localStringBuffer.append("#" + paramString3 + "\r\n");
              localStringBuffer.append(paramString1 + " " + "=" + " " + paramString2 + "\r\n");
            }
            n++;
            continue;
            m--;
            break;
          }
      }
      this.c = localStringBuffer.toString();
      this.e = this.c.split("\r\n");
      break;
      int k = localb.c();
      if ((paramString3 != null) || (paramString2 == null))
        a(k);
      this.c = a(k, paramString1, paramString2, paramString3);
      this.e = this.c.split("\r\n");
      c();
      break;
      label280: m = -1;
    }
  }

  public final String toString()
  {
    return "[" + this.b + "]" + "\r\n" + this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.a.d
 * JD-Core Version:    0.6.2
 */