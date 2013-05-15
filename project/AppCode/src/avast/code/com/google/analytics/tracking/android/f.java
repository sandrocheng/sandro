package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.b;
import java.util.List;
import java.util.Map;

class f
  implements e
{
  private ServiceConnection a;
  private h b;
  private i c;
  private Context d;
  private b e;

  public f(Context paramContext, h paramh, i parami)
  {
    this.d = paramContext;
    this.b = paramh;
    this.c = parami;
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
        ay.c("clear hits failed: " + localRemoteException);
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
        ay.c("sendHit failed: " + localRemoteException);
    }
  }

  public void b()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.putExtra("app_package_name", this.d.getPackageName());
    if (this.a != null)
      ay.c("Calling connect() while still connected, missing disconnect().");
    while (true)
    {
      return;
      this.a = new g(this);
      boolean bool = this.d.bindService(localIntent, this.a, 129);
      ay.e("connect: bindService returned " + bool + " for " + localIntent);
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
    if (this.a != null)
    {
      this.d.unbindService(this.a);
      this.a = null;
      this.b.b();
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
 * Qualified Name:     com.google.analytics.tracking.android.f
 * JD-Core Version:    0.6.2
 */