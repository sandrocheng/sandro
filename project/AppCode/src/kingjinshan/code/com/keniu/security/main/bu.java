package com.keniu.security.main;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.keniu.security.a;
import com.keniu.security.malware.MalwareMainActivity;
import com.keniu.security.util.ad;
import com.keniu.security.util.ae;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class bu extends bs
{
  private static final SimpleDateFormat u = new SimpleDateFormat("yyyy-MM-dd");

  public static String a(Context paramContext)
  {
    a locala = a.a(paramContext);
    bv localbv = f();
    String str1;
    if (localbv == null)
      str1 = "查杀手机病毒、恶意软件";
    while (true)
    {
      return str1;
      if ((locala.T()) || (!localbv.a()))
      {
        str1 = "查杀手机病毒、恶意软件";
      }
      else if (localbv.b > localbv.c)
      {
        str1 = ad.a("检测到恶意软件，请立即查杀", ae.c);
      }
      else if ((localbv.e > 0L) && (localbv.a > 0L))
      {
        String str2 = u.format(new Date(localbv.e));
        str1 = "上次检测时间" + str2;
      }
      else
      {
        str1 = "查杀手机病毒、恶意软件";
      }
    }
  }

  public static void a(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5)
  {
    bn localbn = bn.a();
    localbn.a(bn.c, "param4", Long.toString(paramLong2));
    localbn.a(bn.c, "param5", Long.toString(paramLong3));
    localbn.a(bn.c, "param6", Long.toString(paramLong4));
    localbn.a(bn.c, "param7", Long.toString(paramLong5));
    localbn.a(bn.c, "param8", Long.toString(paramLong1));
  }

  private static bv f()
  {
    bv localbv = new bv();
    bn localbn = bn.a();
    String str1 = localbn.a(bn.c, "param4");
    if (!TextUtils.isEmpty(str1))
      localbv.a = Long.parseLong(str1);
    String str2 = localbn.a(bn.c, "param5");
    if (!TextUtils.isEmpty(str2))
      localbv.b = Long.parseLong(str2);
    String str3 = localbn.a(bn.c, "param6");
    if (!TextUtils.isEmpty(str3))
      localbv.c = Long.parseLong(str3);
    String str4 = localbn.a(bn.c, "param7");
    if (!TextUtils.isEmpty(str4))
      localbv.d = Long.parseLong(str4);
    String str5 = localbn.a(bn.c, "param8");
    if (!TextUtils.isEmpty(str5))
      localbv.e = Long.parseLong(str5);
    return localbv;
  }

  public final String a(String paramString)
  {
    bn localbn = bn.a();
    String str;
    if ("main".equals(paramString))
      str = localbn.c(2131429398);
    while (true)
    {
      return str;
      if ("process_left".equals(paramString))
        str = localbn.c(2131429399);
      else if ("process_right".equals(paramString))
        str = localbn.c(2131429378);
      else if ("description".equals(paramString))
        str = localbn.c(2131429400);
      else
        str = localbn.a(bn.c, paramString);
    }
  }

  public final void a(Context paramContext, int paramInt)
  {
    if (paramInt == 0)
      paramContext.startActivity(new Intent(paramContext, MalwareMainActivity.class));
    while (true)
    {
      return;
      bn.a().c();
    }
  }

  public final int b()
  {
    return 2;
  }

  public final int c()
  {
    if (a() == 2);
    for (int i = 2; ; i = 0)
      return i;
  }

  public final int d()
  {
    return bn.c;
  }

  public final void e()
  {
    bv localbv = f();
    if (localbv == null);
    while (true)
    {
      return;
      if ((localbv.a()) && (localbv.b > localbv.c))
        a(2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bu
 * JD-Core Version:    0.6.2
 */