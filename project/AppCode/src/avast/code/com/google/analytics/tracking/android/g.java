package com.google.analytics.tracking.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.c;

final class g
  implements ServiceConnection
{
  g(f paramf)
  {
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ay.b("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        ay.b("bound to service");
        f.a(this.a, c.a(paramIBinder));
        f.a(this.a);
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        f.b(this.a).unbindService(this);
        f.a(this.a, null);
        f.c(this.a).a(2, null);
      }
    }
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    ay.b("service disconnected: " + paramComponentName);
    f.a(this.a, null);
    f.d(this.a).b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.g
 * JD-Core Version:    0.6.2
 */