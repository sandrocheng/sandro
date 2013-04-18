package com.keniu.security.a;

import android.content.pm.ApplicationInfo;
import java.util.ArrayList;
import java.util.Iterator;

public final class h
{
  public h(f paramf)
  {
    paramf.a = new ArrayList();
    paramf.b = new ArrayList();
  }

  public final boolean a(ApplicationInfo paramApplicationInfo, String paramString)
  {
    if (this.a.a.size() <= 0)
    {
      if (!this.a.c.equals(paramApplicationInfo.packageName))
        break label88;
      if (s.b() != null)
        this.a.a = s.b();
    }
    Iterator localIterator = this.a.a.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (!((String)localIterator.next()).contains(paramString));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      label88: f localf = this.a;
      localf.a = f.b(paramApplicationInfo);
      s.a(this.a.a);
      break;
    }
  }

  final boolean b(ApplicationInfo paramApplicationInfo, String paramString)
  {
    if (this.a.b.size() <= 0)
    {
      if (!this.a.c.equals(paramApplicationInfo.packageName))
        break label88;
      if (s.c() != null)
        this.a.b = s.c();
    }
    Iterator localIterator = this.a.b.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (!((String)localIterator.next()).equals(paramString));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      label88: f localf = this.a;
      localf.b = k.a(paramApplicationInfo);
      s.b(this.a.b);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.h
 * JD-Core Version:    0.6.2
 */