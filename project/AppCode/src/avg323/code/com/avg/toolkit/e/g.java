package com.avg.toolkit.e;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.a.a.a.c;
import com.avg.toolkit.f.a;
import java.util.Date;

public class g
{
  private c a;

  public g(Context paramContext)
  {
    this.a = new c(paramContext, "nahche", 0, true);
  }

  public void a(b paramb)
  {
    b localb = h();
    if (paramb.ordinal() > localb.ordinal())
      this.a.b("ficherimtvmbeyote", paramb.ordinal()).commit();
  }

  public void a(String paramString)
  {
    this.a.b("rishuy", paramString).commit();
    f();
  }

  public boolean a()
  {
    return this.a.a("haimhauserlahatz", false);
  }

  public boolean a(int paramInt)
  {
    boolean bool = true;
    int i = this.a.a("originalvendorid", -1);
    if (i == -1)
      this.a.b("originalvendorid", paramInt).commit();
    while (true)
    {
      return bool;
      if (paramInt != i)
        bool = false;
    }
  }

  public void b()
  {
    this.a.b("haimhauserlahatz", true).commit();
    f();
  }

  public void b(String paramString)
  {
    this.a.b("id", paramString).commit();
  }

  public String c()
  {
    return this.a.a("rishuy", "");
  }

  public String d()
  {
    String str1 = this.a.a("rishuy", "");
    if (str1 == null);
    StringBuilder localStringBuilder;
    for (String str2 = ""; ; str2 = localStringBuilder.toString())
    {
      return str2;
      String[] arrayOfString = str1.split("-");
      localStringBuilder = new StringBuilder();
      int i = arrayOfString.length;
      for (int j = 0; j < i - 1; j++)
      {
        if (j > 0)
          localStringBuilder.append("-");
        localStringBuilder.append(arrayOfString[j]);
      }
    }
  }

  public String e()
  {
    return this.a.a("id", "0-0");
  }

  public long f()
  {
    long l1 = 0L;
    if (!a());
    while (true)
    {
      return l1;
      try
      {
        long l2 = new Date().getTime();
        this.a.b("taarihsfira", l2).commit();
        l1 = l2;
      }
      catch (Exception localException)
      {
        a.a(localException);
      }
    }
  }

  public long g()
  {
    return this.a.a("taarihsfira", 0L);
  }

  public b h()
  {
    return b.a(this.a.a("ficherimtvmbeyote", 0));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.e.g
 * JD-Core Version:    0.6.2
 */