package com.keniu.security.protection;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;

final class o
  implements LocationListener
{
  private String b;

  public o(l paraml, String paramString)
  {
    this.b = paramString;
  }

  public final void onLocationChanged(Location paramLocation)
  {
    Log.d("LocationInfoManager", this.b + " onLocationChanged");
    try
    {
      if ("TUBA".equals(this.b))
        this.a.a(paramLocation);
      while (true)
      {
        Log.d("LocationInfoManager", this.b + " reportLocation done!");
        break;
        if ("ANDROID".equals(this.b))
        {
          l.f(this.a).removeUpdates(this.a.b);
          this.a.b(paramLocation);
        }
      }
    }
    catch (Exception localException)
    {
      Log.d("LocationInfoManager", this.b + " reportLocation failed!");
      localException.printStackTrace();
    }
  }

  public final void onProviderDisabled(String paramString)
  {
    Log.d("LocationInfoManager", this.b + " onProviderDisabled");
  }

  public final void onProviderEnabled(String paramString)
  {
    Log.d("LocationInfoManager", this.b + " onProviderEnabled");
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    Log.d("LocationInfoManager", this.b + " onStatusChanged");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.o
 * JD-Core Version:    0.6.2
 */