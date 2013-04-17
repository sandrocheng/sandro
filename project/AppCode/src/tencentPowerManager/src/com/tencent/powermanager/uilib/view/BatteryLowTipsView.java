package com.tencent.powermanager.uilib.view;

import ab;
import ag;
import ah;
import android.content.Context;
import ap;
import aq;
import com.tencent.powermanager.PowerManagerApplication;
import dv;
import java.util.Random;
import r;
import s.a;
import y;

public class BatteryLowTipsView extends BaseBatteryTipsView
{
  private static BatteryLowTipsView b;
  private static int[] c = { 2131099805 };

  private BatteryLowTipsView(Context paramContext)
  {
    super(paramContext);
  }

  public static void f()
  {
    if (b == null)
      b = new BatteryLowTipsView(PowerManagerApplication.a());
    b.a();
    s.a.d().j(true);
  }

  protected final String b()
  {
    Random localRandom = new Random();
    return this.a.getString(c[localRandom.nextInt(c.length)]);
  }

  protected final int c()
  {
    if (dv.b());
    for (int i = 13; ; i = -1)
      return i;
  }

  protected final String d()
  {
    return this.a.getString(2131099806);
  }

  protected final void e()
  {
    r localr1 = s.a.d();
    y localy1 = s.a.e();
    localr1.b(localr1.c());
    localr1.b(localr1.b());
    Context localContext = this.a;
    y localy2 = s.a.e();
    ap localap = ap.a();
    r localr2 = s.a.d();
    if (aq.a().c())
      localy2.d(-1);
    while (true)
    {
      localy2.e(localr2.f());
      localy2.q(localap.b());
      localy2.r(localap.c());
      localy2.f(r.j());
      localy2.t(localr2.i());
      localy2.s(localr2.k());
      localy2.C();
      localy2.p(ah.a().d());
      localy1.o(true);
      new ag().a(PowerManagerApplication.a(), 2, null);
      ab.a(50026);
      return;
      localy2.d(aq.a().a(localContext.getContentResolver()));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BatteryLowTipsView
 * JD-Core Version:    0.6.2
 */