package com.keniu.security.main;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.traffic.TrafficTabActivity;
import com.keniu.security.traffic.dd;
import com.keniu.security.traffic.y;
import com.keniu.security.util.ad;
import com.keniu.security.util.ae;
import com.keniu.security.util.ax;

public final class cb extends bs
{
  private static long u;
  private boolean v;

  public static boolean f()
  {
    String str = bn.a().a(bn.e, "param1");
    long l;
    if (!TextUtils.isEmpty(str))
    {
      l = Long.parseLong(str);
      if (System.currentTimeMillis() <= l + 259200000L)
        break label45;
    }
    label45: for (boolean bool = true; ; bool = false)
    {
      return bool;
      l = 0L;
      break;
    }
  }

  public static void g()
  {
    bn localbn = bn.a();
    String str = Long.toString(System.currentTimeMillis());
    localbn.a(bn.e, "param1", str);
  }

  private static long h()
  {
    String str = bn.a().a(bn.e, "param1");
    if (!TextUtils.isEmpty(str));
    for (long l = Long.parseLong(str); ; l = 0L)
      return l;
  }

  public final int a()
  {
    return super.a();
  }

  public final String a(String paramString)
  {
    bn localbn = bn.a();
    y localy2;
    long l2;
    String str1;
    if ("main".equals(paramString))
    {
      localy2 = y.a(localbn.d());
      l2 = localy2.d - u;
      if (l2 < 0L)
      {
        String str6 = localbn.c(2131429403);
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = (ax.b(-l2) + "MB");
        str1 = String.format(str6, arrayOfObject5);
      }
    }
    while (true)
    {
      return str1;
      if (l2 < localy2.g)
      {
        String str5 = localbn.c(2131429402);
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = (ax.b(l2) + "MB");
        str1 = String.format(str5, arrayOfObject4);
      }
      else
      {
        String str4 = localbn.c(2131429401);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = (ax.b(u) + "MB");
        str1 = String.format(str4, arrayOfObject3);
        continue;
        if ("process_left".equals(paramString))
        {
          str1 = localbn.c(2131429404);
        }
        else if ("process_right".equals(paramString))
        {
          str1 = localbn.c(2131429379);
        }
        else if ("description".equals(paramString))
        {
          Context localContext = localbn.d();
          y localy1 = y.a(localContext);
          boolean bool1 = y.d(localContext);
          y.a(localContext);
          boolean bool2 = y.b();
          if (!localy1.a)
          {
            str1 = ad.a(localContext.getString(2131428019), ae.c);
          }
          else if ((!bool1) && (!bool2))
          {
            str1 = ad.a("未设置运营商和套餐信息", ae.c);
          }
          else if ((!bool1) && (bool2))
          {
            str1 = ad.a("未设置套餐信息", ae.c);
          }
          else if ((bool1) && (!bool2))
          {
            str1 = ad.a("未设置运营商信息", ae.c);
          }
          else
          {
            long l1 = localy1.d - u;
            if (l1 < 0L)
            {
              String str3 = localbn.c(2131429406);
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = (ax.a(-l1) + "MB");
              str1 = ad.a(String.format(str3, arrayOfObject2), ae.c);
            }
            else if ((localy1.g != 0L) && (l1 >= 0L) && (l1 < localy1.g))
            {
              str1 = ad.a("本月流量剩余" + ax.a(l1) + "MB，请谨慎使用", ae.f);
            }
            else
            {
              String str2 = localbn.c(2131429407);
              Object[] arrayOfObject1 = new Object[2];
              arrayOfObject1[0] = (ax.a(u) + "MB");
              arrayOfObject1[1] = (ax.a(l1) + "MB");
              str1 = String.format(str2, arrayOfObject1);
            }
          }
        }
        else
        {
          str1 = localbn.a(bn.e, paramString);
        }
      }
    }
  }

  public final void a(Context paramContext, int paramInt)
  {
    if (paramInt == 0);
    try
    {
      a.c(paramContext, "5");
      Intent localIntent = new Intent();
      localIntent.setClass(paramContext, TrafficTabActivity.class);
      paramContext.startActivity(localIntent);
      g();
      while (true)
      {
        label37: return;
        if (paramInt == 1)
        {
          g();
          a(1);
        }
      }
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      break label37;
    }
  }

  public final int b()
  {
    return 2;
  }

  public final int c()
  {
    if (super.a() == 2);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final int d()
  {
    return bn.e;
  }

  public final void e()
  {
    Context localContext = bn.a().d();
    y localy = y.a(localContext);
    cc localcc = new cc(this, localy, localContext);
    this.v = false;
    dd.a(localContext, localcc);
    while (true)
    {
      try
      {
        boolean bool = this.v;
        if (!bool)
        {
          try
          {
            localcc.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
          }
          continue;
        }
        if (!y.d(localContext))
        {
          a(1);
          return;
        }
      }
      finally
      {
      }
      long l = localy.d - u;
      if (((l < 0L) || (l < localy.g)) && (f()))
        a(2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.cb
 * JD-Core Version:    0.6.2
 */