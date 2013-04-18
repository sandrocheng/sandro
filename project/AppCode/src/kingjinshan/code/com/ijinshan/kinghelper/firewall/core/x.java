package com.ijinshan.kinghelper.firewall.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.ijinshan.kinghelper.firewall.FirewallSettingsNightActivity;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.a.g;
import com.ijinshan.kinghelper.firewall.dd;
import com.ijinshan.kinghelper.firewall.df;
import com.ijinshan.kinghelper.firewall.dg;
import com.keniu.security.monitor.b;
import com.keniu.security.util.at;

public final class x
  implements b
{
  private static final String a = "SmsRecvMonitor";
  private static final boolean b = true;

  private static int a(w paramw)
  {
    int i = SmsFirewallBroadcastReceiver.a;
    Context localContext = paramw.a;
    byte[] arrayOfByte = paramw.b.getByteArrayExtra("data");
    try
    {
      v localv = new d(arrayOfByte).a();
      if (localv != null)
      {
        String str = com.ijinshan.kinghelper.a.i.a(localv.c);
        if (!TextUtils.isEmpty(str))
          if (!com.ijinshan.kinghelper.firewall.a.a.a(str, localv.e))
          {
            e.a(localContext);
            boolean bool = FirewallSettingsNightActivity.a(localContext);
            g localg = a(bool, localContext, str, null, a(bool), true);
            if (localg == null)
              break label156;
            long l = com.ijinshan.kinghelper.firewall.a.a.a(str, localv, localg);
            h.a(localContext, l);
            j = SmsFirewallBroadcastReceiver.b;
          }
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        try
        {
          com.jxphone.mosecurity.a.a.i(localContext, "bkwapmms");
          return j;
          j = SmsFirewallBroadcastReceiver.b;
          continue;
          localException1 = localException1;
          j = i;
          continue;
        }
        catch (Exception localException2)
        {
          continue;
        }
        label156: int j = i;
      }
    }
  }

  private static int a(boolean paramBoolean)
  {
    int i;
    if (paramBoolean)
      if (dd.f() == dg.a)
        i = 1;
    while (true)
    {
      return i;
      if (dd.f() == dg.b)
      {
        i = 2;
      }
      else if (dd.f() == dg.e)
      {
        i = 3;
      }
      else if (dd.f() == dg.f)
      {
        i = 4;
      }
      else if (dd.f() == dg.c)
      {
        i = 5;
      }
      else if (dd.f() == dg.d)
      {
        i = 6;
        continue;
        if (dd.g() == df.a)
          i = 1;
        else if (dd.g() == df.b)
          i = 2;
        else if (dd.g() == df.e)
          i = 3;
        else if (dd.g() == df.f)
          i = 4;
        else if (dd.g() == df.c)
          i = 5;
        else if (dd.g() == df.d)
          i = 6;
      }
      else
      {
        i = 0;
      }
    }
  }

  private static g a(Context paramContext, String paramString)
  {
    boolean bool = FirewallSettingsNightActivity.a(paramContext);
    return a(bool, paramContext, paramString, null, a(bool), true);
  }

  private static g a(Context paramContext, String paramString1, String paramString2)
  {
    dd.a(paramContext);
    Log.e("SmsRecvMonitor", "isBlockingSms=InterceptMode=" + dd.g());
    g localg;
    if (TextUtils.isEmpty(paramString1))
      localg = null;
    while (true)
    {
      return localg;
      String str = com.ijinshan.kinghelper.a.i.a(paramString1);
      if (!dd.d())
      {
        localg = null;
      }
      else
      {
        boolean bool = FirewallSettingsNightActivity.a(paramContext);
        localg = a(bool, paramContext, str, paramString2, a(bool), false);
      }
    }
  }

  private static g a(boolean paramBoolean1, Context paramContext, String paramString1, String paramString2, int paramInt, boolean paramBoolean2)
  {
    int i;
    int j;
    g localg11;
    label72: Object localObject;
    if (paramBoolean1)
    {
      i = 1;
      j = i * 1000 + paramInt * 100;
      if (paramInt != 1)
        break label257;
      e.a(paramContext);
      if (paramBoolean2)
        break label224;
      localg11 = e.a(paramString1, paramString2, false);
      if (localg11 != null)
      {
        localg11.a = paramBoolean1;
        if (localg11.i >= 0)
          break label85;
        localg11.b = (j + 1);
      }
      localObject = localg11;
    }
    while (true)
    {
      return localObject;
      i = 0;
      break;
      label85: if ((localg11.i == 0) && (localg11.e == 2))
      {
        localg11.b = (j + 2);
        break label72;
      }
      if ((localg11.i > 0) && (localg11.e == 1))
      {
        localg11.b = (j + 3);
        break label72;
      }
      if ((localg11.i == 0) && (localg11.e == 256))
      {
        localg11.b = (j + 4);
        break label72;
      }
      if ((localg11.i > 0) && ((localg11.e == 2) || (localg11.e == 3)))
      {
        localg11.b = (j + 5);
        break label72;
      }
      localg11.b = (j + 0);
      break label72;
      label224: g localg10 = e.a(paramString1);
      if (localg10 != null)
      {
        localg10.a = paramBoolean1;
        localg10.b = (j + 5);
        localObject = localg10;
        continue;
        label257: if (paramInt == 2)
        {
          e.a(paramContext);
          g localg9 = e.b(paramString1, false);
          e.a(paramContext);
          if (localg9 != null)
          {
            localg9.a = paramBoolean1;
            localg9.b = (j + 1);
          }
          localObject = localg9;
        }
        else
        {
          if (paramInt == 3)
          {
            e.a(paramContext);
            g localg8 = e.c(paramString1, false);
            if (localg8 != null)
            {
              localg8.a = paramBoolean1;
              if (localg8.i <= 0)
                break label357;
              localg8.b = (j + 1);
            }
            while (true)
            {
              localObject = localg8;
              break;
              label357: if (localg8.i == 0)
                localg8.b = (j + 2);
              else
                localg8.b = (j + 0);
            }
          }
          if (paramInt == 4)
          {
            e.a(paramContext);
            boolean bool = e.a(paramString1, false);
            if ((!bool) && (dd.d(paramBoolean1)))
            {
              g localg7 = e.b(paramString1, false);
              if (localg7 != null)
              {
                localg7.a = paramBoolean1;
                localg7.b = (j + 1);
                localObject = localg7;
              }
            }
            else if ((!bool) && (dd.e(paramBoolean1)) && (!paramBoolean2) && (!e.a(paramContext, paramString1)))
            {
              g localg6 = new g();
              localg6.i = 0;
              localg6.d = 3;
              localg6.h = paramContext.getString(2131427597);
              localg6.f = "";
              localg6.e = 2;
              localg6.g = paramContext.getString(2131427597);
              localg6.c = 2;
              localg6.a = paramBoolean1;
              localg6.b = (j + 2);
              localObject = localg6;
            }
            else if ((!bool) && (dd.g(paramBoolean1)) && (!paramBoolean2))
            {
              String str = dd.h();
              if (com.ijinshan.kinghelper.a.i.b(str, paramString2))
              {
                g localg5 = new g();
                localg5.i = 0;
                localg5.d = 3;
                localg5.h = paramContext.getString(2131427594);
                localg5.f = str;
                localg5.e = 2;
                localg5.g = paramContext.getString(2131427594);
                localg5.c = 2;
                localg5.a = paramBoolean1;
                localg5.b = (j + 3);
                localObject = localg5;
              }
            }
            else if ((!bool) && (dd.c(paramBoolean1)) && (!paramBoolean2) && (!e.a(paramContext, paramString1)) && (!e.f(paramString1)))
            {
              g localg4 = e.b(paramString1, paramString2, false);
              if (localg4 != null)
              {
                localg4.a = paramBoolean1;
                localg4.b = (j + 4);
                localObject = localg4;
              }
            }
            else if ((!bool) && (dd.j(paramBoolean1)) && (paramBoolean2))
            {
              g localg3 = e.a(paramString1);
              if (localg3 != null)
              {
                localg3.a = paramBoolean1;
                localg3.b = (j + 5);
                localObject = localg3;
              }
            }
          }
          else if (paramInt == 5)
          {
            e.a(paramContext);
            if (!e.a(paramString1, true))
            {
              g localg2 = new g();
              localg2.a = paramBoolean1;
              localg2.i = 0;
              localg2.d = 3;
              localg2.h = paramContext.getString(2131427595);
              localg2.f = "";
              localg2.e = 1;
              localg2.g = paramContext.getString(2131427595);
              localg2.c = 2;
              localg2.a = paramBoolean1;
              localg2.b = (j + 1);
              localObject = localg2;
            }
            else
            {
              localObject = null;
            }
          }
          else if (paramInt == 6)
          {
            g localg1 = new g();
            localg1.a = paramBoolean1;
            localg1.i = 0;
            localg1.d = 3;
            localg1.h = paramContext.getString(2131427596);
            localg1.f = "";
            localg1.e = 1;
            localg1.g = paramContext.getString(2131427596);
            localg1.c = 2;
            localg1.a = paramBoolean1;
            localg1.b = (j + 1);
            localObject = localg1;
          }
        }
      }
      else
      {
        localObject = null;
      }
    }
  }

  private static int b(w paramw)
  {
    int i = SmsFirewallBroadcastReceiver.a;
    String str1 = paramw.c;
    String str2 = paramw.d;
    Context localContext = paramw.a;
    boolean bool = FirewallSettingsNightActivity.a(localContext);
    if (df.a != dd.g())
      if (df.f == dd.g());
    while (true)
    {
      return i;
      if (dd.h(bool))
      {
        g localg = new g();
        localg.i = 0;
        localg.g = localContext.getString(2131427854);
        localg.h = localg.g;
        long l = com.ijinshan.kinghelper.firewall.a.a.a(str1, str2, localg);
        h.a(localContext, l);
        com.jxphone.mosecurity.a.a.i(localContext, "bkwappush");
        i = SmsFirewallBroadcastReceiver.b;
      }
    }
  }

  private static int c(w paramw)
  {
    int i = SmsFirewallBroadcastReceiver.a;
    int j;
    if (paramw.e)
      if (!dd.d())
        j = i;
    while (true)
    {
      return j;
      if (paramw.h)
      {
        j = a(paramw);
      }
      else
      {
        j = SmsFirewallBroadcastReceiver.a;
        String str4 = paramw.c;
        String str5 = paramw.d;
        Context localContext2 = paramw.a;
        boolean bool2 = FirewallSettingsNightActivity.a(localContext2);
        if ((df.a == dd.g()) || ((df.f == dd.g()) && (dd.h(bool2))))
        {
          g localg = new g();
          localg.i = 0;
          localg.g = localContext2.getString(2131427854);
          localg.h = localg.g;
          long l3 = com.ijinshan.kinghelper.firewall.a.a.a(str4, str5, localg);
          h.a(localContext2, l3);
          com.jxphone.mosecurity.a.a.i(localContext2, "bkwappush");
          j = SmsFirewallBroadcastReceiver.b;
          continue;
          Context localContext1 = paramw.a;
          String str1 = paramw.c;
          String str2 = paramw.d;
          long l1 = System.currentTimeMillis();
          dd.a(localContext1);
          Log.e("SmsRecvMonitor", "isBlockingSms=InterceptMode=" + dd.g());
          Object localObject;
          label232: int k;
          if (TextUtils.isEmpty(str1))
          {
            localObject = null;
            Log.e("SmsRecvMonitor", "receive isBlockingSms cost:" + (System.currentTimeMillis() - l1) + "ms");
            Log.e("SmsRecvMonitor", "receive a message,match rules:rule=" + localObject);
            if (localObject == null)
              break label464;
            k = SmsFirewallBroadcastReceiver.b;
            com.ijinshan.kinghelper.firewall.a.a.a(localContext1.getApplicationContext());
            long l2 = com.ijinshan.kinghelper.firewall.a.a.a(paramw.f, (g)localObject);
            h.a(localContext1, l2);
            com.jxphone.mosecurity.a.a.a(localContext1, ((g)localObject).b);
            if ((dd.j()) && (at.b(localContext1)))
            {
              if (((g)localObject).e != 256)
                break label438;
              i.a(localContext1, str1, str2.toString(), 12, "");
            }
          }
          while (true)
          {
            FirewallSmsTipDialog.a(localContext1, true);
            j = k;
            break;
            String str3 = com.ijinshan.kinghelper.a.i.a(str1);
            if (!dd.d())
            {
              localObject = null;
              break label232;
            }
            boolean bool1 = FirewallSettingsNightActivity.a(localContext1);
            localObject = a(bool1, localContext1, str3, str2, a(bool1), false);
            break label232;
            label438: if (((g)localObject).e == 3)
              i.a(localContext1, str1, str2.toString(), 13, "");
          }
          label464: j = i;
        }
      }
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    w localw = (w)paramObject1;
    int i = SmsFirewallBroadcastReceiver.a;
    int j;
    if (localw.e)
    {
      if (!dd.d())
        break label516;
      if (localw.h)
        j = a(localw);
    }
    while (true)
    {
      if (j == SmsFirewallBroadcastReceiver.b)
        localw.g.abortBroadcast();
      for (int k = 2; ; k = 0)
      {
        return k;
        j = SmsFirewallBroadcastReceiver.a;
        String str4 = localw.c;
        String str5 = localw.d;
        Context localContext2 = localw.a;
        boolean bool2 = FirewallSettingsNightActivity.a(localContext2);
        if ((df.a != dd.g()) && ((df.f != dd.g()) || (!dd.h(bool2))))
          break;
        g localg = new g();
        localg.i = 0;
        localg.g = localContext2.getString(2131427854);
        localg.h = localg.g;
        long l3 = com.ijinshan.kinghelper.firewall.a.a.a(str4, str5, localg);
        h.a(localContext2, l3);
        com.jxphone.mosecurity.a.a.i(localContext2, "bkwappush");
        j = SmsFirewallBroadcastReceiver.b;
        break;
        Context localContext1 = localw.a;
        String str1 = localw.c;
        String str2 = localw.d;
        long l1 = System.currentTimeMillis();
        dd.a(localContext1);
        Log.e("SmsRecvMonitor", "isBlockingSms=InterceptMode=" + dd.g());
        Object localObject;
        label265: int m;
        if (TextUtils.isEmpty(str1))
        {
          localObject = null;
          Log.e("SmsRecvMonitor", "receive isBlockingSms cost:" + (System.currentTimeMillis() - l1) + "ms");
          Log.e("SmsRecvMonitor", "receive a message,match rules:rule=" + localObject);
          if (localObject == null)
            break label516;
          m = SmsFirewallBroadcastReceiver.b;
          com.ijinshan.kinghelper.firewall.a.a.a(localContext1.getApplicationContext());
          long l2 = com.ijinshan.kinghelper.firewall.a.a.a(localw.f, (g)localObject);
          h.a(localContext1, l2);
          com.jxphone.mosecurity.a.a.a(localContext1, ((g)localObject).b);
          if ((dd.j()) && (at.b(localContext1)))
          {
            if (((g)localObject).e != 256)
              break label482;
            i.a(localContext1, str1, str2.toString(), 12, "");
          }
        }
        while (true)
        {
          FirewallSmsTipDialog.a(localContext1, true);
          j = m;
          break;
          String str3 = com.ijinshan.kinghelper.a.i.a(str1);
          if (!dd.d())
          {
            localObject = null;
            break label265;
          }
          boolean bool1 = FirewallSettingsNightActivity.a(localContext1);
          localObject = a(bool1, localContext1, str3, str2, a(bool1), false);
          break label265;
          label482: if (((g)localObject).e == 3)
            i.a(localContext1, str1, str2.toString(), 13, "");
        }
      }
      label516: j = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.x
 * JD-Core Version:    0.6.2
 */