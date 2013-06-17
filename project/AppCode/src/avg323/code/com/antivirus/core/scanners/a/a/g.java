package com.antivirus.core.scanners.a.a;

import java.util.ArrayList;

public class g extends h
{
  public b e;

  public g(String paramString1, boolean paramBoolean1, String paramString2, boolean paramBoolean2, String paramString3, boolean paramBoolean3)
  {
    super(paramString1, paramBoolean1, paramString2, paramBoolean2);
    this.e = new b(paramString3, paramBoolean3);
    a();
  }

  protected void a()
  {
    super.a();
    this.f.a();
  }

  public boolean a(String paramString1, String paramString2, ArrayList paramArrayList)
  {
    boolean bool1 = this.e.a(paramArrayList);
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      boolean bool3 = a(paramString1, paramString2);
      bool2 = false;
      if (bool3)
      {
        bool2 = false;
        if (bool1)
          bool2 = true;
      }
    }
  }

  public boolean a(String paramString, ArrayList paramArrayList1, ArrayList paramArrayList2)
  {
    if ((paramArrayList1 == null) || (paramArrayList1.size() == 0))
    {
      paramArrayList1 = new ArrayList();
      paramArrayList1.add("");
    }
    if (paramArrayList2 == null)
    {
      paramArrayList2 = new ArrayList();
      paramArrayList2.add("");
    }
    for (int i = 0; ; i++)
    {
      int j = paramArrayList1.size();
      boolean bool = false;
      if (i < j)
      {
        if (a(paramString, (String)paramArrayList1.get(i), paramArrayList2))
          bool = true;
      }
      else
        return bool;
    }
  }

  public boolean b(ArrayList paramArrayList)
  {
    boolean bool1 = false;
    int i = 0;
    while ((!bool1) && (i < paramArrayList.size()))
    {
      a locala = (a)paramArrayList.get(i);
      boolean bool2 = a(locala.a, locala.c, locala.d);
      i++;
      bool1 = bool2;
    }
    return bool1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.a.a.g
 * JD-Core Version:    0.6.2
 */