package com.tencent.lbsapi.core;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

class f
  implements LocationListener
{
  f(QLBSEngine paramQLBSEngine)
  {
  }

  public void onLocationChanged(Location paramLocation)
  {
    if (paramLocation != null)
      QLBSEngine.b(this.a, paramLocation);
  }

  public void onProviderDisabled(String paramString)
  {
  }

  public void onProviderEnabled(String paramString)
  {
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.f
 * JD-Core Version:    0.6.2
 */