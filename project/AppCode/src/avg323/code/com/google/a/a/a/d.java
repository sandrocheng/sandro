package com.google.a.a.a;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.b;
import java.util.List;
import java.util.Map;

class d
  implements c
{
  private ServiceConnection a;
  private f b;
  private g c;
  private Context d;
  private b e;

  public d(Context paramContext, f paramf, g paramg)
  {
    this.d = paramContext;
    if (paramf == null)
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    this.b = paramf;
    if (paramg == null)
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    this.c = paramg;
  }

  private b f()
  {
    d();
    return this.e;
  }

  private void g()
  {
    h();
  }

  private void h()
  {
    this.b.a();
  }

  public void a()
  {
    try
    {
      f().a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        aq.c("clear hits failed: " + localRemoteException);
    }
  }

  public void a(Map paramMap, long paramLong, String paramString, List paramList)
  {
    try
    {
      f().a(paramMap, paramLong, paramString, paramList);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        aq.c("sendHit failed: " + localRemoteException);
    }
  }

  public void b()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.putExtra("app_package_name", this.d.getPackageName());
    if (this.a != null)
      aq.c("Calling connect() while still connected, missing disconnect().");
    while (true)
    {
      return;
      this.a = new e(this);
      boolean bool = this.d.bindService(localIntent, this.a, 129);
      aq.e("connect: bindService returned " + bool + " for " + localIntent);
      if (!bool)
      {
        this.a = null;
        this.c.a(1, null);
      }
    }
  }

  public void c()
  {
    this.e = null;
    if (this.a != null);
    try
    {
      this.d.unbindService(this.a);
      label23: this.a = null;
      this.b.b();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label23;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label23;
    }
  }

  protected void d()
  {
    if (!e())
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
  }

  public boolean e()
  {
    if (this.e != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.d
 * JD-Core Version:    0.6.2
 */