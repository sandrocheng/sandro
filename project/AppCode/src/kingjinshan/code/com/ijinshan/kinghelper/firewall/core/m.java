package com.ijinshan.kinghelper.firewall.core;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Handler;
import android.os.ServiceManager;
import android.telephony.PhoneStateListener;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephony.Stub;
import com.ijinshan.kinghelper.firewall.FirewallSettingsNightActivity;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.dd;
import com.ijinshan.kinghelper.firewall.df;
import com.ijinshan.kinghelper.firewall.dg;
import com.jxphone.mosecurity.d.l;
import com.jxphone.mosecurity.logic.PhoneCallWarningDialog;
import java.io.PrintStream;

public final class m extends PhoneStateListener
{
  private static final int a = 3000;
  private static final String b = "FirewallTelephonyListener";
  private static final boolean c = true;
  private Context d;
  private ITelephony e;
  private long f = -1L;
  private long g = -1L;
  private boolean h = false;
  private String i;
  private Handler j = new Handler();
  private final com.jxphone.mosecurity.logic.a.g k;
  private boolean l = false;
  private AudioManager m;
  private boolean n = false;
  private int o = -1;

  public m(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
    this.e = ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
    this.k = com.jxphone.mosecurity.logic.h.b(paramContext);
    this.m = ((AudioManager)this.d.getSystemService("audio"));
  }

  private static com.ijinshan.kinghelper.firewall.a.g a(Context paramContext, String paramString)
  {
    dd.a(paramContext);
    String str = com.ijinshan.kinghelper.a.i.a(paramString);
    boolean bool = FirewallSettingsNightActivity.a(paramContext);
    Object localObject;
    if (!dd.d())
      localObject = null;
    while (true)
    {
      return localObject;
      if (bool)
      {
        if (dd.f() == dg.b)
        {
          e.a(paramContext);
          localObject = e.b(str, true);
          if (localObject != null)
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = true;
        }
        else if (dd.f() == dg.e)
        {
          e.a(paramContext);
          localObject = e.c(str, true);
          if (localObject != null)
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = true;
        }
        else if (dd.f() == dg.c)
        {
          e.a(paramContext);
          if (!e.a(str, true))
          {
            localObject = new com.ijinshan.kinghelper.firewall.a.g();
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).i = 0;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).d = 2;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).h = paramContext.getString(2131427595);
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).f = "";
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).e = 1;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).g = paramContext.getString(2131427595);
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).c = 2;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = true;
          }
          else
          {
            localObject = null;
          }
        }
        else if (dd.f() == dg.d)
        {
          e.a(paramContext);
          localObject = new com.ijinshan.kinghelper.firewall.a.g();
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).i = 0;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).d = 2;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).h = paramContext.getString(2131427596);
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).f = "";
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).e = 1;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).g = paramContext.getString(2131427596);
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).c = 2;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = true;
        }
        else if (dd.f() == dg.f)
        {
          if (e.a(str, true))
          {
            localObject = null;
            continue;
          }
          if (dd.d(bool))
          {
            e.a(paramContext);
            com.ijinshan.kinghelper.firewall.a.g localg2 = e.b(str, true);
            if (localg2 != null)
            {
              localg2.a = true;
              localObject = localg2;
              continue;
            }
          }
          if ((dd.f(bool)) && (!e.a(paramContext, str)))
          {
            localObject = new com.ijinshan.kinghelper.firewall.a.g();
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).i = 0;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).d = 2;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).h = paramContext.getString(2131427597);
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).f = "";
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).e = 1;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).g = paramContext.getString(2131427597);
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).c = 2;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = true;
            continue;
          }
          if ((TextUtils.isEmpty(str)) && (!l.d()))
          {
            if (!dd.i(bool))
              break label1107;
            localObject = new com.ijinshan.kinghelper.firewall.a.g();
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).i = 0;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).d = 2;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).h = paramContext.getString(2131427598);
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).f = "";
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).e = 1;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).g = paramContext.getString(2131427598);
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).c = 2;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = false;
            continue;
          }
          if (dd.c(bool))
          {
            e.a(paramContext);
            localObject = e.b(str, null, true);
            if (localObject != null)
              ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = true;
          }
        }
      }
      else if (dd.f() == dg.a)
      {
        e.a(paramContext);
        localObject = e.a(str, null, true);
        if (localObject != null)
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = true;
      }
      else if (dd.g() == df.b)
      {
        e.a(paramContext);
        localObject = e.b(str, true);
      }
      else if (dd.g() == df.e)
      {
        e.a(paramContext);
        localObject = e.c(str, true);
      }
      else if (dd.g() == df.c)
      {
        e.a(paramContext);
        if (!e.a(str, true))
        {
          localObject = new com.ijinshan.kinghelper.firewall.a.g();
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).i = 0;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).d = 2;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).h = paramContext.getString(2131427595);
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).f = "";
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).e = 1;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).g = paramContext.getString(2131427595);
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).c = 2;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = false;
        }
        else
        {
          localObject = null;
        }
      }
      else if (dd.g() == df.d)
      {
        e.a(paramContext);
        localObject = new com.ijinshan.kinghelper.firewall.a.g();
        ((com.ijinshan.kinghelper.firewall.a.g)localObject).i = 0;
        ((com.ijinshan.kinghelper.firewall.a.g)localObject).d = 2;
        ((com.ijinshan.kinghelper.firewall.a.g)localObject).h = paramContext.getString(2131427596);
        ((com.ijinshan.kinghelper.firewall.a.g)localObject).f = "";
        ((com.ijinshan.kinghelper.firewall.a.g)localObject).e = 1;
        ((com.ijinshan.kinghelper.firewall.a.g)localObject).g = paramContext.getString(2131427596);
        ((com.ijinshan.kinghelper.firewall.a.g)localObject).c = 2;
        ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = false;
      }
      else if (dd.g() == df.f)
      {
        if (e.a(str, true))
        {
          localObject = null;
        }
        else if (dd.d(bool))
        {
          e.a(paramContext);
          localg1 = e.b(str, true);
          if (localg1 != null)
            localObject = localg1;
        }
        else if ((dd.f(bool)) && (!e.a(paramContext, str)))
        {
          localObject = new com.ijinshan.kinghelper.firewall.a.g();
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).i = 0;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).d = 2;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).h = paramContext.getString(2131427597);
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).f = "";
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).e = 1;
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).g = paramContext.getString(2131427597);
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).c = 2;
        }
        else if ((TextUtils.isEmpty(str)) && (!l.d()))
        {
          if (dd.i(bool))
          {
            localObject = new com.ijinshan.kinghelper.firewall.a.g();
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).i = 0;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).d = 2;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).h = paramContext.getString(2131427598);
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).f = "";
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).e = 1;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).g = paramContext.getString(2131427598);
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).c = 2;
            ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = false;
          }
        }
        else if (dd.c(bool))
        {
          e.a(paramContext);
          localObject = e.b(str, null, true);
          if (localObject != null)
            continue;
        }
      }
      else
      {
        while (dd.g() != df.a)
        {
          com.ijinshan.kinghelper.firewall.a.g localg1;
          localObject = null;
          break;
        }
        e.a(paramContext);
        localObject = e.a(str, null, true);
        if (localObject != null)
        {
          ((com.ijinshan.kinghelper.firewall.a.g)localObject).a = true;
          continue;
          localObject = null;
          continue;
          label1107: localObject = null;
        }
      }
    }
  }

  private void a(String paramString)
  {
    if ((!e.a(paramString, 1)) && (!e.a(this.d, paramString)) && (!e.g(paramString)) && (!e.f(paramString)))
    {
      Intent localIntent = new Intent(this.d, PhoneCallWarningDialog.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("type", 1);
      localIntent.putExtra("number", paramString);
      this.d.startActivity(localIntent);
    }
  }

  private static void b()
  {
  }

  private void c()
  {
    try
    {
      this.e.endCall();
      this.e.cancelMissedCallsNotification();
      Log.e("FirewallTelephonyListener", "blockingCall>>");
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("FirewallTelephonyListener", "" + localException.getMessage(), localException);
    }
  }

  public final void a()
  {
    dd.a(this.d);
  }

  public final void onCallStateChanged(int paramInt, String paramString)
  {
    Log.e("FirewallTelephonyListener", "action=onCallStateChanged>STATE=" + paramInt + ",INCOMING_NUMBER=" + paramString + ",mOffHook=" + this.l);
    FirewallSettingsNightActivity.a(this.d);
    if (!dd.d());
    while (true)
    {
      return;
      e.a(this.d);
      switch (paramInt)
      {
      default:
        break;
      case 0:
        this.k.a(2);
        if ((this.h) && (TextUtils.isEmpty(paramString)))
        {
          if (!l.d())
            FirewallHideNumberTipDialog.a(this.d);
          this.h = false;
        }
        String str3;
        long l2;
        if (TextUtils.isEmpty(paramString))
        {
          str3 = this.i;
          this.i = null;
          if (!TextUtils.isEmpty(str3))
          {
            l2 = System.currentTimeMillis();
            if ((this.f > 0L) && (!this.l))
            {
              long l4 = l2 - this.f;
              this.f = -1L;
              Log.e("FirewallTelephonyListener", "响一声电话判断：" + l4);
              if ((l4 < 3000L) && (!e.a(this.d, str3)) && (!e.a(str3, 1)) && (!e.g(str3)))
              {
                com.ijinshan.kinghelper.firewall.a.g localg11 = new com.ijinshan.kinghelper.firewall.a.g();
                localg11.i = 0;
                localg11.h = this.d.getString(2131427599);
                localg11.g = this.d.getString(2131427599);
                com.ijinshan.kinghelper.firewall.a.a.a(this.d);
                com.ijinshan.kinghelper.firewall.a.a.a(str3, localg11);
                h.a(this.d, localg11);
                FirewallSmsTipDialog.a(this.d, false);
              }
            }
          }
        }
        try
        {
          this.e.cancelMissedCallsNotification();
          com.jxphone.mosecurity.a.a.a(this.d, "1");
          i.b(this.d, str3, "", 14, "");
          this.j.postDelayed(new o(this, str3), 2000L);
          String str4;
          if (this.g > 0L)
          {
            l3 = l2 - this.g;
            this.g = -1L;
            str4 = dd.s();
            System.out.println(str4);
          }
          switch (Integer.parseInt(str4))
          {
          default:
            this.l = false;
            continue;
            str3 = com.ijinshan.kinghelper.a.i.a(paramString);
          case 0:
          case 1:
          }
        }
        catch (Exception localException4)
        {
          while (true)
          {
            long l3;
            Log.e("FirewallTelephonyListener", "" + localException4.getMessage());
            continue;
            if (l3 < 15000L)
            {
              a(str3);
              continue;
              if (l3 < 30000L)
                a(str3);
            }
          }
        }
      case 2:
        this.g = System.currentTimeMillis();
        if (!TextUtils.isEmpty(paramString))
        {
          this.i = com.ijinshan.kinghelper.a.i.a(paramString);
          this.h = false;
        }
        this.l = true;
        break;
      case 1:
        this.k.a(0, 2);
        this.i = com.ijinshan.kinghelper.a.i.a(paramString);
        if (TextUtils.isEmpty(paramString))
          this.h = true;
        try
        {
          l1 = System.currentTimeMillis();
          localContext = this.d;
          String str1 = this.i;
          dd.a(localContext);
          str2 = com.ijinshan.kinghelper.a.i.a(str1);
          bool = FirewallSettingsNightActivity.a(localContext);
          if (dd.d())
            if (bool)
              if (dd.f() == dg.b)
              {
                e.a(localContext);
                localObject2 = e.b(str2, true);
                if (localObject2 != null)
                  ((com.ijinshan.kinghelper.firewall.a.g)localObject2).a = true;
              }
        }
        catch (Exception localException1)
        {
          while (true)
          {
            try
            {
              while (true)
              {
                long l1;
                Context localContext;
                String str2;
                boolean bool;
                Log.e("FirewallTelephonyListener", "onCallStateChanged>>isblockingcall cost:" + (System.currentTimeMillis() - l1) + "ms,rule=" + localObject2);
                localObject1 = localObject2;
                label751: if (localObject1 == null)
                  break label2166;
                if (this.m == null)
                  this.m = ((AudioManager)this.d.getSystemService("audio"));
                if (this.m != null)
                {
                  this.o = this.m.getRingerMode();
                  if (this.o != -1)
                    this.n = true;
                  this.m.setRingerMode(0);
                }
                try
                {
                  this.e.endCall();
                  this.e.cancelMissedCallsNotification();
                  Log.e("FirewallTelephonyListener", "blockingCall>>");
                  if ((this.n) && (this.m != null))
                  {
                    if (this.o != -1)
                      this.m.setRingerMode(this.o);
                    this.n = false;
                  }
                  this.k.a(2);
                  com.ijinshan.kinghelper.firewall.a.a.a(this.d);
                  if (com.ijinshan.kinghelper.firewall.a.a.a(this.i, localObject1) > 0L)
                    this.j.postDelayed(new o(this, paramString), 1000L);
                  h.a(this.d, localObject1);
                  FirewallSmsTipDialog.a(this.d, false);
                  if (localObject1.e != 1)
                    break;
                  if (localObject1.i > 0)
                  {
                    com.jxphone.mosecurity.a.a.a(this.d, "4");
                    break;
                    this.h = false;
                    continue;
                    if (dd.f() == dg.e)
                    {
                      e.a(localContext);
                      localObject2 = e.c(str2, true);
                      if (localObject2 == null)
                        continue;
                      ((com.ijinshan.kinghelper.firewall.a.g)localObject2).a = true;
                      continue;
                      localException1 = localException1;
                      localObject1 = null;
                      Log.e("FirewallTelephonyListener", localException1.getMessage(), localException1);
                      break label751;
                    }
                    if (dd.f() == dg.c)
                    {
                      e.a(localContext);
                      if (e.a(str2, true))
                        break label2254;
                      com.ijinshan.kinghelper.firewall.a.g localg10 = new com.ijinshan.kinghelper.firewall.a.g();
                      localg10.i = 0;
                      localg10.d = 2;
                      localg10.h = localContext.getString(2131427595);
                      localg10.f = "";
                      localg10.e = 1;
                      localg10.g = localContext.getString(2131427595);
                      localg10.c = 2;
                      localg10.a = true;
                      localObject2 = localg10;
                      continue;
                    }
                    if (dd.f() == dg.d)
                    {
                      e.a(localContext);
                      com.ijinshan.kinghelper.firewall.a.g localg9 = new com.ijinshan.kinghelper.firewall.a.g();
                      localg9.i = 0;
                      localg9.d = 2;
                      localg9.h = localContext.getString(2131427596);
                      localg9.f = "";
                      localg9.e = 1;
                      localg9.g = localContext.getString(2131427596);
                      localg9.c = 2;
                      localg9.a = true;
                      localObject2 = localg9;
                      continue;
                    }
                    if ((dd.f() != dg.f) || (e.a(str2, true)))
                      break label2266;
                    if (dd.d(bool))
                    {
                      e.a(localContext);
                      com.ijinshan.kinghelper.firewall.a.g localg8 = e.b(str2, true);
                      if (localg8 != null)
                      {
                        localg8.a = true;
                        localObject2 = localg8;
                        continue;
                      }
                    }
                    if ((dd.f(bool)) && (!e.a(localContext, str2)))
                    {
                      com.ijinshan.kinghelper.firewall.a.g localg7 = new com.ijinshan.kinghelper.firewall.a.g();
                      localg7.i = 0;
                      localg7.d = 2;
                      localg7.h = localContext.getString(2131427597);
                      localg7.f = "";
                      localg7.e = 1;
                      localg7.g = localContext.getString(2131427597);
                      localg7.c = 2;
                      localg7.a = true;
                      localObject2 = localg7;
                      continue;
                    }
                    if ((TextUtils.isEmpty(str2)) && (!l.d()))
                    {
                      if (!dd.i(bool))
                        break label2248;
                      com.ijinshan.kinghelper.firewall.a.g localg6 = new com.ijinshan.kinghelper.firewall.a.g();
                      localg6.i = 0;
                      localg6.d = 2;
                      localg6.h = localContext.getString(2131427598);
                      localg6.f = "";
                      localg6.e = 1;
                      localg6.g = localContext.getString(2131427598);
                      localg6.c = 2;
                      localg6.a = false;
                      localObject2 = localg6;
                      continue;
                    }
                    if (!dd.c(bool))
                      break label2266;
                    e.a(localContext);
                    localObject2 = e.b(str2, null, true);
                    if (localObject2 == null)
                      break label2266;
                    ((com.ijinshan.kinghelper.firewall.a.g)localObject2).a = true;
                    continue;
                    if (dd.f() == dg.a)
                    {
                      e.a(localContext);
                      localObject2 = e.a(str2, null, true);
                      if (localObject2 == null)
                        continue;
                      ((com.ijinshan.kinghelper.firewall.a.g)localObject2).a = true;
                      continue;
                    }
                    if (dd.g() == df.b)
                    {
                      e.a(localContext);
                      localObject2 = e.b(str2, true);
                      continue;
                    }
                    if (dd.g() == df.e)
                    {
                      e.a(localContext);
                      localObject2 = e.c(str2, true);
                      continue;
                    }
                    if (dd.g() == df.c)
                    {
                      e.a(localContext);
                      if (e.a(str2, true))
                        break label2260;
                      com.ijinshan.kinghelper.firewall.a.g localg5 = new com.ijinshan.kinghelper.firewall.a.g();
                      localg5.i = 0;
                      localg5.d = 2;
                      localg5.h = localContext.getString(2131427595);
                      localg5.f = "";
                      localg5.e = 1;
                      localg5.g = localContext.getString(2131427595);
                      localg5.c = 2;
                      localg5.a = false;
                      localObject2 = localg5;
                      continue;
                    }
                    if (dd.g() == df.d)
                    {
                      e.a(localContext);
                      com.ijinshan.kinghelper.firewall.a.g localg4 = new com.ijinshan.kinghelper.firewall.a.g();
                      localg4.i = 0;
                      localg4.d = 2;
                      localg4.h = localContext.getString(2131427596);
                      localg4.f = "";
                      localg4.e = 1;
                      localg4.g = localContext.getString(2131427596);
                      localg4.c = 2;
                      localg4.a = false;
                      localObject2 = localg4;
                      continue;
                    }
                    if (dd.g() == df.f)
                    {
                      if (e.a(str2, true))
                        break label2266;
                      if (dd.d(bool))
                      {
                        e.a(localContext);
                        com.ijinshan.kinghelper.firewall.a.g localg3 = e.b(str2, true);
                        if (localg3 != null)
                        {
                          localObject2 = localg3;
                          continue;
                        }
                      }
                      if ((dd.f(bool)) && (!e.a(localContext, str2)))
                      {
                        com.ijinshan.kinghelper.firewall.a.g localg2 = new com.ijinshan.kinghelper.firewall.a.g();
                        localg2.i = 0;
                        localg2.d = 2;
                        localg2.h = localContext.getString(2131427597);
                        localg2.f = "";
                        localg2.e = 1;
                        localg2.g = localContext.getString(2131427597);
                        localg2.c = 2;
                        localObject2 = localg2;
                        continue;
                      }
                      if ((TextUtils.isEmpty(str2)) && (!l.d()))
                      {
                        if (!dd.i(bool))
                          break label2242;
                        com.ijinshan.kinghelper.firewall.a.g localg1 = new com.ijinshan.kinghelper.firewall.a.g();
                        localg1.i = 0;
                        localg1.d = 2;
                        localg1.h = localContext.getString(2131427598);
                        localg1.f = "";
                        localg1.e = 1;
                        localg1.g = localContext.getString(2131427598);
                        localg1.c = 2;
                        localg1.a = false;
                        localObject2 = localg1;
                        continue;
                      }
                      if (!dd.c(bool))
                        break label2266;
                      e.a(localContext);
                      localObject2 = e.b(str2, null, true);
                      if (localObject2 != null)
                        continue;
                      break label2266;
                    }
                    if (dd.g() != df.a)
                      break label2266;
                    e.a(localContext);
                    localObject2 = e.a(str2, null, true);
                    if (localObject2 == null)
                      continue;
                    ((com.ijinshan.kinghelper.firewall.a.g)localObject2).a = true;
                  }
                }
                catch (Exception localException3)
                {
                  while (true)
                    Log.e("FirewallTelephonyListener", "" + localException3.getMessage(), localException3);
                }
              }
              if (localObject1.i >= 0)
                break;
              com.jxphone.mosecurity.a.a.a(this.d, "3");
              break;
              label2166: if ((!e.a(this.i, 1)) && (!e.a(this.d, this.i)))
              {
                this.f = System.currentTimeMillis();
                this.j.postDelayed(new n(this), 3000L);
                break;
              }
              this.k.a(2);
            }
            catch (Exception localException2)
            {
              Object localObject1 = localObject2;
              continue;
              label2242: localObject2 = null;
            }
            continue;
            label2248: Object localObject2 = null;
            continue;
            label2254: localObject2 = null;
            continue;
            label2260: localObject2 = null;
            continue;
            label2266: localObject2 = null;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.m
 * JD-Core Version:    0.6.2
 */