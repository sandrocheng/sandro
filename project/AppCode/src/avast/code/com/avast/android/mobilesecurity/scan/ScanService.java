package com.avast.android.mobilesecurity.scan;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.m;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class ScanService extends Service
{
  protected ArrayList a = new ArrayList();
  protected j b;
  private l c;

  protected abstract l a(Bundle paramBundle);

  public void a()
  {
    if (this.b == j.a)
      a(false);
    while (true)
    {
      return;
      if (this.c != null)
        this.c.cancel(true);
    }
  }

  void a(ScanProgress paramScanProgress)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((k)localIterator.next()).a(paramScanProgress);
  }

  void a(j paramj)
  {
    this.b = paramj;
  }

  public void a(k paramk)
  {
    if (paramk != null)
    {
      this.a.add(paramk);
      paramk.a(this.b.ordinal());
      if ((this.b == j.b) && (this.c != null))
        paramk.a(this.c.e);
    }
  }

  void a(boolean paramBoolean)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((k)localIterator.next()).a(paramBoolean);
  }

  public void b(Bundle paramBundle)
  {
    m.b("npe", "calling ScanService.startScan");
    if (this.c != null)
    {
      this.c.cancel(true);
      this.c = null;
    }
    if (this.b == j.a)
    {
      if (paramBundle == null)
        paramBundle = new Bundle();
      this.c = a(paramBundle);
      b.a(this.c, new Void[0]);
    }
  }

  public void b(k paramk)
  {
    if (paramk != null)
      this.a.remove(paramk);
  }

  public IBinder onBind(Intent paramIntent)
  {
    return new i(this);
  }

  public void onCreate()
  {
    super.onCreate();
    this.b = j.a;
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent.getBooleanExtra("startNow", false))
      b(paramIntent.getExtras());
    return 2;
  }

  public boolean onUnbind(Intent paramIntent)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.ScanService
 * JD-Core Version:    0.6.2
 */