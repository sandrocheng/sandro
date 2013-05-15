package com.avast.android.mobilesecurity.scan;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.avast.android.generic.ad;
import com.avast.android.generic.notification.AvastPendingIntent;
import com.avast.android.generic.notification.s;

public abstract class l extends AsyncTask
{
  protected ScanService d;
  protected ScanProgress e;
  protected com.avast.android.generic.notification.a f;
  protected com.avast.android.generic.notification.j g;
  protected Bundle h;
  protected long i;
  protected long j;
  protected Handler k;
  protected HandlerThread l;
  protected Handler m;

  public l(ScanService paramScanService, Bundle paramBundle)
  {
    this.d = paramScanService;
    this.g = ((com.avast.android.generic.notification.j)ad.a(paramScanService, com.avast.android.generic.notification.j.class));
    this.e = new ScanProgress("", "", 100);
    this.h = paramBundle;
    this.k = new Handler();
    this.l = new HandlerThread("scanProgress");
    this.l.start();
    this.m = new Handler(this.l.getLooper());
  }

  protected abstract int a();

  protected void a(Boolean paramBoolean)
  {
    this.l.getLooper().quit();
    this.d.a(j.a);
    this.d.a(paramBoolean.booleanValue());
    if (e())
      this.g.b(this.d, this.f);
  }

  protected void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    synchronized (this.e)
    {
      a locala = new a(this.e);
      locala.a = paramBoolean1;
      locala.b = paramBoolean2;
      this.e.l = Math.round(100.0F * (this.e.e / this.e.d));
      publishProgress(new a[] { locala });
      return;
    }
  }

  protected void a(a[] paramArrayOfa)
  {
    if ((paramArrayOfa != null) && (paramArrayOfa.length > 0))
    {
      a locala = paramArrayOfa[0];
      ScanProgress localScanProgress = locala.a();
      long l1 = System.currentTimeMillis();
      if ((l1 - this.j > locala.c) || (locala.a))
      {
        this.d.a(localScanProgress);
        this.j = l1;
      }
      int n = Math.round(100.0F * (localScanProgress.e / localScanProgress.d));
      if ((e()) && (((l1 - this.i > locala.d) && (localScanProgress.l != n)) || (locala.b)))
      {
        this.i = l1;
        this.f.b = localScanProgress.d;
        this.f.c = localScanProgress.e;
        this.f.a(localScanProgress.a, localScanProgress.b);
        com.avast.android.generic.notification.a locala1 = this.f;
        locala1.f = (0x8 | locala1.f);
        this.g.a(this.f);
      }
    }
  }

  protected abstract Intent b();

  protected abstract String c();

  protected abstract String d();

  protected boolean e()
  {
    return true;
  }

  protected void i()
  {
    a(false, false);
  }

  protected void onCancelled()
  {
    super.onCancelled();
    this.l.getLooper().quit();
    this.d.a(j.a);
    this.d.a(false);
    if (e())
      this.g.b(this.d, this.f);
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
    this.d.a(j.b);
    Intent localIntent = b();
    localIntent.setFlags(268435456);
    localIntent.putExtra("notificationId", a());
    AvastPendingIntent localAvastPendingIntent = new AvastPendingIntent(s.a, localIntent);
    this.f = new com.avast.android.generic.notification.a(a(), c());
    this.f.a(d(), c(), localAvastPendingIntent);
    this.f.b = 100L;
    this.f.c = 0L;
    this.f.g = localAvastPendingIntent;
    this.f.f = 2;
    if (e())
      this.g.a(this.d, this.f);
    long l1 = System.currentTimeMillis();
    this.j = l1;
    this.i = l1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.l
 * JD-Core Version:    0.6.2
 */