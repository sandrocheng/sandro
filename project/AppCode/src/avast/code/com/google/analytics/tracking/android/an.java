package com.google.analytics.tracking.android;

import java.util.SortedSet;
import java.util.TreeSet;

class an
{
  private static final an d = new an();
  private SortedSet a = new TreeSet();
  private StringBuilder b = new StringBuilder();
  private boolean c = false;

  public static an a()
  {
    return d;
  }

  public void a(ao paramao)
  {
    try
    {
      if (!this.c)
      {
        this.a.add(paramao);
        this.b.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(paramao.ordinal()));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void a(boolean paramBoolean)
  {
    try
    {
      this.c = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String b()
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 6;
      int j = 0;
      while (this.a.size() > 0)
      {
        ao localao = (ao)this.a.first();
        this.a.remove(localao);
        int k = localao.ordinal();
        while (k >= i)
        {
          localStringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(j));
          i += 6;
          j = 0;
        }
        j += (1 << localao.ordinal() % 6);
      }
      if ((j > 0) || (localStringBuilder.length() == 0))
        localStringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(j));
      this.a.clear();
      String str = localStringBuilder.toString();
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String c()
  {
    try
    {
      if (this.b.length() > 0)
        this.b.insert(0, ".");
      String str = this.b.toString();
      this.b = new StringBuilder();
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.an
 * JD-Core Version:    0.6.2
 */