package org.antivirus.antitheft;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.compatibility.AndroidVersionCompatibility;
import org.antivirus.core.compatibility.EclairTools;

public final class u
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

  private static double a(double paramDouble)
  {
    if ((paramDouble < -90.0D) || (paramDouble > 90.0D))
      paramDouble = 0.0D;
    return paramDouble;
  }

  private static double b(double paramDouble)
  {
    if ((paramDouble < -180.0D) || (paramDouble > 180.0D))
      paramDouble = 0.0D;
    return paramDouble;
  }

  public static boolean b(Context paramContext, EngineSettings paramEngineSettings)
  {
    if (n)
    {
      bool = paramEngineSettings.getGpsInDevice();
      return bool;
    }
    if (AndroidVersionCompatibility.isEclairOrAbove());
    for (boolean bool = EclairTools.isGpsInDevice(paramContext); ; bool = false)
    {
      paramEngineSettings.setGpsInDevice(bool);
      n = true;
      break;
    }
  }

  public final double a()
  {
    return a(this.e);
  }

  public final void a(Context paramContext, EngineSettings paramEngineSettings)
  {
    LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
    if (localLocationManager == null);
    while (true)
    {
      return;
      if (b(paramContext, paramEngineSettings));
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
              Logger.log(localException1);
            }
          }
          break;
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          Logger.log(localException2);
          continue;
          label172: this.k = -1.0D;
        }
      }
    }
  }

  public final void a(Context paramContext, EngineSettings paramEngineSettings, long paramLong)
  {
    LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
    if (localLocationManager == null)
      Logger.error("Null LocationManager");
    while (true)
    {
      return;
      if (b(paramContext, paramEngineSettings));
      try
      {
        localLocationManager.requestLocationUpdates("gps", 5000L, 0.0F, new v(this, paramLong));
        try
        {
          localLocationManager.requestLocationUpdates("network", 5000L, 0.0F, new v(this, paramLong));
        }
        catch (Exception localException1)
        {
          Logger.log(localException1);
        }
      }
      catch (Exception localException2)
      {
        while (true)
          Logger.log(localException2);
      }
    }
  }

  public final double b()
  {
    return b(this.f);
  }

  public final double c()
  {
    return a(this.i);
  }

  public final double d()
  {
    return b(this.j);
  }

  public final double e()
  {
    return this.g;
  }

  public final long f()
  {
    return this.h;
  }

  public final double g()
  {
    return this.k;
  }

  public final long h()
  {
    return this.l;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.u
 * JD-Core Version:    0.6.2
 */