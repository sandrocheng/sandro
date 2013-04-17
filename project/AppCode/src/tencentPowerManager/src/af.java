import android.content.Context;
import com.android.internal.os.PowerProfile;
import com.tencent.powermanager.PowerManagerApplication;
import com.tencent.powermanager.service.BatteryEventReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class af
{
  private static af b;
  private static List<bx> c = new ArrayList();
  private PowerProfile a;
  private double d;

  private af(Context paramContext)
  {
    this.a = new PowerProfile(paramContext);
  }

  private double a(double paramDouble)
  {
    int i;
    double d3;
    if ((this.a.getAveragePower("battery.capacity") > 100.0D) && (this.a.getAveragePower("cpu.active") > 10.0D))
    {
      i = 1;
      if (i == 0)
        break label270;
      double d2 = this.a.getAveragePower("none");
      d3 = this.a.getAveragePower("cpu.active");
      int j = an.a().f();
      if (j > 1)
        d3 /= (j - 1);
      if (d3 >= 85.0D)
        break label253;
      d3 = 85.0D;
      label98: double d4 = d2 + d3 / 2.200000047683716D + this.a.getAveragePower("screen.full") * aq.a().f() / 100.0D / 8.0D;
      double d5 = 0.0D;
      if (ap.a().b())
        d5 = 0.0D + this.a.getAveragePower("wifi.active") / 24.0D;
      if (ap.a().c())
        d5 += 10.0D;
      if (ah.a().d())
        d5 += this.a.getAveragePower("bluetooth.active") / 4.0D;
      double d6 = d5 + d4;
      d1 = paramDouble * (this.a.getAveragePower("battery.capacity") / d6);
      if (d1 <= 50.0D);
    }
    label270: for (double d1 = 50.0D; ; d1 = 36.700000000000003D * paramDouble)
    {
      return d1;
      i = 0;
      break;
      label253: if (d3 <= 125.0D)
        break label98;
      d3 = 125.0D;
      break label98;
    }
  }

  public static af a()
  {
    try
    {
      if (b == null)
        b = new af(PowerManagerApplication.a());
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(bx parambx)
  {
    try
    {
      c.add(parambx);
      parambx.a(a().c());
      return;
    }
    finally
    {
    }
  }

  public static void b()
  {
    double d1 = a().c();
    if (a().d != d1)
      synchronized (c)
      {
        Iterator localIterator = c.iterator();
        if (localIterator.hasNext())
          ((bx)localIterator.next()).a(d1);
      }
    a().d = d1;
  }

  public static boolean b(bx parambx)
  {
    synchronized (c)
    {
      if (c.contains(parambx))
      {
        bool = c.remove(parambx);
        return bool;
      }
      boolean bool = true;
    }
  }

  public final double c()
  {
    r localr = s.a.d();
    double d1 = localr.h();
    if (BatteryEventReceiver.a < 15)
      d1 *= 0.5D;
    if (localr.y() < 10);
    for (double d2 = a(d1) * BatteryEventReceiver.a / 100.0D; ; d2 = 0.7D * (d1 * (localr.z() / 3600000L * BatteryEventReceiver.a)) + 0.7D * a(d1) * BatteryEventReceiver.a / 100.0D)
    {
      if (d2 > 100.0D)
        d2 = 100.0D;
      return d2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     af
 * JD-Core Version:    0.6.2
 */