import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;

public final class ag
{
  public final r a = s.a.d();
  public final ap b = ap.a();
  public y c = s.a.e();

  public final void a(Context paramContext, int paramInt, bf parambf)
  {
    int i = 1;
    if ((paramInt != i) && (this.a.c() == i))
    {
      y localy6 = s.a.e();
      ap localap5 = ap.a();
      r localr6 = s.a.d();
      localy6.h(localap5.b());
      localy6.i(localap5.c());
      localy6.k(localr6.i());
      localy6.j(localr6.k());
    }
    if ((paramInt != 2) && (this.a.c() == 2))
    {
      y localy5 = s.a.e();
      ap localap4 = ap.a();
      r localr5 = s.a.d();
      localy5.l(localap4.c());
      localy5.m(localr5.k());
    }
    if ((paramInt != 3) && (this.a.c() == 3))
      s.a.e().n(s.a.d().k());
    int i10;
    label324: label337: Intent localIntent5;
    int i12;
    label359: int i13;
    switch (paramInt)
    {
    default:
      if (parambf != null)
      {
        if (parambf.c > 0)
          break label1593;
        aq.a().e();
        this.a.c(parambf.d);
        this.b.a(parambf.f);
        this.b.b(parambf.g);
        String[] arrayOfString4 = paramContext.getResources().getStringArray(2130968576);
        r.e(Integer.parseInt(arrayOfString4[parambf.e]));
        this.a.b(parambf.k);
        this.a.c(parambf.j);
        r.d(parambf.i);
        if (parambf.l != 2)
          break label1613;
        this.a.a(i);
        i10 = i;
        if (!parambf.h)
          break label1627;
        ah.a().c();
        localIntent5 = new Intent("action.mode.status.changed");
        if (!parambf.f)
          break label1636;
        i12 = i;
        localIntent5.putExtra("extra_wifi_status", i12);
        if (!parambf.g)
          break label1642;
        i13 = i;
        label380: localIntent5.putExtra("extra_gprs_status", i13);
        if (!parambf.j)
          break label1648;
      }
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      localIntent5.putExtra("extra_vibrate", i);
      localIntent5.putExtra("extra_flight_status", i10);
      localIntent5.putExtra("extra_screen_light", parambf.c);
      paramContext.sendBroadcast(localIntent5);
      String str = parambf.b;
      ab.a(50005);
      this.a.a(paramInt);
      this.a.a(str);
      p.c(paramContext, paramContext.getString(2131099670) + str);
      af.b();
      double d = af.a().c();
      bo.a().a(d);
      return;
      aq.a().e();
      this.a.c(30000);
      String[] arrayOfString3 = paramContext.getResources().getStringArray(2130968576);
      r.e(Integer.parseInt(arrayOfString3[i]));
      r.d(false);
      ah.a().b();
      y localy4 = s.a.e();
      ap localap3 = ap.a();
      r localr4 = s.a.d();
      if (localy4.n() >= 0)
      {
        if (localy4.n() > 0)
        {
          int i8 = i;
          label604: localap3.a(i8);
        }
      }
      else
      {
        if (localy4.o() >= 0)
        {
          if (localy4.o() <= 0)
            break label794;
          int i6 = i;
          label632: localap3.b(i6);
        }
        if (localy4.q() >= 0)
        {
          if (localy4.q() <= 0)
            break label800;
          int i4 = i;
          label660: localr4.b(i4);
        }
        if (localy4.p() >= 0)
          if (localy4.p() <= 0)
            break label806;
      }
      while (true)
      {
        localr4.c(i);
        this.a.a(false);
        Intent localIntent4 = new Intent("action.mode.status.changed");
        localIntent4.putExtra("extra_wifi_status", s.a.e().n());
        localIntent4.putExtra("extra_gprs_status", s.a.e().o());
        localIntent4.putExtra("extra_vibrate", s.a.e().p());
        localIntent4.putExtra("extra_flight_status", false);
        localIntent4.putExtra("extra_screen_light", -1);
        paramContext.sendBroadcast(localIntent4);
        str = s.b;
        ab.a(50002);
        break;
        int i9 = 0;
        break label604;
        label794: int i7 = 0;
        break label632;
        label800: int i5 = 0;
        break label660;
        label806: i = 0;
      }
      aq.a().d();
      aq.a().a(25, paramContext);
      this.a.c(15000);
      this.b.a(false);
      String[] arrayOfString2 = paramContext.getResources().getStringArray(2130968576);
      r.e(Integer.parseInt(arrayOfString2[0]));
      this.a.b(false);
      r.d(false);
      ah.a().b();
      y localy3 = s.a.e();
      ap localap2 = ap.a();
      r localr3 = s.a.d();
      if (localy3.r() >= 0)
      {
        if (localy3.r() > 0)
        {
          int i2 = i;
          label930: localap2.b(i2);
        }
      }
      else if (localy3.t() >= 0)
        if (localy3.t() <= 0)
          break label1062;
      while (true)
      {
        localr3.c(i);
        this.a.a(false);
        Intent localIntent3 = new Intent("action.mode.status.changed");
        localIntent3.putExtra("extra_wifi_status", 0);
        localIntent3.putExtra("extra_gprs_status", s.a.e().r());
        localIntent3.putExtra("extra_vibrate", s.a.e().t());
        localIntent3.putExtra("extra_flight_status", false);
        localIntent3.putExtra("extra_screen_light", 25);
        paramContext.sendBroadcast(localIntent3);
        str = s.c;
        ab.a(50003);
        break;
        int i3 = 0;
        break label930;
        label1062: i = 0;
      }
      aq.a().d();
      aq.a().a(25, paramContext);
      this.a.c(15000);
      this.b.a(false);
      this.b.b(false);
      String[] arrayOfString1 = paramContext.getResources().getStringArray(2130968576);
      r.e(Integer.parseInt(arrayOfString1[0]));
      this.a.b(false);
      r.d(false);
      ah.a().b();
      y localy2 = s.a.e();
      r localr2 = s.a.d();
      if (localy2.t() >= 0)
        if (localy2.s() <= 0)
          break label1289;
      label1289: int i1;
      for (int n = i; ; i1 = 0)
      {
        localr2.c(n);
        this.a.a(i);
        Intent localIntent2 = new Intent("action.mode.status.changed");
        localIntent2.putExtra("extra_wifi_status", 0);
        localIntent2.putExtra("extra_gprs_status", 0);
        localIntent2.putExtra("extra_flight_status", i);
        localIntent2.putExtra("extra_vibrate", s.a.e().s());
        localIntent2.putExtra("extra_screen_light", 25);
        paramContext.sendBroadcast(localIntent2);
        str = s.d;
        ab.a(50004);
        break;
      }
      y localy1 = s.a.e();
      ap localap1 = ap.a();
      r localr1 = s.a.d();
      int j = localy1.e();
      label1329: boolean bool;
      label1424: Intent localIntent1;
      int k;
      label1461: int m;
      if (j == -1)
      {
        aq.a().e();
        localr1.c(localy1.f());
        localap1.a(localy1.c());
        localap1.b(localy1.d());
        r.e(Integer.parseInt(paramContext.getResources().getStringArray(2130968576)[localy1.g()]));
        localr1.b(localy1.j());
        localr1.c(localy1.h());
        r.d(localy1.i());
        if (!localy1.b())
          break label1566;
        ah.a().c();
        bool = localy1.m();
        localr1.a(bool);
        localIntent1 = new Intent("action.mode.status.changed");
        if (!localy1.c())
          break label1575;
        k = i;
        localIntent1.putExtra("extra_wifi_status", k);
        if (!localy1.d())
          break label1581;
        m = i;
        label1483: localIntent1.putExtra("extra_gprs_status", m);
        if (!localy1.h())
          break label1587;
      }
      while (true)
      {
        localIntent1.putExtra("extra_vibrate", i);
        localIntent1.putExtra("extra_flight_status", bool);
        localIntent1.putExtra("extra_screen_light", localy1.e());
        paramContext.sendBroadcast(localIntent1);
        str = s.a;
        break;
        aq.a().d();
        aq.a().a(j, paramContext);
        break label1329;
        label1566: ah.a().b();
        break label1424;
        label1575: k = 0;
        break label1461;
        label1581: m = 0;
        break label1483;
        label1587: i = 0;
      }
      label1593: aq.a().d();
      aq.a().a(parambf.c, paramContext);
      break;
      label1613: this.a.a(false);
      int i11 = 0;
      break label324;
      label1627: ah.a().b();
      break label337;
      label1636: i12 = 0;
      break label359;
      label1642: i13 = 0;
      break label380;
      label1648: i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ag
 * JD-Core Version:    0.6.2
 */