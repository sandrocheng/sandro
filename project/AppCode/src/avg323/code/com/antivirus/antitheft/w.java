package com.antivirus.antitheft;

import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import com.antivirus.core.b;
import com.avg.toolkit.f.a;

public class w
{
  public static final Object a = new Object();
  public static final Object b = new Object();
  private static boolean m = true;
  private static boolean n = false;
  private final int c = 5000;
  private final int d = 0;
  private double e;
  private double f;
  private double g;
  private long h;
  private double i;
  private double j;
  private double k;
  private long l;

  private double a(double paramDouble)
  {
    if ((paramDouble < -90.0D) || (paramDouble > 90.0D))
      paramDouble = 0.0D;
    return paramDouble;
  }

  private static boolean a(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (localPackageManager == null)
      a.a("Can't get the PackageManager");
    for (boolean bool = false; ; bool = localPackageManager.hasSystemFeature("android.hardware.location.gps"))
      return bool;
  }

  private double b(double paramDouble)
  {
    if ((paramDouble < -180.0D) || (paramDouble > 180.0D))
      paramDouble = 0.0D;
    return paramDouble;
  }

  public static boolean b(Context paramContext, b paramb)
  {
    boolean bool;
    if (n)
      bool = paramb.l();
    while (true)
    {
      return bool;
      bool = a(paramContext);
      paramb.b(bool);
      n = true;
    }
  }

  public double a()
  {
    return a(this.e);
  }

  public void a(Context paramContext, b paramb)
  {
    LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
    if (localLocationManager == null);
    while (true)
    {
      return;
      if (b(paramContext, paramb));
      try
      {
        Location localLocation2 = localLocationManager.getLastKnownLocation("gps");
        if (localLocation2 != null)
        {
          this.f = localLocation2.getLongitude();
          this.e = localLocation2.getLatitude();
          if (!localLocation2.hasAccuracy())
            break label152;
        }
        label152: for (this.g = localLocation2.getAccuracy(); ; this.g = -1.0D)
        {
          while (true)
          {
            this.h = localLocation2.getTime();
            try
            {
              Location localLocation1 = localLocationManager.getLastKnownLocation("network");
              if (localLocation1 == null)
                break;
              this.j = localLocation1.getLongitude();
              this.i = localLocation1.getLatitude();
              if (!localLocation1.hasAccuracy())
                break label172;
              this.k = localLocation1.getAccuracy();
              this.l = localLocation1.getTime();
            }
            catch (Exception localException1)
            {
              a.a(localException1);
            }
          }
          break;
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          a.a(localException2);
          continue;
          label172: this.k = -1.0D;
        }
      }
    }
  }

  public void a(Context paramContext, b paramb, long paramLong)
  {
    LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
    if (localLocationManager == null)
      a.a("Null LocationManager");
    while (true)
    {
      return;
      if (b(paramContext, paramb));
      try
      {
        localLocationManager.requestLocationUpdates("gps", 5000L, 0.0F, new x(this, paramLong));
        try
        {
          localLocationManager.requestLocationUpdates("network", 5000L, 0.0F, new x(this, paramLong));
        }
        catch (Exception localException1)
        {
          a.a(localException1);
        }
      }
      catch (Exception localException2)
      {
        while (true)
          a.a(localException2);
      }
    }
  }

  public double b()
  {
    return b(this.f);
  }

  public double c()
  {
    return a(this.i);
  }

  public double d()
  {
    return b(this.j);
  }

  public double e()
  {
    return this.g;
  }

  public long f()
  {
    return this.h;
  }

  public double g()
  {
    return this.k;
  }

  public long h()
  {
    return this.l;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.w
 * JD-Core Version:    0.6.2
 */