package com.keniu.security.util.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

final class c
{
  ArrayList a = new ArrayList();
  protected HashMap b = new HashMap();
  ArrayList c = new ArrayList();
  ArrayList d = new ArrayList();
  ArrayList e = new ArrayList();
  private String[] f;
  private final String g = "#";
  private transient String h;
  private transient Properties i;

  public c(String paramString)
  {
    b(paramString);
  }

  private void b(String paramString)
  {
    if (paramString != null)
    {
      this.f = paramString.split("\r\n");
      for (int j = 0; j < this.f.length; j++)
      {
        String str1 = this.f[j].trim();
        String str2 = "";
        if (str1.indexOf('#') != -1)
        {
          String[] arrayOfString = str1.split("#");
          if (arrayOfString.length != 0)
            str2 = arrayOfString[1].trim();
          this.e.add(str2);
        }
        if (str1.indexOf('=') != -1)
        {
          String str3 = str1.trim();
          this.a.add(str3);
          this.d.add(str3);
        }
      }
    }
  }

  private void c(String paramString)
  {
    String str1 = paramString.trim();
    String str2 = "";
    if (str1.indexOf('#') != -1)
    {
      String[] arrayOfString = str1.split("#");
      if (arrayOfString.length != 0)
        str2 = arrayOfString[1].trim();
      this.e.add(str2);
    }
    if (str1.indexOf('=') != -1)
    {
      String str3 = str1.trim();
      this.a.add(str3);
      this.d.add(str3);
    }
  }

  protected final String a(String paramString)
  {
    for (int j = 0; j < this.e.size(); j++)
      this.b.put(this.d.get(j), this.e.get(j));
    Object localObject;
    if (paramString != null)
    {
      localObject = this.b.get(paramString);
      if (localObject == null);
    }
    for (String str = localObject.toString().trim(); ; str = null)
      return str;
  }

  protected final ArrayList a()
  {
    if (this.a.size() != 0);
    for (ArrayList localArrayList = this.a; ; localArrayList = null)
      return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.a.c
 * JD-Core Version:    0.6.2
 */