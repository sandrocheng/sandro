package com.tencent.powermanager.service;

import a;
import ac;
import af;
import ai;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import bo;
import br;
import bs;
import com.tencent.powermanager.uilib.view.BatteryLowTipsView;
import java.util.ArrayList;
import java.util.List;
import r;
import s.a;

public class BatteryEventReceiver extends BroadcastReceiver
{
  public static int a;
  public static int b;
  public static boolean c;
  public static boolean d = false;
  private static List<a> f = new ArrayList();
  private static Intent g = null;
  private static int n = 1;
  private static int o = 2;
  private static Handler p = new bs();
  private String e = "BatteryEventReceiver";
  private boolean h = true;
  private long i = 0L;
  private int j = 0;
  private long k = 0L;
  private int l = 0;
  private boolean m = true;

  public static void a(a parama)
  {
    if (g != null)
      parama.a(g);
    try
    {
      if (!f.contains(parama))
        f.add(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void b(a parama)
  {
    try
    {
      if (f.contains(parama))
      {
        Message localMessage = new Message();
        localMessage.what = o;
        localMessage.obj = parama;
        p.sendMessageDelayed(localMessage, 20L);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i4;
    r localr;
    int i8;
    ai localai2;
    long l4;
    int i9;
    label252: ai localai1;
    label276: long l3;
    int i7;
    if (paramIntent.getAction().equals("android.intent.action.BATTERY_CHANGED"))
    {
      g = paramIntent;
      int i1 = paramIntent.getIntExtra("level", 0);
      int i2 = paramIntent.getIntExtra("scale", 100);
      int i3 = i1 * 100 / i2;
      a = i3;
      if (i3 > 100)
        a = 100;
      new StringBuilder("~~ACTION_BATTERY_CHANGED    ::   ").append(a).append("%").toString();
      i4 = paramIntent.getIntExtra("status", 1);
      localr = s.a.d();
      if (i4 != 2)
        break label543;
      if (!c)
      {
        c = true;
        this.h = true;
        i8 = paramIntent.getIntExtra("plugged", -1);
        if (i8 != 2)
          break label503;
        b = 1;
        paramIntent.putExtra("extra_charge_start", true);
        ac.a(paramContext);//mark init_saver_compent
        localr.x();
        localr.b(0L);
        if (ai.g == null)
          ai.g = new ai();
        localai2 = ai.g;
        l4 = System.currentTimeMillis();
        i9 = a;
        localai2.a = 0L;
        localai2.b = 0L;
        localai2.c = 0L;
        localai2.d = 0L;
        localai2.e = 0L;
        localai2.f = 0L;
        if (i9 >= 90)
          break label516;
        localai2.a = l4;
        br.a().a(new Intent("com.tencent.powermanager.levelrecorder"));
        bo.a().a(a);
      }
      if (c)
      {
        if (ai.g == null)
          ai.g = new ai();
        localai1 = ai.g;
        l3 = System.currentTimeMillis();
        i7 = a;
        if (i7 != 90)
          break label762;
        if (localai1.d == 0L)
          localai1.d = l3;
        if (localai1.b == 0L)
          localai1.b = l3;
      }
      label354: if (!c)
        break label894;
      this.m = true;
      this.l = 0;
      if (this.j != 0)
        break label806;
      this.j = a;
      this.i = System.currentTimeMillis();
    }
    label503: label762: label894: int i5;
    label516: label543: label806: 
    do
    {
      while (true)
      {
        if ((a <= 20) && (!c) && (localr.t()) && (!localr.v()) && (localr.c() != 2) && (localr.c() != 3))
          BatteryLowTipsView.f();
        if ((a > 20) && (localr.v()))
          localr.j(false);
        Message localMessage = new Message();
        localMessage.what = n;
        localMessage.obj = paramIntent;
        p.sendMessageDelayed(localMessage, 20L);
        af.b();
        return;
        if (i8 != 1)
          break;
        b = 2;
        break;
        if (i9 < 100)
        {
          localai2.b = l4;
          break label252;
        }
        localai2.c = l4;
        break label252;
        if (i4 == 5)
        {
          if (!c)
            break label276;
          c = false;
          localr.a(System.currentTimeMillis());
          localr.d(100);
          localr.i(100);
          if (ai.g == null)
            ai.g = new ai();
          ai.g.a(System.currentTimeMillis(), a);
          br.a().b(new Intent("com.tencent.powermanager.levelrecorder"));
          if (!localr.q())
            break label276;
          bo.a().d();
          bo.a().a(100);
          break label276;
        }
        if ((i4 != 4) && (i4 != 3))
          break label276;
        new StringBuilder("stop charge::").append(i4).toString();
        if (!c)
          break label276;
        c = false;
        localr.a(System.currentTimeMillis());
        localr.d(a);
        if (ai.g == null)
          ai.g = new ai();
        ai.g.a(System.currentTimeMillis(), a);
        br.a().b(new Intent("com.tencent.powermanager.levelrecorder"));
        break label276;
        if (i7 != 100)
          break label354;
        if (localai1.e == 0L)
          localai1.e = l3;
        if (localai1.c != 0L)
          break label354;
        localai1.c = l3;
        break label354;
        int i6 = a - this.j;
        if (i6 > 0)
        {
          long l2 = System.currentTimeMillis();
          if (this.h)
          {
            this.h = false;
            d = false;
          }
          while (true)
          {
            this.i = l2;
            this.j = a;
            break;
            if (d)
              d = false;
            else
              a.a((l2 - this.i) / i6, a, b);
          }
          this.j = 0;
          if (this.l != 0)
            break label923;
          this.l = a;
          this.k = System.currentTimeMillis();
        }
      }
      i5 = this.l - a;
    }
    while (i5 <= 0);
    label923: long l1 = System.currentTimeMillis();
    if (this.m)
    {
      this.m = false;
      d = false;
    }
    while (true)
    {
      this.k = l1;
      this.l = a;
      break;
      if (d)
        d = false;
      else
        localr.c((l1 - this.k) / i5);
    }
  }

  public static abstract interface a
  {
    public abstract void a(Intent paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.BatteryEventReceiver
 * JD-Core Version:    0.6.2
 */