package com.keniu.security.protection;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;

public class ScreenLockService extends Service
{
  private static final int g = 1;
  private static final int h = 2;
  private u a = null;
  private a b = null;
  private y c;
  private int d;
  private boolean e;
  private boolean f = false;

  private void a()
  {
    if ((this.c != null) && (this.c.a()));
    try
    {
      this.c.a(false);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private void b()
  {
    if ((this.c != null) && (this.c.a()));
    try
    {
      this.c.a(true);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
  }

  public void onDestroy()
  {
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    if (paramIntent == null)
      return;
    this.d = paramIntent.getIntExtra("type", 1);
    this.e = paramIntent.getBooleanExtra("preview", false);
    String str = Build.MODEL;
    if ((str != null) && (str.equalsIgnoreCase("HTC A9188")));
    for (int i = 1; ; i = 0)
    {
      if (i == 0)
        break label148;
      bool = false;
      this.f = bool;
      this.a = new u(this, getApplicationContext());
      this.a.d();
      if (this.d == 2)
      {
        this.b = new a(getApplicationContext());
        this.b.a();
      }
      if (this.e)
        break;
      this.c = new y(this);
      break;
    }
    label148: e.b();
    if (e.d() >= 2);
    for (boolean bool = true; ; bool = false)
    {
      e.c();
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ScreenLockService
 * JD-Core Version:    0.6.2
 */