package com.keniu.security.main;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.ijinshan.kinghelper.firewall.FirewallLogTabActivity;
import com.ijinshan.kinghelper.firewall.a.a;
import com.ijinshan.kinghelper.firewall.core.h;
import com.ijinshan.kinghelper.firewall.dd;
import com.ijinshan.kinghelper.firewall.df;
import com.keniu.security.util.ad;
import com.keniu.security.util.ae;
import java.util.Date;

public final class bw extends bs
{
  private int u = 0;
  private int v = 0;

  public final String a(String paramString)
  {
    bn localbn = bn.a();
    int k;
    int m;
    String str1;
    if ("main".equals(paramString))
    {
      k = h.a();
      m = h.c();
      if ((k > 0) && (m > 0))
        str1 = localbn.c(2131429411);
    }
    while (true)
    {
      return str1;
      if (k > 0)
      {
        str1 = localbn.c(2131429410);
      }
      else if (m > 0)
      {
        str1 = localbn.c(2131429409);
      }
      else
      {
        str1 = localbn.c(2131429408);
        continue;
        if ("process_left".equals(paramString))
        {
          str1 = localbn.c(2131429412);
        }
        else if ("process_right".equals(paramString))
        {
          str1 = localbn.c(2131429379);
        }
        else if ("description".equals(paramString))
        {
          int i = h.a();
          int j = h.c();
          if (!dd.d())
          {
            str1 = ad.a("未开启,无法拦截骚扰短信和电话", ae.c);
          }
          else if ((i > 0) && (j > 0))
          {
            String str4 = localbn.c(2131429416);
            Object[] arrayOfObject6 = new Object[2];
            arrayOfObject6[0] = Integer.valueOf(i);
            arrayOfObject6[1] = Integer.valueOf(j);
            str1 = String.format(str4, arrayOfObject6);
          }
          else if (i > 0)
          {
            String str3 = localbn.c(2131429414);
            Object[] arrayOfObject5 = new Object[1];
            arrayOfObject5[0] = Integer.valueOf(i);
            str1 = String.format(str3, arrayOfObject5);
          }
          else if (j > 0)
          {
            String str2 = localbn.c(2131429415);
            Object[] arrayOfObject4 = new Object[1];
            arrayOfObject4[0] = Integer.valueOf(j);
            str1 = String.format(str2, arrayOfObject4);
          }
          else if ((this.u > 0) && (this.v > 0))
          {
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = Integer.valueOf(this.u);
            arrayOfObject3[1] = Integer.valueOf(this.v);
            str1 = String.format("本月已拦截%d条短信，%d个电话", arrayOfObject3);
          }
          else if (this.u > 0)
          {
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Integer.valueOf(this.u);
            str1 = String.format("本月已拦截%d条短信", arrayOfObject2);
          }
          else if (this.v > 0)
          {
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = Integer.valueOf(this.v);
            str1 = String.format("本月已拦截%d个电话", arrayOfObject1);
          }
          else if (dd.d())
          {
            str1 = localbn.c(2131429413) + " , 当前：" + dd.g().a();
          }
          else
          {
            str1 = localbn.c(2131427936);
          }
        }
        else
        {
          str1 = null;
        }
      }
    }
  }

  public final void a(Context paramContext, int paramInt)
  {
    if (paramInt == 0)
      if (h.a() > 0)
      {
        Intent localIntent1 = new Intent(paramContext, FirewallLogTabActivity.class);
        localIntent1.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_sms");
        paramContext.startActivity(localIntent1);
      }
    while (true)
    {
      return;
      Intent localIntent2 = new Intent(paramContext, FirewallLogTabActivity.class);
      localIntent2.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
      paramContext.startActivity(localIntent2);
      continue;
      if (paramInt == 1)
      {
        h.b(paramContext);
        h.a(paramContext);
        a(1);
      }
    }
  }

  public final int b()
  {
    return 2;
  }

  public final int c()
  {
    if (a() == 2);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final int d()
  {
    return bn.d;
  }

  public final void e()
  {
    a.a(bn.a().d());
    Date localDate = new Date(System.currentTimeMillis());
    localDate.setDate(1);
    localDate.setHours(0);
    localDate.setMinutes(0);
    localDate.setSeconds(0);
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = Long.toString(localDate.getTime());
    Cursor localCursor1 = a.a("date > ?", arrayOfString1, null);
    if (localCursor1 != null)
    {
      this.u = localCursor1.getCount();
      localCursor1.close();
    }
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = Long.toString(localDate.getTime());
    Cursor localCursor2 = a.b("date > ?", arrayOfString2, null);
    if (localCursor2 != null)
    {
      this.v = localCursor2.getCount();
      localCursor2.close();
    }
    if (h.a() > 0)
      super.a(2);
    while (true)
    {
      return;
      if (h.c() > 0)
        super.a(2);
      else
        super.a(1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bw
 * JD-Core Version:    0.6.2
 */