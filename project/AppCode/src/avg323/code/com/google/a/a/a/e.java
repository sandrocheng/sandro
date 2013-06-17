package com.google.a.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.c;

final class e
  implements ServiceConnection
{
  e(d paramd)
  {
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aq.b("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        aq.b("bound to service");
        d.a(this.a, c.a(paramIBinder));
        d.a(this.a);
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        d.b(this.a).unbindService(this);
        d.a(this.a, null);
        d.c(this.a).a(2, null);
      }
    }
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    aq.b("service disconnected: " + paramComponentName);
    d.a(this.a, null);
    d.d(this.a).b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.e
 * JD-Core Version:    0.6.2
 */