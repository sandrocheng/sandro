package com.keniu.security.main;

import android.content.Context;
import android.text.TextUtils;

public final class bx extends bs
{
  private boolean u = false;
  private boolean v = false;
  private long w = 0L;

  public final String a(String paramString)
  {
    bn localbn = bn.a();
    String str;
    if ("main".equals(paramString))
      if (this.u)
        str = localbn.d().getString(2131429381);
    while (true)
    {
      return str;
      if (this.v)
      {
        if (this.w < 1L)
        {
          Context localContext2 = localbn.d();
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(1);
          str = localContext2.getString(2131429382, arrayOfObject2);
        }
        else
        {
          Context localContext1 = localbn.d();
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Long.valueOf(this.w);
          str = localContext1.getString(2131429382, arrayOfObject1);
          continue;
          if ("process_left".equals(paramString))
            str = localbn.c(2131429378);
          else if ("param2".equals(paramString))
            str = localbn.a(bn.f, "param2");
        }
      }
      else
        str = localbn.a(bn.f, paramString);
    }
  }

  public final void a(Context paramContext, int paramInt)
  {
    if (paramInt == 0)
      bn.a().c();
  }

  public final int b()
  {
    return 1;
  }

  public final int c()
  {
    if (this.u);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final int d()
  {
    return bn.f;
  }

  public final void e()
  {
    String str1 = a("param2");
    if ((!TextUtils.isEmpty(str1)) && (str1.equals("false")))
    {
      this.u = true;
      a(2);
    }
    while (true)
    {
      return;
      String str2 = a("param3");
      if (!TextUtils.isEmpty(str2))
      {
        long l1 = System.currentTimeMillis();
        long l2 = Long.parseLong(str2);
        if (l2 + 86400000L < l1)
        {
          this.v = true;
          this.w = ((l1 - l2) / 86400000L);
          a(2);
        }
      }
      else
      {
        a(1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bx
 * JD-Core Version:    0.6.2
 */