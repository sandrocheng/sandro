package org.antivirus.antitheft;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.text.TextUtils;
import org.antivirus.AvApplication;
import org.antivirus.core.Logger;

public final class v
  implements LocationListener
{
  private long b = System.currentTimeMillis();
  private long c = 300000L;

  public v(u paramu, long paramLong)
  {
    if (paramLong > 0L)
      this.c = paramLong;
  }

  public final void onLocationChanged(Location paramLocation)
  {
    if (paramLocation == null)
      Logger.error("Null location");
    while (true)
    {
      return;
      if ((TextUtils.isEmpty(paramLocation.getProvider())) || (paramLocation.getProvider().equals("gps")))
        synchronized (u.a)
        {
          u.a(this.a, paramLocation.getLatitude());
          u.b(this.a, paramLocation.getLongitude());
          if (paramLocation.hasAccuracy())
          {
            u.c(this.a, paramLocation.getAccuracy());
            label84: u.a(this.a, paramLocation.getTime());
            label99: if (System.currentTimeMillis() - this.b <= this.c)
              continue;
          }
        }
      try
      {
        AvApplication localAvApplication2 = AvApplication.getInstance();
        localAvApplication1 = localAvApplication2;
        if (localAvApplication1 == null)
          continue;
        ((LocationManager)localAvApplication1.getSystemService("location")).removeUpdates(this);
        u.i();
        continue;
        u.c(this.a, -1.0D);
        break label84;
        localObject4 = finally;
        throw localObject4;
        if (!paramLocation.getProvider().equals("network"))
          break label99;
        while (true)
        {
          synchronized (u.b)
          {
            u.d(this.a, paramLocation.getLatitude());
            u.e(this.a, paramLocation.getLongitude());
            if (paramLocation.hasAccuracy())
            {
              u.f(this.a, paramLocation.getAccuracy());
              u.b(this.a, paramLocation.getTime());
            }
          }
          u.f(this.a, -1.0D);
        }
      }
      catch (Exception localException)
      {
        while (true)
          AvApplication localAvApplication1 = null;
      }
    }
  }

  public final void onProviderDisabled(String paramString)
  {
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.v
 * JD-Core Version:    0.6.2
 */