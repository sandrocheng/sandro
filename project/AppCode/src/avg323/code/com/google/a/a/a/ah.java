package com.google.a.a.a;

import java.util.SortedSet;
import java.util.TreeSet;

class ah
{
  private static final ah d = new ah();
  private SortedSet a = new TreeSet();
  private StringBuilder b = new StringBuilder();
  private boolean c = false;

  public static ah a()
  {
    return d;
  }

  public void a(ai paramai)
  {
    try
    {
      if (!this.c)
      {
        this.a.add(paramai);
        this.b.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(paramai.ordinal()));
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
        ai localai = (ai)this.a.first();
        this.a.remove(localai);
        int k = localai.ordinal();
        while (k >= i)
        {
          localStringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(j));
          i += 6;
          j = 0;
        }
        j += (1 << localai.ordinal() % 6);
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
 * Qualified Name:     com.google.a.a.a.ah
 * JD-Core Version:    0.6.2
 */