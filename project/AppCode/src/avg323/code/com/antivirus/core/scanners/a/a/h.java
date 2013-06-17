package com.antivirus.core.scanners.a.a;

import android.text.TextUtils;
import java.util.ArrayList;

public class h extends b
{
  public b f;

  public h(String paramString1, boolean paramBoolean1, String paramString2, boolean paramBoolean2)
  {
    super(paramString1, paramBoolean1);
    this.f = new b(paramString2, paramBoolean2);
    a();
  }

  private boolean a(String paramString, ArrayList paramArrayList)
  {
    boolean bool1 = false;
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
      bool1 = a(paramString, "");
    while (true)
    {
      return bool1;
      int i = 0;
      while ((!bool1) && (i < paramArrayList.size()))
      {
        boolean bool2 = a(paramString, (String)paramArrayList.get(i));
        i++;
        bool1 = bool2;
      }
    }
  }

  protected void a()
  {
    super.a();
    this.f.a();
  }

  public boolean a(String paramString1, String paramString2)
  {
    boolean bool = super.a(paramString1);
    if ((bool) && (this.f != null))
    {
      if (paramString2 == null)
        break label32;
      bool = this.f.a(paramString2);
    }
    while (true)
    {
      return bool;
      label32: if (!TextUtils.isEmpty(this.f.a))
        bool = false;
    }
  }

  public boolean b(ArrayList paramArrayList)
  {
    boolean bool1 = false;
    int i = 0;
    while ((!bool1) && (i < paramArrayList.size()))
    {
      a locala = (a)paramArrayList.get(i);
      boolean bool2 = a(locala.a, locala.c);
      i++;
      bool1 = bool2;
    }
    return bool1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.a.a.h
 * JD-Core Version:    0.6.2
 */