package com.b.a;

import java.util.HashMap;
import java.util.Map;

final class ck
{
  private final ck[] b;
  private final Map c = new HashMap();
  private final Map d = new HashMap();
  private final Map e = new HashMap();

  static
  {
    if (!ch.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  ck(ct[] paramArrayOfct)
  {
    this.b = new ck[paramArrayOfct.length];
    for (int i = 0; i < paramArrayOfct.length; i++)
      this.b[i] = ct.a(paramArrayOfct[i]);
    int j = paramArrayOfct.length;
    int k = 0;
    while (k < j)
    {
      ct localct = paramArrayOfct[k];
      try
      {
        a(localct.c(), localct);
        k++;
      }
      catch (cn localcn)
      {
        while (a);
        throw new AssertionError();
      }
    }
  }

  private static void b(cv paramcv)
  {
    String str = paramcv.a();
    if (str.length() == 0)
      throw new cn(paramcv, "Missing name.");
    int i = 1;
    for (int j = 0; j < str.length(); j++)
    {
      char c1 = str.charAt(j);
      if (c1 >= '')
        i = 0;
      if ((!Character.isLetter(c1)) && (c1 != '_') && ((!Character.isDigit(c1)) || (j <= 0)))
        i = 0;
    }
    if (i == 0)
      throw new cn(paramcv, '"' + str + "\" is not a valid identifier.");
  }

  final cv a(String paramString)
  {
    Object localObject = (cv)this.c.get(paramString);
    if (localObject != null);
    while (true)
    {
      return localObject;
      ck[] arrayOfck = this.b;
      int i = arrayOfck.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label74;
        cv localcv = (cv)arrayOfck[j].c.get(paramString);
        if (localcv != null)
        {
          localObject = localcv;
          break;
        }
      }
      label74: localObject = null;
    }
  }

  final cv a(String paramString, cv paramcv)
  {
    Object localObject;
    if (paramString.startsWith("."))
      localObject = a(paramString.substring(1));
    while (true)
    {
      label73: cv localcv;
      if (localObject == null)
      {
        throw new cn(paramcv, '"' + paramString + "\" is not defined.");
        int i = paramString.indexOf('.');
        String str;
        StringBuilder localStringBuilder;
        if (i == -1)
        {
          str = paramString;
          localStringBuilder = new StringBuilder(paramcv.b());
        }
        while (true)
        {
          int j = localStringBuilder.lastIndexOf(".");
          if (j == -1)
          {
            localObject = a(paramString);
            break;
            str = paramString.substring(0, i);
            break label73;
          }
          localStringBuilder.setLength(j + 1);
          localStringBuilder.append(str);
          localcv = a(localStringBuilder.toString());
          if (localcv != null)
          {
            if (i == -1)
              break label205;
            localStringBuilder.setLength(j + 1);
            localStringBuilder.append(paramString);
            localObject = a(localStringBuilder.toString());
            break;
          }
          localStringBuilder.setLength(j);
        }
      }
      return localObject;
      label205: localObject = localcv;
    }
  }

  final void a(cp paramcp)
  {
    cl localcl = new cl(paramcp.e(), paramcp.H_());
    cp localcp = (cp)this.e.put(localcl, paramcp);
    if (localcp != null)
      this.e.put(localcl, localcp);
  }

  final void a(cq paramcq)
  {
    cl localcl = new cl(paramcq.r(), paramcq.e());
    cq localcq = (cq)this.d.put(localcl, paramcq);
    if (localcq != null)
    {
      this.d.put(localcl, localcq);
      throw new cn(paramcq, "Field number " + paramcq.e() + "has already been used in \"" + paramcq.r().b() + "\" by field \"" + localcq.a() + "\".");
    }
  }

  final void a(cv paramcv)
  {
    String str1 = paramcv.a();
    if (str1.length() == 0)
      throw new cn(paramcv, "Missing name.");
    int i = 1;
    for (int j = 0; j < str1.length(); j++)
    {
      char c1 = str1.charAt(j);
      if (c1 >= '')
        i = 0;
      if ((!Character.isLetter(c1)) && (c1 != '_') && ((!Character.isDigit(c1)) || (j <= 0)))
        i = 0;
    }
    if (i == 0)
      throw new cn(paramcv, '"' + str1 + "\" is not a valid identifier.");
    String str2 = paramcv.b();
    int k = str2.lastIndexOf('.');
    cv localcv = (cv)this.c.put(str2, paramcv);
    if (localcv != null)
    {
      this.c.put(str2, localcv);
      if (paramcv.c() == localcv.c())
      {
        if (k == -1)
          throw new cn(paramcv, '"' + str2 + "\" is already defined.");
        throw new cn(paramcv, '"' + str2.substring(k + 1) + "\" is already defined in \"" + str2.substring(0, k) + "\".");
      }
      throw new cn(paramcv, '"' + str2 + "\" is already defined in file \"" + localcv.c().b() + "\".");
    }
  }

  final void a(String paramString, ct paramct)
  {
    int i = paramString.lastIndexOf('.');
    if (i == -1);
    for (String str = paramString; ; str = paramString.substring(i + 1))
    {
      cv localcv = (cv)this.c.put(paramString, new cm(str, paramString, paramct));
      if (localcv == null)
        break;
      this.c.put(paramString, localcv);
      if ((localcv instanceof cm))
        break;
      throw new cn(paramct, '"' + str + "\" is already defined (as something other than a " + "package) in file \"" + localcv.c().b() + "\".");
      a(paramString.substring(0, i), paramct);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ck
 * JD-Core Version:    0.6.2
 */