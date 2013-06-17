package com.antivirus.core.scanners.a.a;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b
{
  public String a;
  public boolean b;
  public Pattern c = null;
  Matcher d = null;

  public b(b paramb)
  {
    this.a = paramb.a;
    this.b = paramb.b;
    if (this.b);
    try
    {
      this.c = Pattern.compile(this.a);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  public b(String paramString, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramBoolean;
    if (paramString == null)
      paramString = "";
    if (paramBoolean);
    try
    {
      this.c = Pattern.compile(paramString);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  protected void a()
  {
    if (this.a == null)
      this.a = "";
  }

  public boolean a(String paramString)
  {
    boolean bool = true;
    if (TextUtils.isEmpty(this.a));
    while (true)
    {
      return bool;
      if ((this.c != null) && (this.b))
      {
        this.d = this.c.matcher(paramString);
        if ((this.d != null) && (this.d.find()));
      }
      else
      {
        while (!this.a.equals(paramString))
        {
          bool = false;
          break;
        }
      }
    }
  }

  public boolean a(ArrayList paramArrayList)
  {
    boolean bool1 = false;
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
      bool1 = TextUtils.isEmpty(this.a);
    while (true)
    {
      return bool1;
      int i = 0;
      while ((!bool1) && (i < paramArrayList.size()))
      {
        boolean bool2 = a((String)paramArrayList.get(i));
        i++;
        bool1 = bool2;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.a.a.b
 * JD-Core Version:    0.6.2
 */